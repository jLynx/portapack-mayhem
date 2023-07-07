/*
 * Copyright (C) 2023 Bernd Herzog
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

#include "cpld_agm256.hpp"

namespace cpld {
namespace agm256 {

uint32_t CPLD::encode_address(uint32_t address, uint32_t trailer) {
    uint32_t p = trailer;
    for (size_t i = 0; i < 18; i++) {
        auto address_bit = (address >> i) & 0x01;
        p |= address_bit << (31 - i);
    }

    return p;
}

bool CPLD::enter_maintenance_mode() {
    shift_ir(instruction_t::AGM_STAGE_1);
    jtag.runtest_tck(100);
    shift_ir(instruction_t::AGM_STAGE_2);
    jtag.runtest_tck(100);
    shift_ir(instruction_t::AGM_STAGE_1);
    jtag.runtest_tck(100);

    shift_ir(instruction_t::AGM_SET_REGISTER);
    jtag.runtest_tck(100);
    jtag.shift_dr(8, 0x0);
    jtag.runtest_tck(100);

    // TODO: extract value from .prg
    shift_ir(instruction_t::AGM_PROGRAM);
    jtag.runtest_tck(100);
    jtag.shift_dr(32, 0x203f0044uL, 0x80000000);

    shift_ir(instruction_t::IDCODE);
    jtag.runtest_tck(100);
    auto idcode = jtag.shift_dr(idcode_length, 0);

    return idcode == 0x00025610;
}

void CPLD::exit_maintenance_mode() {
    shift_ir(instruction_t::AGM_RESET);
    jtag.runtest_tck(100);
}

bool CPLD::verify(const std::array<uint32_t, 1802>& block) {
    shift_ir(instruction_t::AGM_SET_REGISTER);
    jtag.runtest_tck(100);
    jtag.shift_dr(8, 0xf0);
    jtag.runtest_tck(100);

    shift_ir(instruction_t::AGM_READ);
    jtag.runtest_tck(100);

    auto data = block.data();

    for (size_t i = 0; i < block.size(); i++) {
        auto address = encode_address(i * 4, 0xC0);
        const auto from_device = jtag.shift_dr(32, address, 0x0);
        if (from_device != data[i]) {
            return false;
        }
    }

    return true;
}

bool CPLD::program(const std::array<uint32_t, 1802>& block) {
    shift_ir(instruction_t::AGM_SET_REGISTER);
    jtag.runtest_tck(100);
    jtag.shift_dr(8, 0xf0);
    jtag.runtest_tck(100);

    shift_ir(instruction_t::AGM_ERASE);
    jtag.runtest_tck(100);
    jtag.runtest_ms(500);

    shift_ir(instruction_t::AGM_SET_REGISTER);
    jtag.runtest_tck(100);
    jtag.shift_dr(8, 0xf0);
    jtag.runtest_tck(100);

    shift_ir(instruction_t::AGM_PROGRAM);
    jtag.runtest_tck(100);

    // TODO: change python extraction script to target .prg
    auto data = block.data();
    for (size_t i = 0; i < 0x12B; i++) {
        auto address = encode_address(i * 4, 0x40);
        jtag.shift_dr(32, address, data[i]);
        jtag.runtest_ms(2);
    }

    // TODO: extract value from .prg
    jtag.shift_dr(32, 0x00000040, 0x219fbb3e);
    jtag.runtest_ms(2);

    for (size_t i = 0x12B; i < block.size(); i++) {
        auto address = encode_address(i * 4, 0x40);
        jtag.shift_dr(32, address, data[i]);
        jtag.runtest_ms(2);
    }

    return verify(block);
}

} /* namespace agm256 */
} /* namespace cpld */
