/*
 * Copyright (C) 2026
 *
 * This file is part of PortaPack.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#include "tpms_xcvr_app.hpp"

#include "baseband_api.hpp"
#include "audio.hpp"
#include "portapack.hpp"
#include "spi_image.hpp"
#include "rtc_time.hpp"
#include "file_path.hpp"
#include "encoders.hpp"
#include "crc.hpp"
#include "utility.hpp"

using namespace portapack;
using namespace tpms;

namespace pmem = portapack::persistent_memory;

namespace ui::external_app::tpmsxcvr {

// ============================================================
// Format helper functions
// ============================================================
namespace format {

std::string type(tpms::Reading::Type type) {
    return to_string_dec_uint(toUType(type), 2);
}

std::string type_name(tpms::Reading::Type type) {
    switch (type) {
        case tpms::Reading::Type::None:
            return "None";
        case tpms::Reading::Type::FLM_64:
            return "FLM_64";
        case tpms::Reading::Type::FLM_72:
            return "FLM_72";
        case tpms::Reading::Type::FLM_80:
            return "FLM_80";
        case tpms::Reading::Type::Schrader:
            return "Schrader";
        case tpms::Reading::Type::GMC_96:
            return "GMC_96";
        default:
            return "Unknown";
    }
}

std::string id(tpms::TransponderID id) {
    return to_string_hex(id.value(), 8);
}

std::string pressure(Pressure pressure) {
    return to_string_dec_int(pressure_unit == PRESSURE_UNIT_PSI ? pressure.psi() : pressure_unit == PRESSURE_UNIT_BAR ? pressure.bar()
                                                                                                                      : pressure.kilopascal(),
                             3);
}

std::string temperature(Temperature temperature) {
    return to_string_dec_int(temp_unit == TEMP_UNIT_CELSIUS ? temperature.celsius() : temperature.fahrenheit(), 3);
}

std::string flags(tpms::Flags flags) {
    return to_string_hex(flags, 2);
}

static std::string signal_type(tpms::SignalType signal_type) {
    switch (signal_type) {
        case tpms::SignalType::FSK_19k2_Schrader:
            return "FSK 38400 19200 Schrader";
        case tpms::SignalType::OOK_8k192_Schrader:
            return "OOK - 8192 Schrader";
        case tpms::SignalType::OOK_8k4_Schrader:
            return "OOK - 8400 Schrader";
        default:
            return "- - - -";
    }
}

}  // namespace format

// ============================================================
// TPMSLogger implementation
// ============================================================
void TPMSXcvrLogger::on_packet(const tpms::Packet& packet, const uint32_t target_frequency) {
    const auto hex_formatted = packet.symbols_formatted();

    // TODO: function doesn't take uint64_t, so when >= 1<<32, weirdness will ensue!
    const auto target_frequency_str = to_string_dec_uint(target_frequency, 10);

    std::string entry = target_frequency_str + " " + format::signal_type(packet.signal_type()) + " " + hex_formatted.data + "/" + hex_formatted.errors;
    log_file.write_entry(packet.received_at(), entry);
}

// ============================================================
// TPMSXcvrRecentEntry implementation
// ============================================================
const TPMSXcvrRecentEntry::Key TPMSXcvrRecentEntry::invalid_key = {tpms::Reading::Type::None, 0};

void TPMSXcvrRecentEntry::update(const tpms::Reading& reading) {
    received_count++;

    if (reading.pressure().is_valid()) {
        last_pressure = reading.pressure();
    }
    if (reading.temperature().is_valid()) {
        last_temperature = reading.temperature();
    }
    if (reading.flags().is_valid()) {
        last_flags = reading.flags();
    }
}

// ============================================================
// Helper methods
// ============================================================

void TPMSXcvrView::update_signal_type_from_packet() {
    switch (packet_type_) {
        case tpms::Reading::Type::Schrader:
            signal_type_ = tpms::SignalType::OOK_8k192_Schrader;
            break;
        case tpms::Reading::Type::FLM_64:
        case tpms::Reading::Type::FLM_72:
        case tpms::Reading::Type::FLM_80:
            signal_type_ = tpms::SignalType::FSK_19k2_Schrader;
            break;
        case tpms::Reading::Type::GMC_96:
            signal_type_ = tpms::SignalType::OOK_8k4_Schrader;
            break;
        default:
            signal_type_ = tpms::SignalType::OOK_8k192_Schrader;
            break;
    }
}

void TPMSXcvrView::update_field_visibility() {
    if (packet_type_ == tpms::Reading::Type::Schrader) {
        label_temp_or_func.set("F:");
        field_flags.hidden(false);
        field_temperature.hidden(true);
        field_transponder_id_24.hidden(false);
        field_transponder_id_32.hidden(true);
    } else {
        label_temp_or_func.set("T:");
        field_flags.hidden(true);
        field_temperature.hidden(false);
        field_transponder_id_24.hidden(true);
        field_transponder_id_32.hidden(false);
    }
    set_dirty();
}

void TPMSXcvrView::on_pressure_unit_change() {
    units::Pressure p(pressure_kpa_);
    int v = (format::pressure_unit == PRESSURE_UNIT_PSI)   ? p.psi()
            : (format::pressure_unit == PRESSURE_UNIT_BAR) ? p.bar()
                                                           : p.kilopascal();
    field_pressure.set_value(v);
}

void TPMSXcvrView::on_temperature_unit_change() {
    units::Temperature t(temperature_c_);
    int v = (format::temp_unit == TEMP_UNIT_FAHRENHEIT) ? t.fahrenheit() : t.celsius();
    field_temperature.set_value(v);
}

void TPMSXcvrView::update_packet_display() {
    std::string s = "ID:" + to_string_hex(transponder_id_, 8);
    if (packet_type_ == tpms::Reading::Type::Schrader)
        s = "ID:" + to_string_hex(transponder_id_ & 0x00FFFFFF, 6) + "(24)";
    s += " " + to_string_dec_uint(pressure_kpa_) + "kPa";
    text_status.set(s);
}

// ============================================================
//  RX control
// ============================================================
void TPMSXcvrView::start_rx() {
    mode_ = Mode::Receiving;
    // Reload embedded TPMS baseband (TPMS not in SPI flash, only embedded)
    baseband::run_prepared_image(portapack::memory::map::m4_code.base());
    receiver_model.enable();
    receiver_model.set_target_frequency(options_band.selected_index_value());
    text_status.set("RX Active");
    button_transmit.set_text("TRANSMIT");
    progressbar.set_value(0);
    if (pmem::beep_on_packets()) {
        audio::set_rate(audio::Rate::Hz_24000);
        audio::output::start();
    }
}

void TPMSXcvrView::stop_rx() {
    audio::output::stop();
    receiver_model.disable();
    baseband::shutdown();
    chThdSleepMilliseconds(50);
}

// ============================================================
//  TX control
// ============================================================
void TPMSXcvrView::switch_baseband_tx() {
    // Switch baseband image from SPI flash based on signal type
    baseband::shutdown();
    chThdSleepMilliseconds(100);
    
    if (signal_type_ == tpms::SignalType::FSK_19k2_Schrader) {
        baseband::run_image(portapack::spi_flash::image_tag_fsktx);
    } else {
        baseband::run_image(portapack::spi_flash::image_tag_ook);
    }
    
    chThdSleepMilliseconds(100);
}

void TPMSXcvrView::start_tx() {
    if (is_transmitting_) return;

    // Halt RX first (half-duplex)
    stop_rx();

    is_transmitting_ = true;
    mode_ = Mode::Transmitting;

    progressbar.set_max(repeat_count_);
    progressbar.set_value(0);
    fsk_repeat_counter_ = 0;

    button_transmit.set_text("STOP TX");
    text_status.set("Transmitting...");

    switch_baseband_tx();

    if (signal_type_ == tpms::SignalType::FSK_19k2_Schrader) {
        transmitter_model.set_sampling_rate(2280000);
        transmitter_model.set_baseband_bandwidth(1750000);
    } else {
        transmitter_model.set_sampling_rate(2000000);
        transmitter_model.set_baseband_bandwidth(1750000);
    }

    transmitter_model.enable();
    encode_and_transmit();
}

void TPMSXcvrView::stop_tx() {
    if (!is_transmitting_) return;

    is_transmitting_ = false;
    transmitter_model.disable();

    button_transmit.set_text("TRANSMIT");
    text_status.set("TX done – resuming RX");
    progressbar.set_value(0);

    // Return to receive mode
    start_rx();
}

void TPMSXcvrView::handle_tx_complete() {
    if (signal_type_ == tpms::SignalType::FSK_19k2_Schrader) {
        fsk_repeat_counter_++;
        if (fsk_repeat_counter_ < repeat_count_) {
            progressbar.set_value(fsk_repeat_counter_);
            chThdSleepMilliseconds(50);
            encode_and_transmit();
        } else {
            stop_tx();
        }
    } else {
        stop_tx();
    }
}

// ============================================================
//  Packet encoder (mirrors tpmstx exactly)
// ============================================================
void TPMSXcvrView::encode_and_transmit() {
    if (!is_transmitting_) return;

    std::string binary_string;
    uint32_t symbol_rate;
    uint32_t sample_rate;

    if (signal_type_ == tpms::SignalType::FSK_19k2_Schrader) {
        sample_rate = 2280000;
    } else {
        sample_rate = 2000000;
    }

    if (signal_type_ == tpms::SignalType::OOK_8k192_Schrader) {
        symbol_rate = 8192;
        binary_string = "1111";
        for (int i = 0; i < 14; i++) binary_string += "01";
        binary_string += "1110";

        uint64_t data = 0;
        uint8_t flags_3bit = flags_ & 0x07;
        data |= ((uint64_t)flags_3bit << 34);
        uint32_t id_24bit = transponder_id_ & 0x00FFFFFF;
        data |= ((uint64_t)id_24bit << 10);
        uint16_t pres_clamped = (pressure_kpa_ > 340) ? 340 : pressure_kpa_;
        uint8_t pres_raw = (pres_clamped * 3 / 4);
        data |= ((uint64_t)pres_raw << 2);

        uint32_t csum = (data >> 36) & 1;
        for (size_t i = 1; i < 37; i += 2)
            csum += (data >> (37 - i - 2)) & 3;
        data |= (3 - (csum & 3)) & 3;

        for (int i = 36; i >= 0; i--)
            binary_string += ((data >> i) & 1) ? "10" : "01";

    } else if (signal_type_ == tpms::SignalType::OOK_8k4_Schrader) {
        symbol_rate = 8400;
        for (int i = 0; i < 40; i++) binary_string += "01";
        binary_string += "01";
        binary_string += "10";
        binary_string += "01";
        binary_string += "01";
        for (int i = 0; i < 20; i++) binary_string += "01";
        for (int i = 31; i >= 0; i--)
            binary_string += ((transponder_id_ >> i) & 1) ? "10" : "01";

        uint16_t pres_clamped = (pressure_kpa_ > 701) ? 701 : pressure_kpa_;
        uint8_t pres_gmc = (pres_clamped * 4 / 11);
        for (int i = 7; i >= 0; i--)
            binary_string += ((pres_gmc >> i) & 1) ? "10" : "01";

        uint8_t temp_gmc = (temperature_c_ + 61) & 0xFF;
        for (int i = 7; i >= 0; i--)
            binary_string += ((temp_gmc >> i) & 1) ? "10" : "01";

        uint8_t checksum = 0x40;
        checksum += (transponder_id_ >> 24) & 0xFF;
        checksum += (transponder_id_ >> 16) & 0xFF;
        checksum += (transponder_id_ >> 8) & 0xFF;
        checksum += transponder_id_ & 0xFF;
        checksum += pres_gmc;
        checksum += temp_gmc;
        for (int i = 7; i >= 0; i--)
            binary_string += ((checksum >> i) & 1) ? "10" : "01";

    } else if (signal_type_ == tpms::SignalType::FSK_19k2_Schrader) {
        symbol_rate = 19200;
        for (int i = 0; i < 14; i++) binary_string += "01";
        binary_string += "10";

        std::array<uint8_t, 20> db = {0};
        size_t nbits = 0;

        if (packet_type_ == tpms::Reading::Type::FLM_64) {
            nbits = 64;
            db[0] = (transponder_id_ >> 24) & 0xFF;
            db[1] = (transponder_id_ >> 16) & 0xFF;
            db[2] = (transponder_id_ >> 8) & 0xFF;
            db[3] = transponder_id_ & 0xFF;
            uint16_t pc = (pressure_kpa_ > 340) ? 340 : pressure_kpa_;
            db[4] = (pc * 3 / 4);
            db[5] = ((temperature_c_ + 56) & 0x7F);
            db[6] = 0x00;
            uint32_t csum = 0;
            for (int i = 0; i < 7; i++) csum += db[i];
            db[7] = csum & 0xFF;

        } else if (packet_type_ == tpms::Reading::Type::FLM_72) {
            nbits = 72;
            db[0] = (transponder_id_ >> 24) & 0xFF;
            db[1] = (transponder_id_ >> 16) & 0xFF;
            db[2] = (transponder_id_ >> 8) & 0xFF;
            db[3] = transponder_id_ & 0xFF;
            db[4] = 0x00;
            uint16_t pc = (pressure_kpa_ > 340) ? 340 : pressure_kpa_;
            db[5] = (pc * 3 / 4);
            db[6] = (temperature_c_ + 56) & 0xFF;
            db[7] = 0x00;
            CRC<8> crc{0x01, 0x00};
            for (int i = 0; i < 8; i++) crc.process_byte(db[i]);
            db[8] = crc.checksum() & 0xFF;

        } else if (packet_type_ == tpms::Reading::Type::FLM_80) {
            nbits = 80;
            db[0] = 0x00;
            db[1] = (transponder_id_ >> 24) & 0xFF;
            db[2] = (transponder_id_ >> 16) & 0xFF;
            db[3] = (transponder_id_ >> 8) & 0xFF;
            db[4] = transponder_id_ & 0xFF;
            db[5] = 0x00;
            uint16_t pc = (pressure_kpa_ > 340) ? 340 : pressure_kpa_;
            db[6] = (pc * 3 / 4);
            db[7] = (temperature_c_ + 56) & 0xFF;
            db[8] = 0x00;
            db[9] = 0x00;
            CRC<8> crc{0x01, 0x00};
            for (int i = 1; i <= 8; i++) crc.process_byte(db[i]);
            db[9] = crc.checksum() & 0xFF;
        }

        size_t nbytes = nbits / 8;
        for (size_t bi = 0; bi < nbytes; bi++) {
            uint8_t bv = db[bi];
            for (int bit = 7; bit >= 0; bit--)
                binary_string += ((bv >> bit) & 1) ? "10" : "01";
        }
        while (binary_string.length() < 190) binary_string += "01";

    } else {
        text_status.set("Unknown signal type");
        stop_tx();
        return;
    }

    size_t bitstream_length = encoders::make_bitstream(binary_string);
    uint32_t spb = (sample_rate + symbol_rate / 2) / symbol_rate;
    text_status.set("TX: " + to_string_dec_uint(binary_string.length()) + " bits");

    if (signal_type_ == tpms::SignalType::FSK_19k2_Schrader) {
        baseband::set_fsk_data(bitstream_length, spb, 38400, 256);
    } else {
        baseband::set_ook_data(bitstream_length, spb, repeat_count_, pause_duration_);
    }
}

// ============================================================
//  RX packet callback
// ============================================================
void TPMSXcvrView::on_packet(const tpms::Packet& packet) {
    if (logger) logger->on_packet(packet, receiver_model.target_frequency());

    const auto reading_opt = packet.reading();
    if (reading_opt.is_valid()) {
        const auto& reading = reading_opt.value();
        auto& entry = ::on_packet(recent, TPMSXcvrRecentEntry::Key{reading.type(), reading.id()});
        entry.update(reading);
        entry.signal_type = packet.signal_type();
        recent_entries_view.set_dirty();
    }

    if (pmem::beep_on_packets()) {
        baseband::request_audio_beep(1000, 24000, 60);
    }
}

void TPMSXcvrView::on_show_detail(const TPMSXcvrRecentEntry& entry) {
    // TODO: Implement detail view for tpmsxcvr
    // For now, the detail view is disabled to avoid cross-app references
    (void)entry;
    // nav_.push<TPMSXcvrRecentEntryDetailView>(entry);
}

void TPMSXcvrView::update_view() {
    recent_entries_view.set_parent_rect(list_rect);
}

// ============================================================
//  TPMSXcvrView constructor
// ============================================================
TPMSXcvrView::TPMSXcvrView(NavigationView& nav)
    : nav_{nav} {
    // Load the embedded TPMS baseband (TPMS is not in SPI flash)
    baseband::run_prepared_image(portapack::memory::map::m4_code.base());
    
    add_children({
        &rssi,
        &field_volume,
        &channel,
        &options_band,
        &options_pressure,
        &options_temperature,
        &field_rf_amp,
        &field_lna,
        &field_vga,
        &labels_tx,
        &options_packet_type,
        &options_tx_pressure_unit,
        &options_tx_temperature_unit,
        &field_transponder_id_24,
        &field_transponder_id_32,
        &field_pressure,
        &label_temp_or_func,
        &field_temperature,
        &field_flags,
        &tx_view,
        &button_transmit,
        &text_status,
        &progressbar,
        &recent_entries_view,
    });

    // ---- RX band / unit options ------------------------------------
    options_band.on_change = [this](size_t, OptionsField::value_t v) {
        receiver_model.set_target_frequency(v);
    };

    options_pressure.on_change = [this](size_t, int32_t i) {
        format::pressure_unit = (uint8_t)i;
        recent_entries_view.set_dirty();
    };
    options_pressure.set_by_value(format::pressure_unit);

    options_temperature.on_change = [this](size_t, int32_t i) {
        format::temp_unit = (uint8_t)i;
        recent_entries_view.set_dirty();
    };
    options_temperature.set_by_value(format::temp_unit);

    // ---- TX options ------------------------------------------------
    options_packet_type.set_selected_index(0);

    options_tx_pressure_unit.on_change = [this](size_t, int32_t i) {
        format::pressure_unit = (uint8_t)i;
        on_pressure_unit_change();
        options_pressure.set_by_value(format::pressure_unit);
    };
    options_tx_pressure_unit.set_by_value(format::pressure_unit);

    options_tx_temperature_unit.on_change = [this](size_t, int32_t i) {
        format::temp_unit = (uint8_t)i;
        on_temperature_unit_change();
        options_temperature.set_by_value(format::temp_unit);
    };
    options_tx_temperature_unit.set_by_value(format::temp_unit);

    options_packet_type.on_change = [this](size_t, int32_t value) {
        packet_type_ = static_cast<tpms::Reading::Type>(value);
        update_signal_type_from_packet();
        if (packet_type_ == tpms::Reading::Type::Schrader) {
            transponder_id_ = field_transponder_id_32.to_integer() & 0x00FFFFFF;
            field_transponder_id_24.set_value(transponder_id_);
        } else {
            transponder_id_ = field_transponder_id_24.to_integer();
            field_transponder_id_32.set_value(transponder_id_);
        }
        update_field_visibility();
        update_packet_display();
    };

    field_transponder_id_24.on_change = [this](SymField&) {
        transponder_id_ = field_transponder_id_24.to_integer() & 0x00FFFFFF;
        update_packet_display();
    };
    field_transponder_id_32.on_change = [this](SymField&) {
        transponder_id_ = field_transponder_id_32.to_integer();
        update_packet_display();
    };

    field_pressure.on_change = [this](int32_t value) {
        if (format::pressure_unit == PRESSURE_UNIT_PSI)
            pressure_kpa_ = value * 6895 / 1000;
        else if (format::pressure_unit == PRESSURE_UNIT_BAR)
            pressure_kpa_ = value * 100;
        else
            pressure_kpa_ = value;
        update_packet_display();
    };

    field_temperature.on_change = [this](int32_t value) {
        temperature_c_ = (format::temp_unit == TEMP_UNIT_FAHRENHEIT) ? (value - 32) * 5 / 9 : value;
        update_packet_display();
    };

    field_flags.on_change = [this](int32_t value) {
        flags_ = value & 0x07;
        update_packet_display();
    };

    // ---- TX button --------------------------------------------------
    button_transmit.on_select = [this](Button&) {
        if (is_transmitting_) {
            stop_tx();
        } else {
            update_signal_type_from_packet();
            start_tx();
        }
    };

    // ---- Entry list tap -> detail view ------------------------------
    recent_entries_view.on_select = [this](const TPMSXcvrRecentEntry& entry) {
        on_show_detail(entry);
    };

    // ---- Logger -----------------------------------------------------
    logger = std::make_unique<TPMSXcvrLogger>();
    if (logger) logger->append(logs_dir / u"TPMS.TXT");

    // ---- Init field values -----------------------------------------
    update_signal_type_from_packet();
    field_transponder_id_24.set_value(transponder_id_ & 0x00FFFFFF);
    field_transponder_id_32.set_value(transponder_id_);
    on_pressure_unit_change();
    on_temperature_unit_change();
    field_flags.set_value(flags_);
    update_field_visibility();
    update_packet_display();

    // Initialize options_band before starting RX
    options_band.set_by_value(receiver_model.target_frequency());
    
    // Start in RX mode - baseband already loaded above, just enable receiver
    mode_ = Mode::Receiving;
    receiver_model.enable();
    receiver_model.set_target_frequency(options_band.selected_index_value());
    text_status.set("RX Active");
    button_transmit.set_text("TRANSMIT");
    progressbar.set_value(0);
    if (pmem::beep_on_packets()) {
        audio::set_rate(audio::Rate::Hz_24000);
        audio::output::start();
    }
}

TPMSXcvrView::~TPMSXcvrView() {
    if (is_transmitting_) {
        transmitter_model.disable();
    }
    audio::output::stop();
    receiver_model.disable();
    baseband::shutdown();
}

void TPMSXcvrView::focus() {
    options_band.focus();
}

void TPMSXcvrView::set_parent_rect(const Rect new_parent_rect) {
    View::set_parent_rect(new_parent_rect);
    list_rect = {0, header_height, new_parent_rect.width(), new_parent_rect.height() - header_height};
    update_view();
}

}  // namespace ui::external_app::tpmsxcvr

namespace ui {

// RecentEntriesTable specialization for TPMSXcvrRecentEntries
template <>
void RecentEntriesTable<ui::external_app::tpmsxcvr::TPMSXcvrRecentEntries>::draw(
    const Entry& entry,
    const Rect& target_rect,
    Painter& painter,
    const Style& style,
    RecentEntriesColumns& columns) {
    std::string line = ui::external_app::tpmsxcvr::format::type(entry.type) + " ";
    std::string lid = ui::external_app::tpmsxcvr::format::id(entry.id);
    lid.resize(columns.at(1).second, ' ');
    line += lid;

    if (entry.last_pressure.is_valid()) {
        line += "  " + ui::external_app::tpmsxcvr::format::pressure(entry.last_pressure.value());
    } else {
        line +=
            "  "
            "   ";
    }

    if (entry.last_temperature.is_valid()) {
        line += "  " + ui::external_app::tpmsxcvr::format::temperature(entry.last_temperature.value());
    } else {
        line +=
            "  "
            "   ";
    }

    if (entry.received_count > 999) {
        line += " +++";
    } else {
        line += " " + to_string_dec_uint(entry.received_count, 3);
    }

    if (entry.last_flags.is_valid()) {
        line += " " + ui::external_app::tpmsxcvr::format::flags(entry.last_flags.value());
    } else {
        line +=
            " "
            "  ";
    }

    line.resize(target_rect.width() / 8, ' ');
    painter.draw_string(target_rect.location(), style, line);
}

}  // namespace ui
