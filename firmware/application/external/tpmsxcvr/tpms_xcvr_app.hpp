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

#ifndef __TPMS_XCVR_APP_H__
#define __TPMS_XCVR_APP_H__

#include "ui_widget.hpp"
#include "ui_navigation.hpp"
#include "ui_receiver.hpp"
#include "ui_transmitter.hpp"
#include "ui_rssi.hpp"
#include "ui_channel.hpp"
#include "app_settings.hpp"
#include "radio_state.hpp"
#include "event_m0.hpp"
#include "log_file.hpp"
#include "recent_entries.hpp"
#include "tpms_packet.hpp"
#include "transmitter_model.hpp"
#include "portapack.hpp"
#include "message.hpp"
#include "file_path.hpp"
#include "string_format.hpp"
#include "units.hpp"

// Share the RX entry/logger/view types from tpmsrx to avoid code duplication.
#include "../tpmsrx/tpms_app.hpp"

namespace ui::external_app::tpmsxcvr {

// Reuse all RX-side types from tpmsrx to avoid duplicating the
// RecentEntriesTable<> specialisation and related code.
using TPMSXcvrRecentEntry = ui::external_app::tpmsrx::TPMSRecentEntry;
using TPMSXcvrRecentEntries = ui::external_app::tpmsrx::TPMSRecentEntries;
using TPMSXcvrRecentEntriesView = ui::external_app::tpmsrx::TPMSRecentEntriesView;
using TPMSXcvrLogger = ui::external_app::tpmsrx::TPMSLogger;

// Settings pressure/temp units are shared with the tpmsrx namespace.
namespace format {
using ui::external_app::tpmsrx::format::pressure_unit;
using ui::external_app::tpmsrx::format::temp_unit;
}  // namespace format

// ---------------------------------------------------------------
// Main transceiver view
// ---------------------------------------------------------------
class TPMSXcvrView : public View {
   public:
    TPMSXcvrView(NavigationView& nav);
    ~TPMSXcvrView();

    void set_parent_rect(const Rect new_parent_rect) override;
    void paint(Painter&) override {};
    void focus() override;

    std::string title() const override { return "TPMS XCVR"; };

   private:
    NavigationView& nav_;

    // ---- Radio state --------------------------------------------------
    // We keep the RX radio-state object alive while receiving, and switch
    // to a bare transmitter_model when the user presses TX.
    RxRadioState rx_radio_state_{
        314900000,
        1750000,
        2457600};

    app_settings::SettingsManager settings_{
        "xcvr_tpms",
        app_settings::Mode::RX,
        {
            {"pressure_unit"sv, &format::pressure_unit},
            {"temp_unit"sv, &format::temp_unit},
        }};

    // ---- Operating mode ----------------------------------------------
    enum class Mode { Receiving,
                      Transmitting };
    Mode mode_{Mode::Receiving};

    // ---- TX state ----------------------------------------------------
    tpms::Reading::Type packet_type_{tpms::Reading::Type::Schrader};
    uint32_t transponder_id_{0x12345678};
    uint16_t pressure_kpa_{240};
    int16_t temperature_c_{25};
    uint8_t flags_{0x00};
    tpms::SignalType signal_type_{tpms::SignalType::OOK_8k192_Schrader};
    uint8_t repeat_count_{5};
    uint32_t pause_duration_{50};
    bool is_transmitting_{false};
    uint8_t fsk_repeat_counter_{0};

    // ---- Helpers -----------------------------------------------------
    void start_rx();
    void stop_rx();
    void start_tx();
    void stop_tx();
    void encode_and_transmit();
    void handle_tx_complete();
    void switch_baseband_tx();
    void update_signal_type_from_packet();
    void update_field_visibility();
    void on_pressure_unit_change();
    void on_temperature_unit_change();
    void update_packet_display();
    void on_packet(const tpms::Packet& packet);
    void on_show_detail(const TPMSXcvrRecentEntry& entry);
    void update_view();

    // ---- Message handlers -------------------------------------------
    MessageHandlerRegistration message_handler_packet{
        Message::ID::TPMSPacket,
        [this](Message* const p) {
            if (mode_ == Mode::Receiving) {
                const auto message = static_cast<const TPMSPacketMessage*>(p);
                const tpms::Packet packet{message->packet, message->signal_type};
                this->on_packet(packet);
            }
        }};

    MessageHandlerRegistration message_handler_tx_progress{
        Message::ID::TXProgress,
        [this](const Message* const p) {
            const auto message = *reinterpret_cast<const TXProgressMessage*>(p);
            progressbar.set_value(message.progress);
            if (message.done) {
                handle_tx_complete();
            }
        }};

    // ---- Layout constants --------------------------------------------
    static constexpr ui::Dim header_height = 3 * 16;  // 3 rows for RX controls + TX fields
    ui::Rect list_rect{};

