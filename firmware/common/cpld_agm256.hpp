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

#ifndef __CPLD_AGM256_H__
#define __CPLD_AGM256_H__

#include "jtag.hpp"
#include "crc.hpp"

#include <cstdint>
#include <cstddef>
#include <array>
#include <bitset>

namespace cpld {
namespace agm256 {

class CPLD {
   public:
    constexpr CPLD(
        jtag::JTAG& jtag)
        : jtag(jtag) {
    }

    void reset() {
        jtag.reset();
    }

    void run_test_idle() {
        jtag.run_test_idle();
    }

    void enter_maintenance_mode();
    void exit_maintenance_mode();

    bool verify(const std::array<uint32_t, 1802>& block_0);
    bool program(const std::array<uint32_t, 1802>& block_0);

    uint32_t update();
    uint32_t encode_address(uint32_t address, uint32_t trailer);

    void panic_screen(uint32_t value);

   private:
    using idcode_t = uint32_t;
    static constexpr size_t idcode_length = 32;
    static constexpr size_t ir_length = 10;

    using ir_t = uint16_t;

    enum class instruction_t : ir_t {
        IDCODE = 0b0000000110,  // 0x006
        AGM_RESET = 0x3f7,
        AGM_STAGE_1 = 0x3f8,
        AGM_STAGE_2 = 0x3f9,
        AGM_PROGRAM = 0x3fa,
        AGM_SET_REGISTER = 0x3fc,
        AGM_READ = 0x3fd,
        AGM_ERASE = 0x3fe,
    };

    void shift_ir(const instruction_t instruction) {
        shift_ir(static_cast<ir_t>(instruction));
    }

    void shift_ir(const uint32_t value) {
        jtag.shift_ir(ir_length, value);
    }

    void shift_dr(std::bitset<240>& value) {
        for (size_t i = 0; i < value.size(); i++) {
            value[i] = shift_dr(1, value[i]);
        }
    }

    uint32_t shift_dr(const size_t count, const uint32_t value) {
        return jtag.shift_dr(count, value);
    }

    jtag::JTAG& jtag;
};

} /* namespace agm256 */
} /* namespace cpld */

#endif /*__CPLD_AGM256_H__*/