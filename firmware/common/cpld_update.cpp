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

#include "cpld_update.hpp"

namespace portapack {
namespace cpld {

uint32_t getId() {
    jtag::GPIOTarget target{
        portapack::gpio_cpld_tck,
        portapack::gpio_cpld_tms,
        portapack::gpio_cpld_tdi,
        portapack::gpio_cpld_tdo};
    jtag::JTAG jtag{target};
    CPLD cpld{jtag};

    return cpld.returnId();
}

} /* namespace cpld */
} /* namespace portapack */

namespace hackrf {
namespace cpld {

static jtag::GPIOTarget jtag_target_hackrf() {
    return {
        hackrf::one::gpio_cpld_tck,
        hackrf::one::gpio_cpld_tms,
        hackrf::one::gpio_cpld_tdi,
        hackrf::one::gpio_cpld_tdo,
    };
}

bool load_sram() {
    auto jtag_target_hackrf_cpld = jtag_target_hackrf();
    hackrf::one::cpld::CPLD hackrf_cpld{jtag_target_hackrf_cpld};

    hackrf_cpld.write_sram(hackrf::one::cpld::verify_blocks);
    const auto ok = hackrf_cpld.verify_sram(hackrf::one::cpld::verify_blocks);

    return ok;
}

void load_sram_no_verify() {
    // CoolRunner II family has Hybrid memory CPLD arquitecture (SRAM+NVM)
    // It seems that after using TX App somehow , I do not why , the CPLD_SRAM part needs to be re_loaded to solve #637 ghost beat
    // load_sram() it is already called at each boot in portapack.cpp ,including verify CPLD part.
    // Here we skipped CPLD verify part,just to be quicker (in case any CPLD problem it will be detected in the boot process).

    auto jtag_target_hackrf_cpld = jtag_target_hackrf();
    hackrf::one::cpld::CPLD hackrf_cpld{jtag_target_hackrf_cpld};

    hackrf_cpld.write_sram(hackrf::one::cpld::verify_blocks);

    return;
}

bool verify_eeprom() {
    auto jtag_target_hackrf_cpld = jtag_target_hackrf();
    hackrf::one::cpld::CPLD hackrf_cpld{jtag_target_hackrf_cpld};

    const auto ok = hackrf_cpld.verify_eeprom(hackrf::one::cpld::verify_blocks);

    return ok;
}

void init_from_eeprom() {
    auto jtag_target_hackrf_cpld = jtag_target_hackrf();
    hackrf::one::cpld::CPLD hackrf_cpld{jtag_target_hackrf_cpld};

    hackrf_cpld.init_from_eeprom();
}

} /* namespace cpld */
} /* namespace hackrf */