    // ---- RX header widgets ------------------------------------------
    RSSI rssi{
        {UI_POS_X(21), 0, UI_POS_WIDTH_REMAINING(24), 4},
    };
    Channel channel{
        {UI_POS_X(21), 5, UI_POS_WIDTH_REMAINING(24), 4},
    };
    AudioVolumeField field_volume{
        {UI_POS_X_RIGHT(2), UI_POS_Y(0)}};

    OptionsField options_band{
        {UI_POS_X(0), UI_POS_Y(0)},
        5,
        {{"314.9", 314900000},
         {"315.0", 315000000},
         {"433.9", 433920000}}};

    OptionsField options_pressure{
        {6 * 8, UI_POS_Y(0)},
        4,
        {{"kPa", PRESSURE_UNIT_KPA},
         {"PSI", PRESSURE_UNIT_PSI},
         {"BAR", PRESSURE_UNIT_BAR}}};

    OptionsField options_temperature{
        {10 * 8, UI_POS_Y(0)},
        2,
        {{STR_DEGREES_C, TEMP_UNIT_CELSIUS},
         {STR_DEGREES_F, TEMP_UNIT_FAHRENHEIT}}};

    RFAmpField field_rf_amp{
        {13 * 8, UI_POS_Y(0)}};

    LNAGainField field_lna{
        {15 * 8, UI_POS_Y(0)}};

    VGAGainField field_vga{
        {18 * 8, UI_POS_Y(0)}};

    // ---- TX row 1: type + ID ----------------------------------------
    Labels labels_tx{
        {{0 * 8, 1 * 16}, "Tp:", Theme::getInstance()->fg_light->foreground},
        {{0 * 8, 2 * 16}, "ID:", Theme::getInstance()->fg_light->foreground},
    };

    OptionsField options_packet_type{
        {3 * 8, 1 * 16},
        7,
        {{"Schrad", (int32_t)tpms::Reading::Type::Schrader},
         {"FLM_64", (int32_t)tpms::Reading::Type::FLM_64},
         {"FLM_72", (int32_t)tpms::Reading::Type::FLM_72},
         {"FLM_80", (int32_t)tpms::Reading::Type::FLM_80},
         {"GMC_96", (int32_t)tpms::Reading::Type::GMC_96}}};

    // Pressure/Temp units on row 1 (right side)
    OptionsField options_tx_pressure_unit{
        {11 * 8, 1 * 16},
        4,
        {{"kPa", PRESSURE_UNIT_KPA},
         {"PSI", PRESSURE_UNIT_PSI},
         {"BAR", PRESSURE_UNIT_BAR}}};

    OptionsField options_tx_temperature_unit{
        {16 * 8, 1 * 16},
        2,
        {{STR_DEGREES_C, TEMP_UNIT_CELSIUS},
         {STR_DEGREES_F, TEMP_UNIT_FAHRENHEIT}}};

    // ID fields (24/32 bit, one visible at a time)
    SymField field_transponder_id_24{
        {3 * 8, 2 * 16},
        6,
        SymField::Type::Hex};

    SymField field_transponder_id_32{
        {3 * 8, 2 * 16},
        8,
        SymField::Type::Hex};

    // Pressure / Temp / Flags  (row 2, after the ID)
    NumberField field_pressure{
        {12 * 8, 2 * 16},
        4,
        {0, 9999},
        1,
        ' '};

    // Label helper texts that swap visibility
    Text label_temp_or_func{
        {18 * 8, 2 * 16, 5 * 8, 16},
        "T:"};

    NumberField field_temperature{
        {21 * 8, 2 * 16},
        4,
        {-99, 999},
        1,
        ' '};

    NumberField field_flags{
        {21 * 8, 2 * 16},
        1,
        {0, 7},
        1,
        ' '};

    // ---- TX transmit button + status/progress -----------------------
    TransmitterView2 tx_view{
        {16 * 8, 0 * 16},
        true};

    Button button_transmit{
        {0 * 8, 13 * 16, 13 * 8, 28},
        "TRANSMIT"};

    Text text_status{
        {14 * 8, 13 * 16 + 6, 16 * 8, 16},
        "RX Active"};

    ProgressBar progressbar{
        {0 * 8, 14 * 16 + 4, 30 * 8, 14}};

    // ---- RX recent entries list -------------------------------------
    TPMSXcvrRecentEntries recent{};
    std::unique_ptr<TPMSXcvrLogger> logger{};

    RecentEntriesColumns columns{{
        {"Tp", 2},
        {"ID", 0},
        {"Pres", 4},
        {"Temp", 4},
        {"Cnt", 3},
        {"Fl", 2},
    }};
    TPMSXcvrRecentEntriesView recent_entries_view{columns, recent};
};

}  // namespace ui::external_app::tpmsxcvr

#endif /*__TPMS_XCVR_APP_H__*/
