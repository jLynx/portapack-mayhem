/*
 * Copyright (C) 2015 Jared Boone, ShareBrained Technology, Inc.
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

#ifndef __CPLD_UPDATE_H__
#define __CPLD_UPDATE_H__

// #include "portapack_cpld_data.hpp"

#include "hackrf_gpio.hpp"
#include "portapack_hal.hpp"

#include "jtag_target_gpio.hpp"
#include "cpld_max5.hpp"
#include "cpld_xilinx.hpp"
#include "portapack_cpld_data.hpp"
#include "hackrf_cpld_data.hpp"

namespace portapack {
namespace cpld {

enum class CpldUpdateStatus {
    Success = 0,
    Idcode_check_failed = 1,
    Silicon_id_check_failed = 2,
    Program_failed = 3
};

uint32_t getId();

// template <size_t Size0, size_t Size1, typename T>
// CpldUpdateStatus update_if_necessary(const Config<Size0, Size1, T>& config);

template <size_t Size0, size_t Size1, typename T>
CpldUpdateStatus update_if_necessary(const Config<Size0, Size1, T>& config) {
    jtag::GPIOTarget target{
        portapack::gpio_cpld_tck,
        portapack::gpio_cpld_tms,
        portapack::gpio_cpld_tdi,
        portapack::gpio_cpld_tdo};
    jtag::JTAG jtag{target};
    CPLD cpld{jtag};

    /* Unknown state */
    cpld.reset();
    cpld.run_test_idle();

    /* Run-Test/Idle */
    if (!cpld.idcode_ok()) {
        return CpldUpdateStatus::Idcode_check_failed;
    }

    cpld.sample();
    cpld.bypass();
    cpld.enable();

    /* If silicon ID doesn't match, there's a serious problem. Leave CPLD
     * in passive state.
     */
    if (!cpld.silicon_id_ok()) {
        return CpldUpdateStatus::Silicon_id_check_failed;
    }

    /* Verify CPLD contents against current bitstream. */
    // auto ok = cpld.verify(config.block_0, config.block_1);
    auto ok = cpld.verify(config);
    // auto ok = true;

    /* CPLD verifies incorrectly. Erase and program with current bitstream. */
    if (!ok) {
        // ok = cpld.program(config.block_0, config.block_1);
        ok = cpld.program(config);
    }

    /* If programming OK, reset CPLD to user mode. Otherwise leave it in
     * passive (ISP) state.
     */
    if (ok) {
        cpld.disable();
        cpld.bypass();

        /* Initiate SRAM reload from flash we just programmed. */
        cpld.sample();
        cpld.clamp();
        cpld.disable();
    }

    return ok ? CpldUpdateStatus::Success : CpldUpdateStatus::Program_failed;
}

} /* namespace cpld */
} /* namespace portapack */

namespace hackrf {
namespace cpld {

bool load_sram();
void load_sram_no_verify();  // added to solve issue #637 , "ghost" signal at RX , after using any TX App
bool verify_eeprom();
void init_from_eeprom();

} /* namespace cpld */
} /* namespace hackrf */

#endif /*__CPLD_UPDATE_H__*/
