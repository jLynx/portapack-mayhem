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

#pragma once

#include "portapack_io.hpp"

#include "portapack_cpld_data.hpp"

#include "receiver_model.hpp"
#include "transmitter_model.hpp"

#include "i2c_pp.hpp"
#include "spi_pp.hpp"
#include "si5351.hpp"
#include "lcd_ili9341.hpp"
#include "backlight.hpp"

#include "radio.hpp"
#include "clock_manager.hpp"
#include "temperature_logger.hpp"

#include "cpld_update.hpp"

/* TODO: This would be better as a class to add
 * guardrails on setting properties. */
namespace portapack {

enum class PortaPackModel {
    R1_20150901,
    R2_20170522,
    R2_AG256SL100,
};

extern portapack::IO io;

extern lcd::ILI9341 display;

extern I2C i2c0;
extern SPI ssp1;

extern si5351::Si5351 clock_generator;
extern ClockManager clock_manager;

extern ReceiverModel receiver_model;
extern TransmitterModel transmitter_model;

extern bool speaker_mode;
void set_speaker_mode(const bool v);

extern uint32_t bl_tick_counter;
extern bool antenna_bias;

extern TemperatureLogger temperature_logger;

// template <size_t Size0, size_t Size1, typename T>
// const static portapack::cpld::Config<Size0, Size1, T>& portapack_cpld_config();

/* Get or set the antenna_bias flag.
 * NB: Does not actually update the radio state. */
void set_antenna_bias(const bool v);
bool get_antenna_bias();

bool init();
void shutdown(const bool leave_screen_on = false);

// template <size_t Size0, size_t Size1, typename T>
// const Config<Size0, Size1, T>& portapack_cpld_config();

PortaPackModel portapack_model();

template <size_t Size0, size_t Size1, typename T>
const static cpld::Config<Size0, Size1, T>& portapack_cpld_config() {
    if (portapack_model() == PortaPackModel::R2_20170522) {
        // const portapack::cpld::Config<3328, 512, uint16_t>& config2 = portapack::cpld::rev_20170522::config;
        // return config2;
        return cpld::rev_20170522::config;
    } else if (portapack_model() == PortaPackModel::R1_20150901) {
        // const portapack::cpld::Config<3328, 512, uint16_t>& config1 = portapack::cpld::rev_20150901::config;
        // return config1;
        return cpld::rev_20150901::config;
    } else if (portapack_model() == PortaPackModel::R2_AG256SL100) {
        // const portapack::cpld::Config<3606, 0, uint64_t>& config3 = portapack::cpld::rev_AG256SL100::config;
        // return config3;
        return portapack::cpld::rev_AG256SL100::config;
    }
    // const portapack::cpld::Config<3328, 512, uint16_t>& config2 = portapack::cpld::rev_20170522::config;
    // return config2;
    return cpld::rev_20170522::config;
}

Backlight* backlight();

} /* namespace portapack */
