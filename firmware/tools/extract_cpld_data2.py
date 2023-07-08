#!/usr/bin/env python3

#
# Copyright (C) 2023 Bernd Herzog
#
# This file is part of PortaPack.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
#

# Very fragile code to extract data from AGM CPLD PRG

import sys

def reverseBits(num, bitSize):
    binary = bin(num)
     
    reverse = binary[-1:1:-1]
    reverse = reverse + (bitSize - len(reverse))*'0'
     
    return (int(reverse, 2))  

def print_block(block):
	for n in range(0, len(block), 8):
		chunk = block[n:n+8]
		line = ['0x%s,' % v for v in chunk]
		print(('\t%s' % ' '.join(line)))

if len(sys.argv) != 3:
	print('Usage: <command> <AGM CPLD PRG file path> <revision name>')
	sys.exit(-1)

f = open(sys.argv[1], 'r')
revision_name = sys.argv[2]

data_block = []
expected_address = 0
magic_value = None

for line in f:
	line = line.strip().upper()
	if line.startswith('SDR 64 -TDI ') and line.endswith('0040'):
		#sdr 64 -tdi 0200000015200040
		sdr_value = line.split(' ')[3]
		address = int(reverseBits(int(sdr_value[8:], 16) - 64, 32) / 4)
		data_entry = sdr_value[:8]

		if (expected_address == 299 and address == 0):
			magic_value = data_entry
			continue

		if (expected_address != address):
			print("err at address {}: {}".format(expected_address, line))
			sys.exit(1)

		data_block.append(data_entry)
		expected_address += 1

if (magic_value == None):
	print("magic value not found!")
	sys.exit(1)

print(("""#include "portapack_cpld_data.hpp"

#include <cstdint>
#include <array>

namespace portapack {
namespace cpld {
namespace %s {
""" % revision_name))

print(('const std::array<uint32_t, %d> data { {' % len(data_block)))
print_block(data_block)

print("""} };
""")

print(('constexpr uint32_t data_magic = 0x%s;' % magic_value))

print(("""
} /* namespace %s */
} /* namespace cpld */
} /* namespace portapack */
""" % revision_name))
