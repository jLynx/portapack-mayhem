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

#ifndef __PORTAPACK_CPLD_DATA_H__
#define __PORTAPACK_CPLD_DATA_H__

#include "cpld_max5.hpp"

#include <cstdint>
#include <array>

namespace portapack {
namespace cpld {

using CPLD = ::cpld::max5::CPLD;

template <size_t Size0, size_t Size1, typename T>
using Config = ::cpld::max5::Config<Size0, Size1, T>;
// using Config = ::cpld::max5::Config;

namespace rev_20150901 {

extern const std::array<uint16_t, 3328> block_0;
extern const std::array<uint16_t, 512> block_1;

const Config<3328, 512, uint16_t> config{block_0, block_1};

} /* namespace rev_20150901 */

namespace rev_20170522 {

extern const std::array<uint16_t, 3328> block_0;
extern const std::array<uint16_t, 512> block_1;

const Config<3328, 512, uint16_t> config{block_0, block_1};

} /* namespace rev_20170522 */

namespace rev_AG256SL100 {

extern const std::array<uint64_t, 3606> block_0;
extern const std::array<uint64_t, 0> block_1;

const Config<3606, 0, uint64_t> config{block_0, block_1};

} /* namespace rev_AG256SL100 */

} /* namespace cpld */
} /* namespace portapack */

#endif /*__PORTAPACK_CPLD_DATA_H__*/
