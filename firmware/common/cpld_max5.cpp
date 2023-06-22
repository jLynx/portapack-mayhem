/*
 * Copyright (C) 2014 Jared Boone, ShareBrained Technology, Inc.
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

#include "cpld_max5.hpp"

namespace cpld {
namespace max5 {

void CPLD::bypass() {
    shift_ir(instruction_t::BYPASS);
    jtag.runtest_tck(18003);
}

void CPLD::sample() {
    shift_ir(instruction_t::SAMPLE);
    jtag.runtest_tck(93);
    for (size_t i = 0; i < 80; i++) {
        jtag.shift_dr(3, 0b111);
    }
}

void CPLD::sample(std::bitset<240>& value) {
    shift_ir(instruction_t::SAMPLE);
    jtag.runtest_tck(93);
    shift_dr(value);
}

void CPLD::extest(std::bitset<240>& value) {
    shift_ir(instruction_t::EXTEST);
    shift_dr(value);
}

void CPLD::clamp() {
    shift_ir(instruction_t::CLAMP);
    jtag.runtest_tck(93);
}

void CPLD::enable() {
    shift_ir(instruction_t::ISC_ENABLE);
    jtag.runtest_tck(18003);  // 1ms
}

void CPLD::disable() {
    shift_ir(instruction_t::ISC_DISABLE);
    jtag.runtest_tck(18003);  // 1ms
}

/* Sector erase:
 * Involves shifting in the instruction to erase the device and applying
 * an erase pulse or pulses. The erase pulse is automatically generated
 * internally by waiting in the run, test, or idle state for the
 * specified erase pulse time of 500 ms for the CFM block and 500 ms for
 * each sector of the user flash memory (UFM) block.
 */
void CPLD::bulk_erase() {
    erase_sector(0x0011);
    erase_sector(0x0001);
    erase_sector(0x0000);
}

uint32_t CPLD::crc() {
    crc_t crc{0x04c11db7, 0xffffffff, 0xffffffff};
    block_crc(0, 3328, crc);
    block_crc(1, 512, crc);
    return crc.checksum();
}

void CPLD::sector_select(const uint16_t id) {
    shift_ir(instruction_t::ISC_ADDRESS_SHIFT);
    jtag.runtest_tck(93);   // 5us
    jtag.shift_dr(13, id);  // Sector ID
}

bool CPLD::idcode_ok() {
    shift_ir(instruction_t::IDCODE);
    const auto idcode_read = jtag.shift_dr(idcode_length, 0);
    return (idcode_read == idcode);
}

//==========================
// static bool jtag_pp_tck(const bool tms_value)
// {
// 	gpio_write(jtag_cpld.gpio->gpio_pp_tms, tms_value);

// 	// 8 ns TMS/TDI to TCK setup
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");

// 	gpio_set(jtag_cpld.gpio->gpio_tck);

// 	// 15 ns TCK to TMS/TDI hold time
// 	// 20 ns TCK high time
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");

// 	gpio_clear(jtag_cpld.gpio->gpio_tck);

// 	// 20 ns TCK low time
// 	// 25 ns TCK falling edge to TDO valid
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");
// 	__asm__("nop");

// 	return gpio_read(jtag_cpld.gpio->gpio_pp_tdo);
// }
//==========================

uint32_t CPLD::returnId() {
    //=== WORKING ===
    // shift_ir(instruction_t::IDCODE);
    // // jtag.shift_ir(8, 0b11111010);

    // // jtag.runtest_tck(93);  // 5us
    // // jtag.runtest_tck(1800);  // 100us
    // // jtag.runtest_tck(18003);  // 1ms
    // // jtag.runtest_tck(9000003); // 500ms

    // const uint32_t idcode_read = jtag.shift_dr(idcode_length, 0);
    // return idcode_read;

    //===============
    const auto silicon_id = read_silicon_id_test();

    return silicon_id;
}

std::array<uint16_t, 5> CPLD::read_silicon_id() {
    sector_select(0x0089);
    shift_ir(instruction_t::ISC_READ);
    jtag.runtest_tck(93);  // 5us

    std::array<uint16_t, 5> silicon_id;
    silicon_id[0] = jtag.shift_dr(16, 0xffff);
    silicon_id[1] = jtag.shift_dr(16, 0xffff);
    silicon_id[2] = jtag.shift_dr(16, 0xffff);
    silicon_id[3] = jtag.shift_dr(16, 0xffff);
    silicon_id[4] = jtag.shift_dr(16, 0xffff);
    return silicon_id;
}

/* Check ID:
 * The silicon ID is checked before any Program or Verify process. The
 * time required to read this silicon ID is relatively small compared to
 * the overall programming time.
 */
