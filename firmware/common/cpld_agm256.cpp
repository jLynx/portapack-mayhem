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

// TODO: Remove
#include "ui_font_fixed_8x16.hpp"
#include "ui_painter.hpp"
#include "string_format.hpp"
#include "portapack.hpp"
#include "portapack_hal.hpp"
#include "portapack_dma.hpp"
#include "portapack_cpld_data.hpp"
#include "portapack_persistent_memory.hpp"
#include "io_file.hpp"
#include "file.hpp"

namespace cpld {
namespace agm256 {

uint32_t CPLD::encode_address(uint32_t address) {
    uint32_t p = 0xC0;
    for (size_t i = 0; i < 18; i++) {
        auto address_bit = (address >> i) & 0x01;
        p |= address_bit << (31 - i);
    }

    return p;
}

uint32_t CPLD::update() {
    int boot_log_line = 1;

    // shift_ir(0x3f7);  // turns off!
    // jtag.runtest_tck(100);

    shift_ir(0x3f8);  // makes all read values 0
    jtag.runtest_tck(100);
    shift_ir(0x3f9);  // makes all read values -1 (default, restores)
    jtag.runtest_tck(100);
    shift_ir(0x3f8);  // makes all read values 0
    jtag.runtest_tck(100);

    shift_ir(instruction_t::IDCODE);
    auto idcode = jtag.shift_dr(idcode_length, 0);

    // if (idcode != 0x00025610)
    //     chDbgPanic("idcode");

    // turns off, Needed for some data
    shift_ir(0x3fc);  // Set Address
    jtag.runtest_tck(100);
    // SDR 8 TDI (f8); // TO
    auto old_addr = jtag.shift_dr(8, 0xf8);

    shift_ir(0x3fd);  // READ, makes idcode go away
    jtag.runtest_tck(100);

    {  // TODO: Remove Debug output

        // jtag.initialize_shift_dr64();
        // adress system
        // always 0xC0 at the end
        // 32bit
        // 0b 0000 0000 0000 0000 0000 0000 1100 0000
        //    --12 3456 789A B

        File file;
        auto result = file.create("fw_dump_4.bin");

        for (size_t address = 0; address < 0x2390; address += 4) {
            file.write_line("a");
            file.write_line(to_string_hex((uint32_t)(address), 8));
            file.write_line(to_string_hex((uint32_t)(encode_address(address)), 8));

            // all zero reads FE
            jtag.shift_dr64_one(32, encode_address(address));      // 0x100000c0
            auto some_value_two_0 = jtag.shift_dr64_two(32, 0x0);  // 0xc0000100
            file.write_line(to_string_hex((uint32_t)(some_value_two_0), 8));

            file.sync();
        }

        // // jtag.prepare_next();
        // jtag.shift_dr64_one(32, address_to_p(address));  // 0x200000c0
        // auto some_value_two_1 = jtag.shift_dr64_two(32, 0x0);

        // // jtag.prepare_next();
        // auto some_value_one_2 = jtag.shift_dr64_one(32, 0x200000c0);  // 0x100000c0
        // auto some_value_two_2 = jtag.shift_dr64_two(32, 0x0);

        // // jtag.prepare_next();
        // auto some_value_one_3 = jtag.shift_dr64_one(32, 0x000000c0);  // 0x300000c0
        // auto some_value_two_3 = jtag.shift_dr64_two(32, 0x0);

        shift_ir(0x3f7);  // turns off!
        jtag.runtest_tck(100);

        {  // TODO: Remove Debug output
            portapack::display.init();
            portapack::display.wake();
            portapack::BacklightCAT4004 backlight_cat4004;
            static_cast<portapack::Backlight*>(&backlight_cat4004)->on();
        }

        ui::Painter painter;
        ui::Style style_default{
            .font = ui::font::fixed_8x16,
            .background = ui::Color::black(),
            .foreground = ui::Color::white()};

        painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(encode_address(0)), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two_0), 8));
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(address_to_p(address)), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two_1), 8));
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(some_value_one_2), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two_2), 8));
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(some_value_one_3), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two_3), 8));
        ///////////////

        // auto some_value_one = jtag.shift_dr64_one(32, 0x1d4100c0);
        // auto some_value_two = jtag.shift_dr64_two(32, 0x0);
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(some_value_one), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two), 8));

        // auto some_value_one = jtag.shift_dr64_one(32, 0x20c100c0);
        // auto some_value_two = jtag.shift_dr64_two(32, 0x0);
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(some_value_one), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two), 8));

        // auto some_value_one = jtag.shift_dr64_one(32, 0x22100c0);
        // auto some_value_two = jtag.shift_dr64_two(32, 0x0);
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(some_value_one), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two), 8));

        // auto some_value_one = jtag.shift_dr64_one(32, 0x143900c0);
        // auto some_value_two = jtag.shift_dr64_two(32, 0x0);
        // painter.draw_string({8 * 1, boot_log_line * 20}, style_default, to_string_hex((uint32_t)(some_value_one), 8));
        // painter.draw_string({8 * 13, boot_log_line++ * 20}, style_default, to_string_hex((uint32_t)(some_value_two), 8));

        // jtag.finalize_shift_dr64();

        while (true)
            ;
    }

    return (uint32_t)(4);
}

} /* namespace agm256 */
} /* namespace cpld */
