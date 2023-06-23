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

#ifndef __CPLD_MAX5_H__
#define __CPLD_MAX5_H__

#include "jtag.hpp"
#include "crc.hpp"

#include <cstdint>
#include <cstddef>
#include <array>
#include <bitset>

namespace cpld {
namespace max5 {

// struct Config {
//     const std::array<uint16_t, 3328>& block_0;
//     const std::array<uint16_t, 512>& block_1;
// };

template <size_t Size0, size_t Size1, typename T>
struct Config {
    const std::array<T, Size0> block_0;
    const std::array<T, Size1> block_1;
};

class CPLD {
   public:
    constexpr CPLD(
        jtag::JTAG& jtag)
        : jtag(jtag) {
    }

    void bypass();
    void sample();
    void sample(std::bitset<240>& value);
    void extest(std::bitset<240>& value);
    void clamp();

    void reset() {
        jtag.reset();
    }

    void run_test_idle() {
        jtag.run_test_idle();
    }

    bool idcode_ok();
    uint32_t returnId();

    void enable();

    /* Check ID:
     * The silicon ID is checked before any Program or Verify process. The
     * time required to read this silicon ID is relatively small compared to
     * the overall programming time.
     */
    bool silicon_id_ok();

    uint32_t usercode();

    void disable();

    void bulk_erase();

    // template <size_t Size0, size_t Size1, typename T>
    // bool program(const Config<Size0, Size1, T>& config);

    // template <size_t Size0, size_t Size1, typename T>
    // bool verify(const Config<Size0, Size1, T>& config);

    template <size_t Size0, size_t Size1, typename T>
    bool program(const Config<Size0, Size1, T>& config) {
        bulk_erase();

        /* Program:
         * involves shifting in the address, data, and program instruction and
         * generating the program pulse to program the flash cells. The program
         * pulse is automatically generated internally by waiting in the run/test/
         * idle state for the specified program pulse time of 75 μs. This process
         * is repeated for each address in the CFM and UFM blocks.
         */
        program_block(0x0000, config.block_0);
        program_block(0x0001, config.block_1);

        const auto verify_ok = verify(config);

        if (verify_ok) {
            /* Do "something". Not sure what, but it happens after verify. */
            /* Starts with a sequence the same as Program: Block 0. */
            /* Perhaps it is a write to tell the CPLD that the bitstream
             * verified OK, and it's OK to load and execute? And despite only
             * one bit changing, a write must be a multiple of a particular
             * length (64 bits)? */
            sector_select(0x0000);
            shift_ir(instruction_t::ISC_PROGRAM);
            jtag.runtest_tck(93);  // 5 us

            /* TODO: Use data from cpld_block_0, with appropriate bit(s) changed */
            /* Perhaps this is the "ISP_DONE" bit? */
            jtag.shift_dr(16, config.block_0[0] & 0xfbff);
            jtag.runtest_tck(1800);  // 100us
            jtag.shift_dr(16, config.block_0[1]);
            jtag.runtest_tck(1800);  // 100us
            jtag.shift_dr(16, config.block_0[2]);
            jtag.runtest_tck(1800);  // 100us
            jtag.shift_dr(16, config.block_0[3]);
            jtag.runtest_tck(1800);  // 100us
        }

        return verify_ok;
        // return true;
    }

    template <size_t Size0, size_t Size1>
    bool program(const Config<Size0, Size1, uint64_t>& config) {
        program_block(0x0000, config.block_0);
        return true;
    }

    template <size_t Size0, size_t Size1, typename T>
    bool verify(const Config<Size0, Size1, T>& config) {
        /* Verify */
        const auto block_0_success = verify_block(0x0000, config.block_0);
        const auto block_1_success = verify_block(0x0001, config.block_1);
        return block_0_success && block_1_success;
        // return true;
    }

    template <size_t Size0, size_t Size1>
    bool verify(const Config<Size0, Size1, uint64_t>& config) {
        /* Verify */
        // SIR 10 TDI (3fd); this should be to put it in read mode
        // then verify with:
        // SDR 64 TDI (00000000000100c0) TDO (90e0000000000000) MASK (ffffffff00000000);
        return true;
    }

    bool is_blank();

    uint32_t crc();

    std::pair<bool, uint8_t> boundary_scan();

   private:
    using idcode_t = uint32_t;
    static constexpr size_t idcode_length = 32;
    // static constexpr idcode_t idcode = 0b00000010000010100101000011011101;
    static constexpr idcode_t idcode = 0b100101011000010000;
    static constexpr idcode_t idcode_mask = 0b11111111111111111111111111111111;

    static constexpr size_t ir_length = 10;

    using ir_t = uint16_t;

    enum class instruction_t : ir_t {
        BYPASS = 0b1111111111,             // 0x3ff
        EXTEST = 0b0000001111,             // 0x00f
        SAMPLE = 0b0000000101,             // 0x005
        IDCODE = 0b0000000110,             // 0x006
        USERCODE = 0b0000000111,           // 0x007
        CLAMP = 0b0000001010,              // 0x00a
        HIGHZ = 0b0000001011,              // 0x00b
        ISC_ENABLE = 0b1011001100,         // 0x2cc
        ISC_DISABLE = 0b1000000001,        // 0x201
        ISC_PROGRAM = 0b1011110100,        // 0x2f4
        ISC_ERASE = 0b1011110010,          // 0x2f2
        ISC_ADDRESS_SHIFT = 0b1000000011,  // 0x203 SIR 10 TDI (203);
        ISC_READ = 0b1000000101,           // 0x205 SIR 10 TDI (205);
        ISC_NOOP = 0b1000010000,           // 0x210
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

    std::array<uint16_t, 5> read_silicon_id();
    uint32_t read_silicon_id_test();

    void sector_select(const uint16_t id);

    void erase_sector(const uint16_t id);

    void program_block(
        const uint16_t id,
        const uint16_t* const data,
        const size_t count);

    template <size_t N>
    void program_block(
        const uint16_t id,
        const std::array<uint16_t, N>& data) {
        program_block(id, data.data(), data.size());
    }

    template <size_t N>
    void program_block(const uint16_t id, const std::array<uint64_t, N>& data) {
        sector_select(id);
        shift_ir(0x3fa);          // SIR 10 TDI (3fa);
        jtag.runtest_tck(36000);  // 0.002 sec

        for (size_t i = 0; i < data.size(); i++) {
            jtag.shift_dr_64(64, data.data()[i]);
            jtag.runtest_tck(36000);  // 0.002 sec
        }
    }

    bool verify_block(
        const uint16_t id,
        const uint16_t* const data,
        const size_t count);

    template <size_t N>
    bool verify_block(
        const uint16_t id,
        const std::array<uint16_t, N>& data) {
        return verify_block(id, data.data(), data.size());
    }

    bool is_blank_block(const uint16_t id, const size_t count);

    using crc_t = CRC<32, true, true>;
    void block_crc(const uint16_t id, const size_t count, crc_t& crc);
};
/*
class ModeISP {
public:
        ModeISP(
                CPLD& cpld
        ) : cpld(cpld)
        {
                cpld.enter_isp();
        }

        ~ModeISP() {
                cpld.exit_isp();
        }

private:
        CPLD& cpld;
};
*/
} /* namespace max5 */
} /* namespace cpld */

#endif /*__CPLD_MAX5_H__*/