bool CPLD::silicon_id_ok() {
    const auto silicon_id = read_silicon_id();

    return (
        (silicon_id[0] == 0x8232) &&  // 0x5610 // 0x8232
        (silicon_id[1] == 0x2aa2) &&  // 0x5610 // 0x2aa2
        (silicon_id[2] == 0x4a82) &&  // 0x5610 // 0x4a82
        (silicon_id[3] == 0x8c0c) &&  // 0x5610 // 0x8c0c
        (silicon_id[4] == 0x0000));   // 0x5610 // 0x0C2C
}

// bool CPLD::silicon_id_ok() {

// jtag.shift_ir(10, 0x203);
// jtag.runtest_tck(93);   // 5us
// jtag.shift_dr(13, 0x0089);  // Sector ID
// jtag.shift_ir(10, 0x205);
// jtag.runtest_tck(93);   // 5us

// std::array<uint16_t, 5> silicon_id;
// silicon_id[0] = jtag.shift_dr(16, 0xffff);
// silicon_id[1] = jtag.shift_dr(16, 0xffff);
// silicon_id[2] = jtag.shift_dr(16, 0xffff);
// silicon_id[3] = jtag.shift_dr(16, 0xffff);
// silicon_id[4] = jtag.shift_dr(16, 0xffff);

// return (
//     (silicon_id[0] == 0x8232) &&  // 0x5610 // 0x8232
//     (silicon_id[1] == 0x2aa2) &&  // 0x5610 // 0x2aa2
//     (silicon_id[2] == 0x4a82) &&  // 0x5610 // 0x4a82
//     (silicon_id[3] == 0x8c0c) &&  // 0x5610 // 0x8c0c
//     (silicon_id[4] == 0x0000));   // 0x5610 // 0x0C2C
// }

uint32_t CPLD::read_silicon_id_test() {
    jtag.runtest_tck(1);
    jtag.shift_ir(10, 0x3f8);
    jtag.runtest_tck(100);
    jtag.shift_ir(10, 0x3f9);
    jtag.runtest_tck(100);
    jtag.shift_ir(10, 0x3f8);
    jtag.runtest_tck(100);
    jtag.shift_ir(10, 0x6);
    jtag.runtest_tck(100);

    uint32_t silicon_id = jtag.shift_dr(32, 0x00000000);
    // uint32_t silicon_id = jtag.shift_dr(32, 0xffffffff);

    // return silicon_id == 0x00057620;   // 0x5610 // 0x0C2C
    return silicon_id;
}

uint32_t CPLD::usercode() {
    shift_ir(instruction_t::USERCODE);
    jtag.runtest_tck(93);  // 5us
    return jtag.shift_dr(32, 0xffffffff);
}

void CPLD::erase_sector(const uint16_t id) {
    sector_select(id);
    shift_ir(instruction_t::ISC_ERASE);
    jtag.runtest_tck(9000003);  // 500ms
}

void CPLD::program_block(
    const uint16_t id,
    const uint16_t* const data,
    const size_t count) {
    sector_select(id);
    shift_ir(instruction_t::ISC_PROGRAM);
    jtag.runtest_tck(93);  // 5us

    for (size_t i = 0; i < count; i++) {
        jtag.shift_dr(16, data[i]);
        jtag.runtest_tck(1800);
    }
}

bool CPLD::verify_block(
    const uint16_t id,
    const uint16_t* const data,
    const size_t count) {
    sector_select(id);
    shift_ir(instruction_t::ISC_READ);
    jtag.runtest_tck(93);  // 5us

    bool success = true;
    for (size_t i = 0; i < count; i++) {
        const auto from_device = jtag.shift_dr(16, 0xffff);
        if (from_device != data[i]) {
            if ((id == 0) && (i == 0)) {
                // Account for bit that indicates bitstream is valid.
                if ((from_device & 0xfbff) != (data[i] & 0xfbff)) {
                    success = false;
                }
            } else {
                success = false;
            }
        }
    }
    return success;
}

bool CPLD::is_blank_block(const uint16_t id, const size_t count) {
    sector_select(id);
    shift_ir(instruction_t::ISC_READ);
    jtag.runtest_tck(93);  // 5us

    bool success = true;
    for (size_t i = 0; i < count; i++) {
        const auto from_device = jtag.shift_dr(16, 0xffff);
        if (from_device != 0xffff) {
            success = false;
        }
    }
    return success;
}

void CPLD::block_crc(const uint16_t id, const size_t count, crc_t& crc) {
    sector_select(id);
    shift_ir(instruction_t::ISC_READ);
    jtag.runtest_tck(93);  // 5us

    for (size_t i = 0; i < count; i++) {
        const uint16_t from_device = jtag.shift_dr(16, 0xffff);
        crc.process_bytes(&from_device, sizeof(from_device));
    }
}

bool CPLD::is_blank() {
    const auto block_0_blank = is_blank_block(0x0000, 3328);
    const auto block_1_blank = is_blank_block(0x0001, 512);
    return block_0_blank && block_1_blank;
}

} /* namespace max5 */
} /* namespace cpld */
