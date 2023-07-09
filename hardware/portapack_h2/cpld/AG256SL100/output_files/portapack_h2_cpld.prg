set sh_continue_on_error false
usb_connect
if { ! [jtag_device_id] } {
  exit
}
runtest -tck 1
sir 10 -tdi 3f8
runtest -tck 100
sir 10 -tdi 3f9
runtest -tck 100
sir 10 -tdi 3f8
runtest -tck 100
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi 00
sir 10 -tdi 3fa
runtest -tck 100
sdr 64 \
  -tdi  80000000203f0044 \
  -tdo  0 \
  -mask 0
sir 10 -tdi 6
runtest -tck 100
sdr 32 -tdi 00000000 -tdo 00025610 -mask ffffffff
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi f0
sir 10 -tdi 3fe
runtest -tck 100
runtest -sec 0.5
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi f0
sir 10 -tdi 3fa
runtest -tck 100
sdr 64 -tdi 086a400000000040
runtest -sec 0.002
sdr 64 -tdi ffff000020000040
runtest -sec 0.002
sdr 64 -tdi 0400004510000040
runtest -sec 0.002
sdr 64 -tdi 04f0200030000040
runtest -sec 0.002
sdr 64 -tdi b385942c08000040
runtest -sec 0.002
sdr 64 -tdi c2ca165028000040
runtest -sec 0.002
sdr 64 -tdi 650b20f118000040
runtest -sec 0.002
sdr 64 -tdi 85942c8138000040
runtest -sec 0.002
sdr 64 -tdi c83dc0b204000040
runtest -sec 0.002
sdr 64 -tdi 1ee0f70224000040
runtest -sec 0.002
sdr 64 -tdi 707b83dc14000040
runtest -sec 0.002
sdr 64 -tdi 3dc1ee0f34000040
runtest -sec 0.002
sdr 64 -tdi e0f707b80c000040
runtest -sec 0.002
sdr 64 -tdi 7b81641e2c000040
runtest -sec 0.002
sdr 64 -tdi c1ee0f701c000040
runtest -sec 0.002
sdr 64 -tdi f707b83d3c000040
runtest -sec 0.002
sdr 64 -tdi 83dc1ee002000040
runtest -sec 0.002
sdr 64 -tdi b285902c22000040
runtest -sec 0.002
sdr 64 -tdi 42ca164012000040
runtest -sec 0.002
sdr 64 -tdi c41ee05932000040
runtest -sec 0.002
sdr 64 -tdi 85907b830a000040
runtest -sec 0.002
sdr 64 -tdi ca1650b22a000040
runtest -sec 0.002
sdr 64 -tdi 0b2859421a000040
runtest -sec 0.002
sdr 64 -tdi 942ca1653a000040
runtest -sec 0.002
sdr 64 -tdi 1650b28506000040
runtest -sec 0.002
sdr 64 -tdi 285942ca26000040
runtest -sec 0.002
sdr 64 -tdi 2ca1650b16000040
runtest -sec 0.002
sdr 64 -tdi 40b2059436000040
runtest -sec 0.002
sdr 64 -tdi 5902c8160e000040
runtest -sec 0.002
sdr 64 -tdi a3e51f202e000040
runtest -sec 0.002
sdr 64 -tdi b28f947c1e000040
runtest -sec 0.002
sdr 64 -tdi c2ce16703e000040
runtest -sec 0.002
sdr 64 -tdi df0b385901000040
runtest -sec 0.002
sdr 64 -tdi 0f707b8321000040
runtest -sec 0.002
sdr 64 -tdi ca1641ee11000040
runtest -sec 0.002
sdr 64 -tdi 0b28594231000040
runtest -sec 0.002
sdr 64 -tdi 0000a16509000040
runtest -sec 0.002
sdr 64 -tdi 0000004529000040
runtest -sec 0.002
sdr 64 -tdi 04ffdb0019000040
runtest -sec 0.002
sdr 64 -tdi 001fffff39000040
runtest -sec 0.002
sdr 64 -tdi 0000000005000040
runtest -sec 0.002
sdr 64 -tdi 0000000025000040
runtest -sec 0.002
sdr 64 -tdi 0000000015000040
runtest -sec 0.002
sdr 64 -tdi 0000000035000040
runtest -sec 0.002
sdr 64 -tdi 000000000d000040
runtest -sec 0.002
sdr 64 -tdi 000000002d000040
runtest -sec 0.002
sdr 64 -tdi 0000007e1d000040
runtest -sec 0.002
sdr 64 -tdi 001fffff3d000040
runtest -sec 0.002
sdr 64 -tdi 0000000003000040
runtest -sec 0.002
sdr 64 -tdi 0000000023000040
runtest -sec 0.002
sdr 64 -tdi 0000000013000040
runtest -sec 0.002
sdr 64 -tdi 0000000033000040
runtest -sec 0.002
sdr 64 -tdi 000000000b000040
runtest -sec 0.002
sdr 64 -tdi 000000002b000040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b000040
runtest -sec 0.002
sdr 64 -tdi 001fffff3b000040
runtest -sec 0.002
sdr 64 -tdi 0000000007000040
runtest -sec 0.002
sdr 64 -tdi 0000000027000040
runtest -sec 0.002
sdr 64 -tdi 0000000017000040
runtest -sec 0.002
sdr 64 -tdi 0000000037000040
runtest -sec 0.002
sdr 64 -tdi 000000000f000040
runtest -sec 0.002
sdr 64 -tdi 000000002f000040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f000040
runtest -sec 0.002
sdr 64 -tdi 001fffff3f000040
runtest -sec 0.002
sdr 64 -tdi 0000000000800040
runtest -sec 0.002
sdr 64 -tdi 0000000020800040
runtest -sec 0.002
sdr 64 -tdi 0000000010800040
runtest -sec 0.002
sdr 64 -tdi 0000000030800040
runtest -sec 0.002
sdr 64 -tdi 0000000008800040
runtest -sec 0.002
sdr 64 -tdi 0000000028800040
runtest -sec 0.002
sdr 64 -tdi 0000007e18800040
runtest -sec 0.002
sdr 64 -tdi 011fffff38800040
runtest -sec 0.002
sdr 64 -tdi 0440210a04800040
runtest -sec 0.002
sdr 64 -tdi 1000842324800040
runtest -sec 0.002
sdr 64 -tdi 42410a1414800040
runtest -sec 0.002
sdr 64 -tdi 04a0045034800040
runtest -sec 0.002
sdr 64 -tdi 2a1220040c800040
runtest -sec 0.002
sdr 64 -tdi a60428042c800040
runtest -sec 0.002
sdr 64 -tdi 0000007e1c800040
runtest -sec 0.002
sdr 64 -tdi 001fffff3c800040
runtest -sec 0.002
sdr 64 -tdi 0000000002800040
runtest -sec 0.002
sdr 64 -tdi 0060000022800040
runtest -sec 0.002
sdr 64 -tdi 0018400012800040
runtest -sec 0.002
sdr 64 -tdi 0205100032800040
runtest -sec 0.002
sdr 64 -tdi 008040d00a800040
runtest -sec 0.002
sdr 64 -tdi 000000002a800040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a800040
runtest -sec 0.002
sdr 64 -tdi 001fffff3a800040
runtest -sec 0.002
sdr 64 -tdi 0000000006800040
runtest -sec 0.002
sdr 64 -tdi 0010000026800040
runtest -sec 0.002
sdr 64 -tdi 0108420816800040
runtest -sec 0.002
sdr 64 -tdi 0421082036800040
runtest -sec 0.002
sdr 64 -tdi 000000000e800040
runtest -sec 0.002
sdr 64 -tdi 000000002e800040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e800040
runtest -sec 0.002
sdr 64 -tdi 011fffff3e800040
runtest -sec 0.002
sdr 64 -tdi 0000000201800040
runtest -sec 0.002
sdr 64 -tdi 0040842021800040
runtest -sec 0.002
sdr 64 -tdi 0090840411800040
runtest -sec 0.002
sdr 64 -tdi 0242101031800040
runtest -sec 0.002
sdr 64 -tdi 018c60cc09800040
runtest -sec 0.002
sdr 64 -tdi 0000000029800040
runtest -sec 0.002
sdr 64 -tdi 0000007e19800040
runtest -sec 0.002
sdr 64 -tdi 0000000039800040
runtest -sec 0.002
sdr 64 -tdi 0000000005800040
runtest -sec 0.002
sdr 64 -tdi 0000000025800040
runtest -sec 0.002
sdr 64 -tdi 0000000015800040
runtest -sec 0.002
sdr 64 -tdi 0000000035800040
runtest -sec 0.002
sdr 64 -tdi 002000000d800040
runtest -sec 0.002
sdr 64 -tdi 000000002d800040
runtest -sec 0.002
sdr 64 -tdi 000000021d800040
runtest -sec 0.002
sdr 64 -tdi 000000003d800040
runtest -sec 0.002
sdr 64 -tdi 0000000003800040
runtest -sec 0.002
sdr 64 -tdi 00a9000023800040
runtest -sec 0.002
sdr 64 -tdi 0240000013800040
runtest -sec 0.002
sdr 64 -tdi 4004800033800040
runtest -sec 0.002
sdr 64 -tdi 008000000b800040
runtest -sec 0.002
sdr 64 -tdi 000000002b800040
runtest -sec 0.002
sdr 64 -tdi 000000001b800040
runtest -sec 0.002
sdr 64 -tdi 000000003b800040
runtest -sec 0.002
sdr 64 -tdi 0000000007800040
runtest -sec 0.002
sdr 64 -tdi 0000000027800040
runtest -sec 0.002
sdr 64 -tdi 0000000017800040
runtest -sec 0.002
sdr 64 -tdi 2000000037800040
runtest -sec 0.002
sdr 64 -tdi 000080020f800040
runtest -sec 0.002
sdr 64 -tdi 008c00002f800040
runtest -sec 0.002
sdr 64 -tdi 000000001f800040
runtest -sec 0.002
sdr 64 -tdi 000000003f800040
runtest -sec 0.002
sdr 64 -tdi 0000000000400040
runtest -sec 0.002
sdr 64 -tdi 0000000020400040
runtest -sec 0.002
sdr 64 -tdi 0000000010400040
runtest -sec 0.002
sdr 64 -tdi 0002800030400040
runtest -sec 0.002
sdr 64 -tdi 0000080008400040
runtest -sec 0.002
sdr 64 -tdi 1400000028400040
runtest -sec 0.002
sdr 64 -tdi 0000000918400040
runtest -sec 0.002
sdr 64 -tdi 0000004038400040
runtest -sec 0.002
sdr 64 -tdi 0000000004400040
runtest -sec 0.002
sdr 64 -tdi 0000000024400040
runtest -sec 0.002
sdr 64 -tdi 0100000014400040
runtest -sec 0.002
sdr 64 -tdi 0002400034400040
runtest -sec 0.002
sdr 64 -tdi 601100000c400040
runtest -sec 0.002
sdr 64 -tdi 100000002c400040
runtest -sec 0.002
sdr 64 -tdi 000000001c400040
runtest -sec 0.002
sdr 64 -tdi 000004003c400040
runtest -sec 0.002
sdr 64 -tdi 0000000002400040
runtest -sec 0.002
sdr 64 -tdi 0000000022400040
runtest -sec 0.002
sdr 64 -tdi 0424000012400040
runtest -sec 0.002
sdr 64 -tdi 0000000032400040
runtest -sec 0.002
sdr 64 -tdi 000000000a400040
runtest -sec 0.002
sdr 64 -tdi 000000002a400040
runtest -sec 0.002
sdr 64 -tdi 000000011a400040
runtest -sec 0.002
sdr 64 -tdi 000000003a400040
runtest -sec 0.002
sdr 64 -tdi 0000000006400040
runtest -sec 0.002
sdr 64 -tdi 0000000026400040
runtest -sec 0.002
sdr 64 -tdi 0000000016400040
runtest -sec 0.002
sdr 64 -tdi 0000000036400040
runtest -sec 0.002
sdr 64 -tdi 000000000e400040
runtest -sec 0.002
sdr 64 -tdi 000000002e400040
runtest -sec 0.002
sdr 64 -tdi 000000001e400040
runtest -sec 0.002
sdr 64 -tdi 000000003e400040
runtest -sec 0.002
sdr 64 -tdi 0000000001400040
runtest -sec 0.002
sdr 64 -tdi 0000000021400040
runtest -sec 0.002
sdr 64 -tdi 0000000011400040
runtest -sec 0.002
sdr 64 -tdi 0090000031400040
runtest -sec 0.002
sdr 64 -tdi 0000000009400040
runtest -sec 0.002
sdr 64 -tdi 1000000029400040
runtest -sec 0.002
sdr 64 -tdi 0000000119400040
runtest -sec 0.002
sdr 64 -tdi 0000480039400040
runtest -sec 0.002
sdr 64 -tdi 0000000005400040
runtest -sec 0.002
sdr 64 -tdi 0000000025400040
runtest -sec 0.002
sdr 64 -tdi 0000100015400040
runtest -sec 0.002
sdr 64 -tdi 2000c00035400040
runtest -sec 0.002
sdr 64 -tdi 000000000d400040
runtest -sec 0.002
sdr 64 -tdi 000000002d400040
runtest -sec 0.002
sdr 64 -tdi 000000011d400040
runtest -sec 0.002
sdr 64 -tdi 000000003d400040
runtest -sec 0.002
sdr 64 -tdi 0000000003400040
runtest -sec 0.002
sdr 64 -tdi 0009000023400040
runtest -sec 0.002
sdr 64 -tdi 0000400013400040
runtest -sec 0.002
sdr 64 -tdi 4090000033400040
runtest -sec 0.002
sdr 64 -tdi 000000000b400040
runtest -sec 0.002
sdr 64 -tdi 100000012b400040
runtest -sec 0.002
sdr 64 -tdi 000000001b400040
runtest -sec 0.002
sdr 64 -tdi 001200003b400040
runtest -sec 0.002
sdr 64 -tdi 0000000007400040
runtest -sec 0.002
sdr 64 -tdi 0000000027400040
runtest -sec 0.002
sdr 64 -tdi 0000000017400040
runtest -sec 0.002
sdr 64 -tdi 1000000037400040
runtest -sec 0.002
sdr 64 -tdi 800080020f400040
runtest -sec 0.002
sdr 64 -tdi 000000082f400040
runtest -sec 0.002
sdr 64 -tdi 000000001f400040
runtest -sec 0.002
sdr 64 -tdi 000000013f400040
runtest -sec 0.002
sdr 64 -tdi 0000000000c00040
runtest -sec 0.002
sdr 64 -tdi 0000000020c00040
runtest -sec 0.002
sdr 64 -tdi 0000000010c00040
runtest -sec 0.002
sdr 64 -tdi 0200000030c00040
runtest -sec 0.002
sdr 64 -tdi 0000040008c00040
runtest -sec 0.002
sdr 64 -tdi 0001100028c00040
runtest -sec 0.002
sdr 64 -tdi 0000004018c00040
runtest -sec 0.002
sdr 64 -tdi 0000000038c00040
runtest -sec 0.002
sdr 64 -tdi 0000000004c00040
runtest -sec 0.002
sdr 64 -tdi 0000000024c00040
runtest -sec 0.002
sdr 64 -tdi 0000000014c00040
runtest -sec 0.002
sdr 64 -tdi 0000200334c00040
runtest -sec 0.002
sdr 64 -tdi 000000000cc00040
runtest -sec 0.002
sdr 64 -tdi 000400302cc00040
runtest -sec 0.002
sdr 64 -tdi 000000001cc00040
runtest -sec 0.002
sdr 64 -tdi 000000003cc00040
runtest -sec 0.002
sdr 64 -tdi 0000000002c00040
runtest -sec 0.002
sdr 64 -tdi 0000000022c00040
runtest -sec 0.002
sdr 64 -tdi 5000000012c00040
runtest -sec 0.002
sdr 64 -tdi 0a90010332c00040
runtest -sec 0.002
sdr 64 -tdi 000000000ac00040
runtest -sec 0.002
sdr 64 -tdi 002000302ac00040
runtest -sec 0.002
sdr 64 -tdi 000000001ac00040
runtest -sec 0.002
sdr 64 -tdi 000000003ac00040
runtest -sec 0.002
sdr 64 -tdi 0000000006c00040
runtest -sec 0.002
sdr 64 -tdi 00000c0026c00040
runtest -sec 0.002
sdr 64 -tdi 3000000016c00040
runtest -sec 0.002
sdr 64 -tdi 0000080a36c00040
runtest -sec 0.002
sdr 64 -tdi 801000000ec00040
runtest -sec 0.002
sdr 64 -tdi 848000312ec00040
runtest -sec 0.002
sdr 64 -tdi 000000011ec00040
runtest -sec 0.002
sdr 64 -tdi 000000013ec00040
runtest -sec 0.002
sdr 64 -tdi 0000000001c00040
runtest -sec 0.002
sdr 64 -tdi 0000000021c00040
runtest -sec 0.002
sdr 64 -tdi 8000000011c00040
runtest -sec 0.002
sdr 64 -tdi 0004818231c00040
runtest -sec 0.002
sdr 64 -tdi 0001000009c00040
runtest -sec 0.002
sdr 64 -tdi 0002103029c00040
runtest -sec 0.002
sdr 64 -tdi 0000004019c00040
runtest -sec 0.002
sdr 64 -tdi 0000000039c00040
runtest -sec 0.002
sdr 64 -tdi 0000000005c00040
runtest -sec 0.002
sdr 64 -tdi c000000025c00040
runtest -sec 0.002
sdr 64 -tdi 0040080015c00040
runtest -sec 0.002
sdr 64 -tdi 0000000035c00040
runtest -sec 0.002
sdr 64 -tdi 800000000dc00040
runtest -sec 0.002
sdr 64 -tdi 0040003e2dc00040
runtest -sec 0.002
sdr 64 -tdi 000000011dc00040
runtest -sec 0.002
sdr 64 -tdi 000000003dc00040
runtest -sec 0.002
sdr 64 -tdi 0000000003c00040
runtest -sec 0.002
sdr 64 -tdi d400000023c00040
runtest -sec 0.002
sdr 64 -tdi 0200004013c00040
runtest -sec 0.002
sdr 64 -tdi 0090000033c00040
runtest -sec 0.002
sdr 64 -tdi 000000000bc00040
runtest -sec 0.002
sdr 64 -tdi 100400382bc00040
runtest -sec 0.002
sdr 64 -tdi 000000001bc00040
runtest -sec 0.002
sdr 64 -tdi 000000003bc00040
runtest -sec 0.002
sdr 64 -tdi 0000000007c00040
runtest -sec 0.002
sdr 64 -tdi 8800000027c00040
runtest -sec 0.002
sdr 64 -tdi 0012000217c00040
runtest -sec 0.002
sdr 64 -tdi 0000000037c00040
runtest -sec 0.002
sdr 64 -tdi 006000000fc00040
runtest -sec 0.002
sdr 64 -tdi 081402012fc00040
runtest -sec 0.002
sdr 64 -tdi 000000001fc00040
runtest -sec 0.002
sdr 64 -tdi 000000013fc00040
runtest -sec 0.002
sdr 64 -tdi 0000000000200040
runtest -sec 0.002
sdr 64 -tdi a000000020200040
runtest -sec 0.002
sdr 64 -tdi 000002a010200040
runtest -sec 0.002
sdr 64 -tdi 0000000030200040
runtest -sec 0.002
sdr 64 -tdi 0000000008200040
runtest -sec 0.002
sdr 64 -tdi 0080080028200040
runtest -sec 0.002
sdr 64 -tdi 0000000c18200040
runtest -sec 0.002
sdr 64 -tdi 0000000038200040
runtest -sec 0.002
sdr 64 -tdi 0000000004200040
runtest -sec 0.002
sdr 64 -tdi 1001800024200040
runtest -sec 0.002
sdr 64 -tdi 0800144414200040
runtest -sec 0.002
sdr 64 -tdi 0000000034200040
runtest -sec 0.002
sdr 64 -tdi 000300000c200040
runtest -sec 0.002
sdr 64 -tdi 000000002c200040
runtest -sec 0.002
sdr 64 -tdi 000000301c200040
runtest -sec 0.002
sdr 64 -tdi 000000003c200040
runtest -sec 0.002
sdr 64 -tdi 0000000002200040
runtest -sec 0.002
sdr 64 -tdi f000000022200040
runtest -sec 0.002
sdr 64 -tdi 6000802012200040
runtest -sec 0.002
sdr 64 -tdi 0000000032200040
runtest -sec 0.002
sdr 64 -tdi 000000000a200040
runtest -sec 0.002
sdr 64 -tdi 000000012a200040
runtest -sec 0.002
sdr 64 -tdi 000000001a200040
runtest -sec 0.002
sdr 64 -tdi 000000003a200040
runtest -sec 0.002
sdr 64 -tdi 0000000006200040
runtest -sec 0.002
sdr 64 -tdi 8801800026200040
runtest -sec 0.002
sdr 64 -tdi 6000080216200040
runtest -sec 0.002
sdr 64 -tdi 0000000336200040
runtest -sec 0.002
sdr 64 -tdi 800000000e200040
runtest -sec 0.002
sdr 64 -tdi 000200082e200040
runtest -sec 0.002
sdr 64 -tdi 000000001e200040
runtest -sec 0.002
sdr 64 -tdi 000000013e200040
runtest -sec 0.002
sdr 64 -tdi 0000000001200040
runtest -sec 0.002
sdr 64 -tdi 8000000021200040
runtest -sec 0.002
sdr 64 -tdi 0000005011200040
runtest -sec 0.002
sdr 64 -tdi 0002804b31200040
runtest -sec 0.002
sdr 64 -tdi 0000000009200040
runtest -sec 0.002
sdr 64 -tdi 0000200029200040
runtest -sec 0.002
sdr 64 -tdi 0000000019200040
runtest -sec 0.002
sdr 64 -tdi 0000000039200040
runtest -sec 0.002
sdr 64 -tdi 0000000005200040
runtest -sec 0.002
sdr 64 -tdi 0000000025200040
runtest -sec 0.002
sdr 64 -tdi 4c00000015200040
runtest -sec 0.002
sdr 64 -tdi d1c726d300000040
runtest -sec 0.002
sdr 64 -tdi 0000200235200040
runtest -sec 0.002
sdr 64 -tdi 000000000d200040
runtest -sec 0.002
sdr 64 -tdi 004000002d200040
runtest -sec 0.002
sdr 64 -tdi 000000001d200040
runtest -sec 0.002
sdr 64 -tdi 000000003d200040
runtest -sec 0.002
sdr 64 -tdi 0000000003200040
runtest -sec 0.002
sdr 64 -tdi 0002800023200040
runtest -sec 0.002
sdr 64 -tdi c040000013200040
runtest -sec 0.002
sdr 64 -tdi 098c810133200040
runtest -sec 0.002
sdr 64 -tdi 000000000b200040
runtest -sec 0.002
sdr 64 -tdi 000400012b200040
runtest -sec 0.002
sdr 64 -tdi 000000001b200040
runtest -sec 0.002
sdr 64 -tdi 000000003b200040
runtest -sec 0.002
sdr 64 -tdi 0000000007200040
runtest -sec 0.002
sdr 64 -tdi 0000800027200040
runtest -sec 0.002
sdr 64 -tdi 2000000017200040
runtest -sec 0.002
sdr 64 -tdi 0000000237200040
runtest -sec 0.002
sdr 64 -tdi 800300000f200040
runtest -sec 0.002
sdr 64 -tdi 000c00082f200040
runtest -sec 0.002
sdr 64 -tdi 000000001f200040
runtest -sec 0.002
sdr 64 -tdi 000000013f200040
runtest -sec 0.002
sdr 64 -tdi 0000000000a00040
runtest -sec 0.002
sdr 64 -tdi 0008000020a00040
runtest -sec 0.002
sdr 64 -tdi 0024000010a00040
runtest -sec 0.002
sdr 64 -tdi 0090000230a00040
runtest -sec 0.002
sdr 64 -tdi 0000000008a00040
runtest -sec 0.002
sdr 64 -tdi 0000500028a00040
runtest -sec 0.002
sdr 64 -tdi 0000004018a00040
runtest -sec 0.002
sdr 64 -tdi 0000000038a00040
runtest -sec 0.002
sdr 64 -tdi 0000000004a00040
runtest -sec 0.002
sdr 64 -tdi 0000000024a00040
runtest -sec 0.002
sdr 64 -tdi 0800000014a00040
runtest -sec 0.002
sdr 64 -tdi 0000000034a00040
runtest -sec 0.002
sdr 64 -tdi 000000000ca00040
runtest -sec 0.002
sdr 64 -tdi 008000002ca00040
runtest -sec 0.002
sdr 64 -tdi 000000001ca00040
runtest -sec 0.002
sdr 64 -tdi 000000003ca00040
runtest -sec 0.002
sdr 64 -tdi 0000000002a00040
runtest -sec 0.002
sdr 64 -tdi 0009000022a00040
runtest -sec 0.002
sdr 64 -tdi 6000000012a00040
runtest -sec 0.002
sdr 64 -tdi 0000000032a00040
runtest -sec 0.002
sdr 64 -tdi 000000000aa00040
runtest -sec 0.002
sdr 64 -tdi 040000062aa00040
runtest -sec 0.002
sdr 64 -tdi 000000001aa00040
runtest -sec 0.002
sdr 64 -tdi 000000003aa00040
runtest -sec 0.002
sdr 64 -tdi 0000000006a00040
runtest -sec 0.002
sdr 64 -tdi 0000000026a00040
runtest -sec 0.002
sdr 64 -tdi 6000000016a00040
runtest -sec 0.002
sdr 64 -tdi 0000c02336a00040
runtest -sec 0.002
sdr 64 -tdi c01100000ea00040
runtest -sec 0.002
sdr 64 -tdi 848000362ea00040
runtest -sec 0.002
sdr 64 -tdi 000000011ea00040
runtest -sec 0.002
sdr 64 -tdi 000000013ea00040
runtest -sec 0.002
sdr 64 -tdi 0000050001a00040
runtest -sec 0.002
sdr 64 -tdi 0000000021a00040
runtest -sec 0.002
sdr 64 -tdi 0000000011a00040
runtest -sec 0.002
sdr 64 -tdi 0000008331a00040
runtest -sec 0.002
sdr 64 -tdi 1000000009a00040
runtest -sec 0.002
sdr 64 -tdi 00000a3029a00040
runtest -sec 0.002
sdr 64 -tdi 0000000019a00040
runtest -sec 0.002
sdr 64 -tdi 0000000039a00040
runtest -sec 0.002
sdr 64 -tdi 0000000005a00040
runtest -sec 0.002
sdr 64 -tdi 0000000025a00040
runtest -sec 0.002
sdr 64 -tdi 2200000015a00040
runtest -sec 0.002
sdr 64 -tdi 0800400035a00040
runtest -sec 0.002
sdr 64 -tdi 200000000da00040
runtest -sec 0.002
sdr 64 -tdi 000008022da00040
runtest -sec 0.002
sdr 64 -tdi 000000001da00040
runtest -sec 0.002
sdr 64 -tdi 000000003da00040
runtest -sec 0.002
sdr 64 -tdi 0000000003a00040
runtest -sec 0.002
sdr 64 -tdi 1000000023a00040
runtest -sec 0.002
sdr 64 -tdi 6200000013a00040
runtest -sec 0.002
sdr 64 -tdi 8000400033a00040
runtest -sec 0.002
sdr 64 -tdi 000000010ba00040
runtest -sec 0.002
sdr 64 -tdi 800401042ba00040
runtest -sec 0.002
sdr 64 -tdi 000000001ba00040
runtest -sec 0.002
sdr 64 -tdi 000000003ba00040
runtest -sec 0.002
sdr 64 -tdi 0000000007a00040
runtest -sec 0.002
sdr 64 -tdi 0400000027a00040
runtest -sec 0.002
sdr 64 -tdi 1000000017a00040
runtest -sec 0.002
sdr 64 -tdi 4000000037a00040
runtest -sec 0.002
sdr 64 -tdi 000000000fa00040
runtest -sec 0.002
sdr 64 -tdi 000000012fa00040
runtest -sec 0.002
sdr 64 -tdi 000000001fa00040
runtest -sec 0.002
sdr 64 -tdi 000000003fa00040
runtest -sec 0.002
sdr 64 -tdi 0000000000600040
runtest -sec 0.002
sdr 64 -tdi 0400000020600040
runtest -sec 0.002
sdr 64 -tdi 1000000010600040
runtest -sec 0.002
sdr 64 -tdi 4000000030600040
runtest -sec 0.002
sdr 64 -tdi 0000000008600040
runtest -sec 0.002
sdr 64 -tdi 0000092928600040
runtest -sec 0.002
sdr 64 -tdi 0000000018600040
runtest -sec 0.002
sdr 64 -tdi 0000000038600040
runtest -sec 0.002
sdr 64 -tdi 0000000004600040
runtest -sec 0.002
sdr 64 -tdi 0000000024600040
runtest -sec 0.002
sdr 64 -tdi 0000000014600040
runtest -sec 0.002
sdr 64 -tdi 2088000334600040
runtest -sec 0.002
sdr 64 -tdi 800000000c600040
runtest -sec 0.002
sdr 64 -tdi 000000002c600040
runtest -sec 0.002
sdr 64 -tdi 000000101c600040
runtest -sec 0.002
sdr 64 -tdi 000000003c600040
runtest -sec 0.002
sdr 64 -tdi 0000000002600040
runtest -sec 0.002
sdr 64 -tdi 0000000022600040
runtest -sec 0.002
sdr 64 -tdi 7000000012600040
runtest -sec 0.002
sdr 64 -tdi 8000004732600040
runtest -sec 0.002
sdr 64 -tdi 000000010a600040
runtest -sec 0.002
sdr 64 -tdi 000000012a600040
runtest -sec 0.002
sdr 64 -tdi 000000001a600040
runtest -sec 0.002
sdr 64 -tdi 000008003a600040
runtest -sec 0.002
sdr 64 -tdi 0000000006600040
runtest -sec 0.002
sdr 64 -tdi 0000000026600040
runtest -sec 0.002
sdr 64 -tdi 1000000016600040
runtest -sec 0.002
sdr 64 -tdi 8000000b36600040
runtest -sec 0.002
sdr 64 -tdi 0000000d0e600040
runtest -sec 0.002
sdr 64 -tdi 000000092e600040
runtest -sec 0.002
sdr 64 -tdi 000000001e600040
runtest -sec 0.002
sdr 64 -tdi 000080013e600040
runtest -sec 0.002
sdr 64 -tdi 0000000001600040
runtest -sec 0.002
sdr 64 -tdi 0000000021600040
runtest -sec 0.002
sdr 64 -tdi 8024000011600040
runtest -sec 0.002
sdr 64 -tdi 0000118031600040
runtest -sec 0.002
sdr 64 -tdi 0000028c09600040
runtest -sec 0.002
sdr 64 -tdi 0001100029600040
runtest -sec 0.002
sdr 64 -tdi 0000000219600040
runtest -sec 0.002
sdr 64 -tdi 0000000039600040
runtest -sec 0.002
sdr 64 -tdi 0000000005600040
runtest -sec 0.002
sdr 64 -tdi 0000000025600040
runtest -sec 0.002
sdr 64 -tdi 0000000015600040
runtest -sec 0.002
sdr 64 -tdi 0000000035600040
runtest -sec 0.002
sdr 64 -tdi 000000000d600040
runtest -sec 0.002
sdr 64 -tdi 0000003e2d600040
runtest -sec 0.002
sdr 64 -tdi 000000001d600040
runtest -sec 0.002
sdr 64 -tdi 000000003d600040
runtest -sec 0.002
sdr 64 -tdi 0000000003600040
runtest -sec 0.002
sdr 64 -tdi 0000000023600040
runtest -sec 0.002
sdr 64 -tdi 0000a00013600040
runtest -sec 0.002
sdr 64 -tdi 0904800033600040
runtest -sec 0.002
sdr 64 -tdi 000000000b600040
runtest -sec 0.002
sdr 64 -tdi 000009382b600040
runtest -sec 0.002
sdr 64 -tdi 000000001b600040
runtest -sec 0.002
sdr 64 -tdi 000008003b600040
runtest -sec 0.002
sdr 64 -tdi 0000000007600040
runtest -sec 0.002
sdr 64 -tdi 0000000027600040
runtest -sec 0.002
sdr 64 -tdi 0000000017600040
runtest -sec 0.002
sdr 64 -tdi 0000000037600040
runtest -sec 0.002
sdr 64 -tdi 000100000f600040
runtest -sec 0.002
sdr 64 -tdi 000000062f600040
runtest -sec 0.002
sdr 64 -tdi 000000001f600040
runtest -sec 0.002
sdr 64 -tdi 000080013f600040
runtest -sec 0.002
sdr 64 -tdi 0000000000e00040
runtest -sec 0.002
sdr 64 -tdi 0000240020e00040
runtest -sec 0.002
sdr 64 -tdi 0000900010e00040
runtest -sec 0.002
sdr 64 -tdi 0000000030e00040
runtest -sec 0.002
sdr 64 -tdi 0004000008e00040
runtest -sec 0.002
sdr 64 -tdi 0000063028e00040
runtest -sec 0.002
sdr 64 -tdi 0000001418e00040
runtest -sec 0.002
sdr 64 -tdi 0000000038e00040
runtest -sec 0.002
sdr 64 -tdi 0000000004e00040
runtest -sec 0.002
sdr 64 -tdi 0000000024e00040
runtest -sec 0.002
sdr 64 -tdi 0000000014e00040
runtest -sec 0.002
sdr 64 -tdi 0000400034e00040
runtest -sec 0.002
sdr 64 -tdi 000000000ce00040
runtest -sec 0.002
sdr 64 -tdi 000000002ce00040
runtest -sec 0.002
sdr 64 -tdi 000000201ce00040
runtest -sec 0.002
sdr 64 -tdi 000000003ce00040
runtest -sec 0.002
sdr 64 -tdi 0000000002e00040
runtest -sec 0.002
sdr 64 -tdi 0090000022e00040
runtest -sec 0.002
sdr 64 -tdi 0240000012e00040
runtest -sec 0.002
sdr 64 -tdi 0901000032e00040
runtest -sec 0.002
sdr 64 -tdi 000000000ae00040
runtest -sec 0.002
sdr 64 -tdi 000000012ae00040
runtest -sec 0.002
sdr 64 -tdi 000000001ae00040
runtest -sec 0.002
sdr 64 -tdi 000000003ae00040
runtest -sec 0.002
sdr 64 -tdi 0000000006e00040
runtest -sec 0.002
sdr 64 -tdi 0000000026e00040
runtest -sec 0.002
sdr 64 -tdi 0000000016e00040
runtest -sec 0.002
sdr 64 -tdi 0000000036e00040
runtest -sec 0.002
sdr 64 -tdi e00000000ee00040
runtest -sec 0.002
sdr 64 -tdi 000080082ee00040
runtest -sec 0.002
sdr 64 -tdi 000000001ee00040
runtest -sec 0.002
sdr 64 -tdi 000000013ee00040
runtest -sec 0.002
sdr 64 -tdi 0000000001e00040
runtest -sec 0.002
sdr 64 -tdi 0000000021e00040
runtest -sec 0.002
sdr 64 -tdi 0001100011e00040
runtest -sec 0.002
sdr 64 -tdi 0900000031e00040
runtest -sec 0.002
sdr 64 -tdi 0000000009e00040
runtest -sec 0.002
sdr 64 -tdi 0000200029e00040
runtest -sec 0.002
sdr 64 -tdi 0000001019e00040
runtest -sec 0.002
sdr 64 -tdi 0000000039e00040
runtest -sec 0.002
sdr 64 -tdi 0000000005e00040
runtest -sec 0.002
sdr 64 -tdi 0000000025e00040
runtest -sec 0.002
sdr 64 -tdi 0000000015e00040
runtest -sec 0.002
sdr 64 -tdi 0004400035e00040
runtest -sec 0.002
sdr 64 -tdi 000000000de00040
runtest -sec 0.002
sdr 64 -tdi 0480003e2de00040
runtest -sec 0.002
sdr 64 -tdi 000000101de00040
runtest -sec 0.002
sdr 64 -tdi 000000003de00040
runtest -sec 0.002
sdr 64 -tdi 0000000003e00040
runtest -sec 0.002
sdr 64 -tdi 0000000023e00040
runtest -sec 0.002
sdr 64 -tdi 0000000013e00040
runtest -sec 0.002
sdr 64 -tdi 0000000033e00040
runtest -sec 0.002
sdr 64 -tdi 000000000be00040
runtest -sec 0.002
sdr 64 -tdi 0000093e2be00040
runtest -sec 0.002
sdr 64 -tdi 000000001be00040
runtest -sec 0.002
sdr 64 -tdi 000000003be00040
runtest -sec 0.002
sdr 64 -tdi 0000000007e00040
runtest -sec 0.002
sdr 64 -tdi 0000000027e00040
runtest -sec 0.002
sdr 64 -tdi 0000000017e00040
runtest -sec 0.002
sdr 64 -tdi 0000000037e00040
runtest -sec 0.002
sdr 64 -tdi 001100000fe00040
runtest -sec 0.002
sdr 64 -tdi 100000302fe00040
runtest -sec 0.002
sdr 64 -tdi 000000001fe00040
runtest -sec 0.002
sdr 64 -tdi 000000013fe00040
runtest -sec 0.002
sdr 64 -tdi 0000000000100040
runtest -sec 0.002
sdr 64 -tdi 0000000020100040
runtest -sec 0.002
sdr 64 -tdi 0000000010100040
runtest -sec 0.002
sdr 64 -tdi 0000000030100040
runtest -sec 0.002
sdr 64 -tdi 0000000008100040
runtest -sec 0.002
sdr 64 -tdi 0000060028100040
runtest -sec 0.002
sdr 64 -tdi 0000000518100040
runtest -sec 0.002
sdr 64 -tdi 0000000038100040
runtest -sec 0.002
sdr 64 -tdi 0000000004100040
runtest -sec 0.002
sdr 64 -tdi 0000000024100040
runtest -sec 0.002
sdr 64 -tdi 0000800014100040
runtest -sec 0.002
sdr 64 -tdi 0000000034100040
runtest -sec 0.002
sdr 64 -tdi 800000000c100040
runtest -sec 0.002
sdr 64 -tdi 0000003e2c100040
runtest -sec 0.002
sdr 64 -tdi 000000281c100040
runtest -sec 0.002
sdr 64 -tdi 000000003c100040
runtest -sec 0.002
sdr 64 -tdi 0000000002100040
runtest -sec 0.002
sdr 64 -tdi 0000000022100040
runtest -sec 0.002
sdr 64 -tdi 0000100012100040
runtest -sec 0.002
sdr 64 -tdi 0000000032100040
runtest -sec 0.002
sdr 64 -tdi 000000000a100040
runtest -sec 0.002
sdr 64 -tdi 000000382a100040
runtest -sec 0.002
sdr 64 -tdi 000000001a100040
runtest -sec 0.002
sdr 64 -tdi 000000003a100040
runtest -sec 0.002
sdr 64 -tdi 0000000006100040
runtest -sec 0.002
sdr 64 -tdi 0000000026100040
runtest -sec 0.002
sdr 64 -tdi 0000000016100040
runtest -sec 0.002
sdr 64 -tdi 0000000036100040
runtest -sec 0.002
sdr 64 -tdi 000000000e100040
runtest -sec 0.002
sdr 64 -tdi 000001012e100040
runtest -sec 0.002
sdr 64 -tdi 000000011e100040
runtest -sec 0.002
sdr 64 -tdi 000000013e100040
runtest -sec 0.002
sdr 64 -tdi 0000000001100040
runtest -sec 0.002
sdr 64 -tdi 0000000021100040
runtest -sec 0.002
sdr 64 -tdi 0000000011100040
runtest -sec 0.002
sdr 64 -tdi 0000000031100040
runtest -sec 0.002
sdr 64 -tdi 0000000009100040
runtest -sec 0.002
sdr 64 -tdi 1000080029100040
runtest -sec 0.002
sdr 64 -tdi 0000000019100040
runtest -sec 0.002
sdr 64 -tdi 0000000039100040
runtest -sec 0.002
sdr 64 -tdi 0000000005100040
runtest -sec 0.002
sdr 64 -tdi 0000000025100040
runtest -sec 0.002
sdr 64 -tdi 0002000015100040
runtest -sec 0.002
sdr 64 -tdi 0048000035100040
runtest -sec 0.002
sdr 64 -tdi 000000000d100040
runtest -sec 0.002
sdr 64 -tdi 000000002d100040
runtest -sec 0.002
sdr 64 -tdi 000000021d100040
runtest -sec 0.002
sdr 64 -tdi 000000003d100040
runtest -sec 0.002
sdr 64 -tdi 0000000003100040
runtest -sec 0.002
sdr 64 -tdi 0000000023100040
runtest -sec 0.002
sdr 64 -tdi 0010000013100040
runtest -sec 0.002
sdr 64 -tdi 0000000033100040
runtest -sec 0.002
sdr 64 -tdi 024000000b100040
runtest -sec 0.002
sdr 64 -tdi 188000012b100040
runtest -sec 0.002
sdr 64 -tdi 000000011b100040
runtest -sec 0.002
sdr 64 -tdi 000000003b100040
runtest -sec 0.002
sdr 64 -tdi 0000000007100040
runtest -sec 0.002
sdr 64 -tdi 0000000027100040
runtest -sec 0.002
sdr 64 -tdi 0000000017100040
runtest -sec 0.002
sdr 64 -tdi 0000000037100040
runtest -sec 0.002
sdr 64 -tdi 800000000f100040
runtest -sec 0.002
sdr 64 -tdi 000040082f100040
runtest -sec 0.002
sdr 64 -tdi 000000001f100040
runtest -sec 0.002
sdr 64 -tdi 000000013f100040
runtest -sec 0.002
sdr 64 -tdi 0000000000900040
runtest -sec 0.002
sdr 64 -tdi 0000000020900040
runtest -sec 0.002
sdr 64 -tdi 0000000010900040
runtest -sec 0.002
sdr 64 -tdi 0000000030900040
runtest -sec 0.002
sdr 64 -tdi 0000000008900040
runtest -sec 0.002
sdr 64 -tdi 0000100028900040
runtest -sec 0.002
sdr 64 -tdi 0000001018900040
runtest -sec 0.002
sdr 64 -tdi 0000000038900040
runtest -sec 0.002
sdr 64 -tdi 0000000004900040
runtest -sec 0.002
sdr 64 -tdi 0002000024900040
runtest -sec 0.002
sdr 64 -tdi 0000000014900040
runtest -sec 0.002
sdr 64 -tdi 2000000034900040
runtest -sec 0.002
sdr 64 -tdi 008000000c900040
runtest -sec 0.002
sdr 64 -tdi 008000002c900040
runtest -sec 0.002
sdr 64 -tdi 000000001c900040
runtest -sec 0.002
sdr 64 -tdi 000000003c900040
runtest -sec 0.002
sdr 64 -tdi 0000000002900040
runtest -sec 0.002
sdr 64 -tdi 0000800022900040
runtest -sec 0.002
sdr 64 -tdi 0000000012900040
runtest -sec 0.002
sdr 64 -tdi 8000000032900040
runtest -sec 0.002
sdr 64 -tdi 002000010a900040
runtest -sec 0.002
sdr 64 -tdi 020000012a900040
runtest -sec 0.002
sdr 64 -tdi 000000001a900040
runtest -sec 0.002
sdr 64 -tdi 000000003a900040
runtest -sec 0.002
sdr 64 -tdi 0000000006900040
runtest -sec 0.002
sdr 64 -tdi 0000000026900040
runtest -sec 0.002
sdr 64 -tdi 0000000016900040
runtest -sec 0.002
sdr 64 -tdi 8000000036900040
runtest -sec 0.002
sdr 64 -tdi 8220004d0e900040
runtest -sec 0.002
sdr 64 -tdi 000000082e900040
runtest -sec 0.002
sdr 64 -tdi 000000001e900040
runtest -sec 0.002
sdr 64 -tdi 000000013e900040
runtest -sec 0.002
sdr 64 -tdi 0000000001900040
runtest -sec 0.002
sdr 64 -tdi 0000000021900040
runtest -sec 0.002
sdr 64 -tdi 0000000011900040
runtest -sec 0.002
sdr 64 -tdi 0900000031900040
runtest -sec 0.002
sdr 64 -tdi 0000020c09900040
runtest -sec 0.002
sdr 64 -tdi 0000900029900040
runtest -sec 0.002
sdr 64 -tdi 0000004019900040
runtest -sec 0.002
sdr 64 -tdi 0000000039900040
runtest -sec 0.002
sdr 64 -tdi 0000000005900040
runtest -sec 0.002
sdr 64 -tdi 0000000025900040
runtest -sec 0.002
sdr 64 -tdi 0800000015900040
runtest -sec 0.002
sdr 64 -tdi 0000000035900040
runtest -sec 0.002
sdr 64 -tdi 002000000d900040
runtest -sec 0.002
sdr 64 -tdi 048000302d900040
runtest -sec 0.002
sdr 64 -tdi 000000001d900040
runtest -sec 0.002
sdr 64 -tdi 000000003d900040
runtest -sec 0.002
sdr 64 -tdi 0000000003900040
runtest -sec 0.002
sdr 64 -tdi 0000000023900040
runtest -sec 0.002
sdr 64 -tdi 1000000013900040
runtest -sec 0.002
sdr 64 -tdi 0000000033900040
runtest -sec 0.002
sdr 64 -tdi 008000000b900040
runtest -sec 0.002
sdr 64 -tdi 000000302b900040
runtest -sec 0.002
sdr 64 -tdi 000000001b900040
runtest -sec 0.002
sdr 64 -tdi 000000003b900040
runtest -sec 0.002
sdr 64 -tdi 0000000007900040
runtest -sec 0.002
sdr 64 -tdi 0000000027900040
runtest -sec 0.002
sdr 64 -tdi 8000800017900040
runtest -sec 0.002
sdr 64 -tdi 0002100037900040
runtest -sec 0.002
sdr 64 -tdi 800000000f900040
runtest -sec 0.002
sdr 64 -tdi 008000302f900040
runtest -sec 0.002
sdr 64 -tdi 000000001f900040
runtest -sec 0.002
sdr 64 -tdi 000000013f900040
runtest -sec 0.002
sdr 64 -tdi 0000000000500040
runtest -sec 0.002
sdr 64 -tdi 0000000020500040
runtest -sec 0.002
sdr 64 -tdi 0000200010500040
runtest -sec 0.002
sdr 64 -tdi 0000810030500040
runtest -sec 0.002
sdr 64 -tdi 0000000008500040
runtest -sec 0.002
sdr 64 -tdi 0402103028500040
runtest -sec 0.002
sdr 64 -tdi 0000000018500040
runtest -sec 0.002
sdr 64 -tdi 0000000038500040
runtest -sec 0.002
sdr 64 -tdi 0000000004500040
runtest -sec 0.002
sdr 64 -tdi 0140000024500040
runtest -sec 0.002
sdr 64 -tdi 0000000014500040
runtest -sec 0.002
sdr 64 -tdi 0000000034500040
runtest -sec 0.002
sdr 64 -tdi 000000000c500040
runtest -sec 0.002
sdr 64 -tdi 000000002c500040
runtest -sec 0.002
sdr 64 -tdi 000000001c500040
runtest -sec 0.002
sdr 64 -tdi 000000003c500040
runtest -sec 0.002
sdr 64 -tdi 0000000002500040
runtest -sec 0.002
sdr 64 -tdi 0000000022500040
runtest -sec 0.002
sdr 64 -tdi 0000000012500040
runtest -sec 0.002
sdr 64 -tdi 0c00000032500040
runtest -sec 0.002
sdr 64 -tdi 000000000a500040
runtest -sec 0.002
sdr 64 -tdi 000000002a500040
runtest -sec 0.002
sdr 64 -tdi 000000001a500040
runtest -sec 0.002
sdr 64 -tdi 000000003a500040
runtest -sec 0.002
sdr 64 -tdi 0000000006500040
runtest -sec 0.002
sdr 64 -tdi 0000000026500040
runtest -sec 0.002
sdr 64 -tdi 0000000016500040
runtest -sec 0.002
sdr 64 -tdi 0000000036500040
runtest -sec 0.002
sdr 64 -tdi 012000000e500040
runtest -sec 0.002
sdr 64 -tdi 000000002e500040
runtest -sec 0.002
sdr 64 -tdi 000000001e500040
runtest -sec 0.002
sdr 64 -tdi 000000013e500040
runtest -sec 0.002
sdr 64 -tdi 0000000001500040
runtest -sec 0.002
sdr 64 -tdi 0000000021500040
runtest -sec 0.002
sdr 64 -tdi 0000000011500040
runtest -sec 0.002
sdr 64 -tdi 0000000031500040
runtest -sec 0.002
sdr 64 -tdi 0000000009500040
runtest -sec 0.002
sdr 64 -tdi 0000000029500040
runtest -sec 0.002
sdr 64 -tdi 0000004019500040
runtest -sec 0.002
sdr 64 -tdi 0000000039500040
runtest -sec 0.002
sdr 64 -tdi 0000000005500040
runtest -sec 0.002
sdr 64 -tdi 0000000025500040
runtest -sec 0.002
sdr 64 -tdi 0000000015500040
runtest -sec 0.002
sdr 64 -tdi 0000000035500040
runtest -sec 0.002
sdr 64 -tdi 000000000d500040
runtest -sec 0.002
sdr 64 -tdi 800000002d500040
runtest -sec 0.002
sdr 64 -tdi 000000011d500040
runtest -sec 0.002
sdr 64 -tdi 000000003d500040
runtest -sec 0.002
sdr 64 -tdi 0000000003500040
runtest -sec 0.002
sdr 64 -tdi 0000000023500040
runtest -sec 0.002
sdr 64 -tdi 0000000013500040
runtest -sec 0.002
sdr 64 -tdi 0002400033500040
runtest -sec 0.002
sdr 64 -tdi 000000000b500040
runtest -sec 0.002
sdr 64 -tdi 000000002b500040
runtest -sec 0.002
sdr 64 -tdi 000000001b500040
runtest -sec 0.002
sdr 64 -tdi 000000003b500040
runtest -sec 0.002
sdr 64 -tdi 0000000007500040
runtest -sec 0.002
sdr 64 -tdi 0000000027500040
runtest -sec 0.002
sdr 64 -tdi 0000100017500040
runtest -sec 0.002
sdr 64 -tdi 0000c00037500040
runtest -sec 0.002
sdr 64 -tdi 000000000f500040
runtest -sec 0.002
sdr 64 -tdi 000000002f500040
runtest -sec 0.002
sdr 64 -tdi 000000001f500040
runtest -sec 0.002
sdr 64 -tdi 000000013f500040
runtest -sec 0.002
sdr 64 -tdi 0000000000d00040
runtest -sec 0.002
sdr 64 -tdi 0000000020d00040
runtest -sec 0.002
sdr 64 -tdi 0000400010d00040
runtest -sec 0.002
sdr 64 -tdi 1200000030d00040
runtest -sec 0.002
sdr 64 -tdi 0000000008d00040
runtest -sec 0.002
sdr 64 -tdi 0000000028d00040
runtest -sec 0.002
sdr 64 -tdi 0000004018d00040
runtest -sec 0.002
sdr 64 -tdi 0000000038d00040
runtest -sec 0.002
sdr 64 -tdi 0000000004d00040
runtest -sec 0.002
sdr 64 -tdi 0018000024d00040
runtest -sec 0.002
sdr 64 -tdi 0008000014d00040
runtest -sec 0.002
sdr 64 -tdi 0000c00034d00040
runtest -sec 0.002
sdr 64 -tdi 001000000cd00040
runtest -sec 0.002
sdr 64 -tdi 000089082cd00040
runtest -sec 0.002
sdr 64 -tdi 000000011cd00040
runtest -sec 0.002
sdr 64 -tdi 000000003cd00040
runtest -sec 0.002
sdr 64 -tdi 0000000002d00040
runtest -sec 0.002
sdr 64 -tdi 0081000022d00040
runtest -sec 0.002
sdr 64 -tdi 0004000012d00040
runtest -sec 0.002
sdr 64 -tdi 0000000032d00040
runtest -sec 0.002
sdr 64 -tdi 000100000ad00040
runtest -sec 0.002
sdr 64 -tdi 1000103a2ad00040
runtest -sec 0.002
sdr 64 -tdi 000000001ad00040
runtest -sec 0.002
sdr 64 -tdi 000000003ad00040
runtest -sec 0.002
sdr 64 -tdi 0000000006d00040
runtest -sec 0.002
sdr 64 -tdi 0000000026d00040
runtest -sec 0.002
sdr 64 -tdi 0000000016d00040
runtest -sec 0.002
sdr 64 -tdi 0000400036d00040
runtest -sec 0.002
sdr 64 -tdi 000000000ed00040
runtest -sec 0.002
sdr 64 -tdi 000000342ed00040
runtest -sec 0.002
sdr 64 -tdi 000000001ed00040
runtest -sec 0.002
sdr 64 -tdi 000000013ed00040
runtest -sec 0.002
sdr 64 -tdi 0000000001d00040
runtest -sec 0.002
sdr 64 -tdi 0000000021d00040
runtest -sec 0.002
sdr 64 -tdi 0000000011d00040
runtest -sec 0.002
sdr 64 -tdi 0001000031d00040
runtest -sec 0.002
sdr 64 -tdi 0000000009d00040
runtest -sec 0.002
sdr 64 -tdi 0044960029d00040
runtest -sec 0.002
sdr 64 -tdi 0000004019d00040
runtest -sec 0.002
sdr 64 -tdi 0000000039d00040
runtest -sec 0.002
sdr 64 -tdi 0000000005d00040
runtest -sec 0.002
sdr 64 -tdi 0000000025d00040
runtest -sec 0.002
sdr 64 -tdi 0000000015d00040
runtest -sec 0.002
sdr 64 -tdi 0000000035d00040
runtest -sec 0.002
sdr 64 -tdi 000000000dd00040
runtest -sec 0.002
sdr 64 -tdi 100000002dd00040
runtest -sec 0.002
sdr 64 -tdi 000000011dd00040
runtest -sec 0.002
sdr 64 -tdi 001200003dd00040
runtest -sec 0.002
sdr 64 -tdi 0000000003d00040
runtest -sec 0.002
sdr 64 -tdi 0000000023d00040
runtest -sec 0.002
sdr 64 -tdi 0000000013d00040
runtest -sec 0.002
sdr 64 -tdi 0050000033d00040
runtest -sec 0.002
sdr 64 -tdi 000000000bd00040
runtest -sec 0.002
sdr 64 -tdi 000000002bd00040
runtest -sec 0.002
sdr 64 -tdi 000000001bd00040
runtest -sec 0.002
sdr 64 -tdi 000000003bd00040
runtest -sec 0.002
sdr 64 -tdi 0000000007d00040
runtest -sec 0.002
sdr 64 -tdi 0000000027d00040
runtest -sec 0.002
sdr 64 -tdi 0000000017d00040
runtest -sec 0.002
sdr 64 -tdi 0000000037d00040
runtest -sec 0.002
sdr 64 -tdi 000400000fd00040
runtest -sec 0.002
sdr 64 -tdi 000000002fd00040
runtest -sec 0.002
sdr 64 -tdi 000000001fd00040
runtest -sec 0.002
sdr 64 -tdi 000000013fd00040
runtest -sec 0.002
sdr 64 -tdi 0000000000300040
runtest -sec 0.002
sdr 64 -tdi 0000000020300040
runtest -sec 0.002
sdr 64 -tdi 0000000010300040
runtest -sec 0.002
sdr 64 -tdi 0000000030300040
runtest -sec 0.002
sdr 64 -tdi 0002000008300040
runtest -sec 0.002
sdr 64 -tdi 1000000028300040
runtest -sec 0.002
sdr 64 -tdi 0000004118300040
runtest -sec 0.002
sdr 64 -tdi 0000000038300040
runtest -sec 0.002
sdr 64 -tdi 0000000004300040
runtest -sec 0.002
sdr 64 -tdi 0000000024300040
runtest -sec 0.002
sdr 64 -tdi 0000000014300040
runtest -sec 0.002
sdr 64 -tdi 0000000034300040
runtest -sec 0.002
sdr 64 -tdi 000000000c300040
runtest -sec 0.002
sdr 64 -tdi 000000002c300040
runtest -sec 0.002
sdr 64 -tdi 000000001c300040
runtest -sec 0.002
sdr 64 -tdi 000000003c300040
runtest -sec 0.002
sdr 64 -tdi 0000000002300040
runtest -sec 0.002
sdr 64 -tdi 0000000022300040
runtest -sec 0.002
sdr 64 -tdi 0000000012300040
runtest -sec 0.002
sdr 64 -tdi 1100000032300040
runtest -sec 0.002
sdr 64 -tdi 000000000a300040
runtest -sec 0.002
sdr 64 -tdi 000000002a300040
runtest -sec 0.002
sdr 64 -tdi 000000001a300040
runtest -sec 0.002
sdr 64 -tdi 000000003a300040
runtest -sec 0.002
sdr 64 -tdi 0000000006300040
runtest -sec 0.002
sdr 64 -tdi 0000000026300040
runtest -sec 0.002
sdr 64 -tdi 0000000016300040
runtest -sec 0.002
sdr 64 -tdi 0000000036300040
runtest -sec 0.002
sdr 64 -tdi 000000000e300040
runtest -sec 0.002
sdr 64 -tdi 000000002e300040
runtest -sec 0.002
sdr 64 -tdi 000000001e300040
runtest -sec 0.002
sdr 64 -tdi 000000013e300040
runtest -sec 0.002
sdr 64 -tdi 0000000001300040
runtest -sec 0.002
sdr 64 -tdi 0000000021300040
runtest -sec 0.002
sdr 64 -tdi 0000000011300040
runtest -sec 0.002
sdr 64 -tdi 0000000031300040
runtest -sec 0.002
sdr 64 -tdi 0000000009300040
runtest -sec 0.002
sdr 64 -tdi 0000000029300040
runtest -sec 0.002
sdr 64 -tdi 0000004019300040
runtest -sec 0.002
sdr 64 -tdi 0000000039300040
runtest -sec 0.002
sdr 64 -tdi 0000000005300040
runtest -sec 0.002
sdr 64 -tdi 0000000025300040
runtest -sec 0.002
sdr 64 -tdi 0000000015300040
runtest -sec 0.002
sdr 64 -tdi 0000000035300040
runtest -sec 0.002
sdr 64 -tdi 000000000d300040
runtest -sec 0.002
sdr 64 -tdi 000000002d300040
runtest -sec 0.002
sdr 64 -tdi 000000001d300040
runtest -sec 0.002
sdr 64 -tdi 000000003d300040
runtest -sec 0.002
sdr 64 -tdi 0000000003300040
runtest -sec 0.002
sdr 64 -tdi 0000000023300040
runtest -sec 0.002
sdr 64 -tdi 0000000013300040
runtest -sec 0.002
sdr 64 -tdi 0a00000033300040
runtest -sec 0.002
sdr 64 -tdi 000000000b300040
runtest -sec 0.002
sdr 64 -tdi 000000002b300040
runtest -sec 0.002
sdr 64 -tdi 000000001b300040
runtest -sec 0.002
sdr 64 -tdi 000000003b300040
runtest -sec 0.002
sdr 64 -tdi 0000000007300040
runtest -sec 0.002
sdr 64 -tdi 0008000027300040
runtest -sec 0.002
sdr 64 -tdi 0008000017300040
runtest -sec 0.002
sdr 64 -tdi 0000000037300040
runtest -sec 0.002
sdr 64 -tdi 080400000f300040
runtest -sec 0.002
sdr 64 -tdi 002400002f300040
runtest -sec 0.002
sdr 64 -tdi 000000001f300040
runtest -sec 0.002
sdr 64 -tdi 000000013f300040
runtest -sec 0.002
sdr 64 -tdi 0000000000b00040
runtest -sec 0.002
sdr 64 -tdi 0001000020b00040
runtest -sec 0.002
sdr 64 -tdi 0004000010b00040
runtest -sec 0.002
sdr 64 -tdi 0000000030b00040
runtest -sec 0.002
sdr 64 -tdi 4002000008b00040
runtest -sec 0.002
sdr 64 -tdi 0000000028b00040
runtest -sec 0.002
sdr 64 -tdi 0000004018b00040
runtest -sec 0.002
sdr 64 -tdi 0000000838b00040
runtest -sec 0.002
sdr 64 -tdi 0000000004b00040
runtest -sec 0.002
sdr 64 -tdi 0000000024b00040
runtest -sec 0.002
sdr 64 -tdi 0040000014b00040
runtest -sec 0.002
sdr 64 -tdi 0008000034b00040
runtest -sec 0.002
sdr 64 -tdi 000000000cb00040
runtest -sec 0.002
sdr 64 -tdi 000000002cb00040
runtest -sec 0.002
sdr 64 -tdi 000000001cb00040
runtest -sec 0.002
sdr 64 -tdi 000000003cb00040
runtest -sec 0.002
sdr 64 -tdi 0000000002b00040
runtest -sec 0.002
sdr 64 -tdi 0000000022b00040
runtest -sec 0.002
sdr 64 -tdi 0412000012b00040
runtest -sec 0.002
sdr 64 -tdi 1140000032b00040
runtest -sec 0.002
sdr 64 -tdi 000000000ab00040
runtest -sec 0.002
sdr 64 -tdi 000000002ab00040
runtest -sec 0.002
sdr 64 -tdi 000000001ab00040
runtest -sec 0.002
sdr 64 -tdi 000000003ab00040
runtest -sec 0.002
sdr 64 -tdi 0000000006b00040
runtest -sec 0.002
sdr 64 -tdi 0000000026b00040
runtest -sec 0.002
sdr 64 -tdi 0000000016b00040
runtest -sec 0.002
sdr 64 -tdi 0000000036b00040
runtest -sec 0.002
sdr 64 -tdi 000000000eb00040
runtest -sec 0.002
sdr 64 -tdi 000000002eb00040
runtest -sec 0.002
sdr 64 -tdi 000000011eb00040
runtest -sec 0.002
sdr 64 -tdi 000000203eb00040
runtest -sec 0.002
sdr 64 -tdi 0000000001b00040
runtest -sec 0.002
sdr 64 -tdi 0000000021b00040
runtest -sec 0.002
sdr 64 -tdi 0000000011b00040
runtest -sec 0.002
sdr 64 -tdi 0000000031b00040
runtest -sec 0.002
sdr 64 -tdi 0000000009b00040
runtest -sec 0.002
sdr 64 -tdi 1000000029b00040
runtest -sec 0.002
sdr 64 -tdi 0000004019b00040
runtest -sec 0.002
sdr 64 -tdi 0000000039b00040
runtest -sec 0.002
sdr 64 -tdi 0000000005b00040
runtest -sec 0.002
sdr 64 -tdi 0000000025b00040
runtest -sec 0.002
sdr 64 -tdi 4040000015b00040
runtest -sec 0.002
sdr 64 -tdi 0000000035b00040
runtest -sec 0.002
sdr 64 -tdi 000000000db00040
runtest -sec 0.002
sdr 64 -tdi 000001302db00040
runtest -sec 0.002
sdr 64 -tdi 000000001db00040
runtest -sec 0.002
sdr 64 -tdi 000000003db00040
runtest -sec 0.002
sdr 64 -tdi 0000000003b00040
runtest -sec 0.002
sdr 64 -tdi 0000000023b00040
runtest -sec 0.002
sdr 64 -tdi 2400000013b00040
runtest -sec 0.002
sdr 64 -tdi 0000065033b00040
runtest -sec 0.002
sdr 64 -tdi 000000000bb00040
runtest -sec 0.002
sdr 64 -tdi 000008372bb00040
runtest -sec 0.002
sdr 64 -tdi 000000001bb00040
runtest -sec 0.002
sdr 64 -tdi 000000003bb00040
runtest -sec 0.002
sdr 64 -tdi 0000000007b00040
runtest -sec 0.002
sdr 64 -tdi 0000000027b00040
runtest -sec 0.002
sdr 64 -tdi 6000000017b00040
runtest -sec 0.002
sdr 64 -tdi 0000204337b00040
runtest -sec 0.002
sdr 64 -tdi 000000000fb00040
runtest -sec 0.002
sdr 64 -tdi 000000302fb00040
runtest -sec 0.002
sdr 64 -tdi 000000001fb00040
runtest -sec 0.002
sdr 64 -tdi 000a00003fb00040
runtest -sec 0.002
sdr 64 -tdi 0000000000700040
runtest -sec 0.002
sdr 64 -tdi 0000000020700040
runtest -sec 0.002
sdr 64 -tdi 0000000010700040
runtest -sec 0.002
sdr 64 -tdi 1100028330700040
runtest -sec 0.002
sdr 64 -tdi 0000000008700040
runtest -sec 0.002
sdr 64 -tdi 0002188828700040
runtest -sec 0.002
sdr 64 -tdi 0000004018700040
runtest -sec 0.002
sdr 64 -tdi 0000000038700040
runtest -sec 0.002
sdr 64 -tdi 0000000004700040
runtest -sec 0.002
sdr 64 -tdi 0000000024700040
runtest -sec 0.002
sdr 64 -tdi 0200000014700040
runtest -sec 0.002
sdr 64 -tdi 0800000034700040
runtest -sec 0.002
sdr 64 -tdi 200000000c700040
runtest -sec 0.002
sdr 64 -tdi 800000002c700040
runtest -sec 0.002
sdr 64 -tdi 000000001c700040
runtest -sec 0.002
sdr 64 -tdi 000000003c700040
runtest -sec 0.002
sdr 64 -tdi 0000000002700040
runtest -sec 0.002
sdr 64 -tdi 1000000022700040
runtest -sec 0.002
sdr 64 -tdi 4200000012700040
runtest -sec 0.002
sdr 64 -tdi 0800000032700040
runtest -sec 0.002
sdr 64 -tdi 200000010a700040
runtest -sec 0.002
sdr 64 -tdi 800000042a700040
runtest -sec 0.002
sdr 64 -tdi 000000001a700040
runtest -sec 0.002
sdr 64 -tdi 000000003a700040
runtest -sec 0.002
sdr 64 -tdi 0000000006700040
runtest -sec 0.002
sdr 64 -tdi 0400000026700040
runtest -sec 0.002
sdr 64 -tdi 1000000016700040
runtest -sec 0.002
sdr 64 -tdi 4000000036700040
runtest -sec 0.002
sdr 64 -tdi 000000000e700040
runtest -sec 0.002
sdr 64 -tdi 000000012e700040
runtest -sec 0.002
sdr 64 -tdi 000000001e700040
runtest -sec 0.002
sdr 64 -tdi 000000003e700040
runtest -sec 0.002
sdr 64 -tdi 0000000001700040
runtest -sec 0.002
sdr 64 -tdi 0400000021700040
runtest -sec 0.002
sdr 64 -tdi 1000000011700040
runtest -sec 0.002
sdr 64 -tdi 4000000031700040
runtest -sec 0.002
sdr 64 -tdi 0000000009700040
runtest -sec 0.002
sdr 64 -tdi 0000000129700040
runtest -sec 0.002
sdr 64 -tdi 0000000019700040
runtest -sec 0.002
sdr 64 -tdi 0000000039700040
runtest -sec 0.002
sdr 64 -tdi 0000000005700040
runtest -sec 0.002
sdr 64 -tdi 4000000025700040
runtest -sec 0.002
sdr 64 -tdi 0000080015700040
runtest -sec 0.002
sdr 64 -tdi 0000000035700040
runtest -sec 0.002
sdr 64 -tdi 000000000d700040
runtest -sec 0.002
sdr 64 -tdi 000000002d700040
runtest -sec 0.002
sdr 64 -tdi 000000001d700040
runtest -sec 0.002
sdr 64 -tdi 000001403d700040
runtest -sec 0.002
sdr 64 -tdi 0000000003700040
runtest -sec 0.002
sdr 64 -tdi 9400000023700040
runtest -sec 0.002
sdr 64 -tdi 0000004013700040
runtest -sec 0.002
sdr 64 -tdi 0000000033700040
runtest -sec 0.002
sdr 64 -tdi 000000000b700040
runtest -sec 0.002
sdr 64 -tdi 000000002b700040
runtest -sec 0.002
sdr 64 -tdi 000000001b700040
runtest -sec 0.002
sdr 64 -tdi 000000003b700040
runtest -sec 0.002
sdr 64 -tdi 0000000007700040
runtest -sec 0.002
sdr 64 -tdi c800000027700040
runtest -sec 0.002
sdr 64 -tdi 0000000817700040
runtest -sec 0.002
sdr 64 -tdi 0000000037700040
runtest -sec 0.002
sdr 64 -tdi 000000000f700040
runtest -sec 0.002
sdr 64 -tdi 000000002f700040
runtest -sec 0.002
sdr 64 -tdi 000000001f700040
runtest -sec 0.002
sdr 64 -tdi 000000013f700040
runtest -sec 0.002
sdr 64 -tdi 0000000000f00040
runtest -sec 0.002
sdr 64 -tdi e000000020f00040
runtest -sec 0.002
sdr 64 -tdi 0000029010f00040
runtest -sec 0.002
sdr 64 -tdi 0000000030f00040
runtest -sec 0.002
sdr 64 -tdi 0000000008f00040
runtest -sec 0.002
sdr 64 -tdi 0000000028f00040
runtest -sec 0.002
sdr 64 -tdi 0000004018f00040
runtest -sec 0.002
sdr 64 -tdi 0000000038f00040
runtest -sec 0.002
sdr 64 -tdi 0000000004f00040
runtest -sec 0.002
sdr 64 -tdi 9000000024f00040
runtest -sec 0.002
sdr 64 -tdi 0000024014f00040
runtest -sec 0.002
sdr 64 -tdi 0000000334f00040
runtest -sec 0.002
sdr 64 -tdi 0080000c0cf00040
runtest -sec 0.002
sdr 64 -tdi 048000002cf00040
runtest -sec 0.002
sdr 64 -tdi 000000001cf00040
runtest -sec 0.002
sdr 64 -tdi 000000003cf00040
runtest -sec 0.002
sdr 64 -tdi 0000000002f00040
runtest -sec 0.002
sdr 64 -tdi 6000000022f00040
runtest -sec 0.002
sdr 64 -tdi 7000001112f00040
runtest -sec 0.002
sdr 64 -tdi c000008b32f00040
runtest -sec 0.002
sdr 64 -tdi 0040018d0af00040
runtest -sec 0.002
sdr 64 -tdi 000000002af00040
runtest -sec 0.002
sdr 64 -tdi 000000001af00040
runtest -sec 0.002
sdr 64 -tdi 000000003af00040
runtest -sec 0.002
sdr 64 -tdi 0000000006f00040
runtest -sec 0.002
sdr 64 -tdi 9800000026f00040
runtest -sec 0.002
sdr 64 -tdi 0002009016f00040
runtest -sec 0.002
sdr 64 -tdi 0000080b36f00040
runtest -sec 0.002
sdr 64 -tdi 0000002c0ef00040
runtest -sec 0.002
sdr 64 -tdi 000000002ef00040
runtest -sec 0.002
sdr 64 -tdi 000000001ef00040
runtest -sec 0.002
sdr 64 -tdi 000000013ef00040
runtest -sec 0.002
sdr 64 -tdi 0000000001f00040
runtest -sec 0.002
sdr 64 -tdi 8000000021f00040
runtest -sec 0.002
sdr 64 -tdi 8020005011f00040
runtest -sec 0.002
sdr 64 -tdi 0028028031f00040
runtest -sec 0.002
sdr 64 -tdi 00002a0209f00040
runtest -sec 0.002
sdr 64 -tdi 0000000029f00040
runtest -sec 0.002
sdr 64 -tdi 0000004019f00040
runtest -sec 0.002
sdr 64 -tdi 0000000039f00040
runtest -sec 0.002
sdr 64 -tdi 0000000005f00040
runtest -sec 0.002
sdr 64 -tdi 0000000025f00040
runtest -sec 0.002
sdr 64 -tdi 0001000015f00040
runtest -sec 0.002
sdr 64 -tdi 0400000035f00040
runtest -sec 0.002
sdr 64 -tdi 000000000df00040
runtest -sec 0.002
sdr 64 -tdi 000000002df00040
runtest -sec 0.002
sdr 64 -tdi 000000001df00040
runtest -sec 0.002
sdr 64 -tdi 000000003df00040
runtest -sec 0.002
sdr 64 -tdi 0000000003f00040
runtest -sec 0.002
sdr 64 -tdi 00a0000023f00040
runtest -sec 0.002
sdr 64 -tdi 0000200013f00040
runtest -sec 0.002
sdr 64 -tdi 0800000033f00040
runtest -sec 0.002
sdr 64 -tdi 000000000bf00040
runtest -sec 0.002
sdr 64 -tdi 050000002bf00040
runtest -sec 0.002
sdr 64 -tdi 000000001bf00040
runtest -sec 0.002
sdr 64 -tdi 000000003bf00040
runtest -sec 0.002
sdr 64 -tdi 0000000007f00040
runtest -sec 0.002
sdr 64 -tdi 0000000027f00040
runtest -sec 0.002
sdr 64 -tdi 0000000017f00040
runtest -sec 0.002
sdr 64 -tdi 0000000037f00040
runtest -sec 0.002
sdr 64 -tdi 000000000ff00040
runtest -sec 0.002
sdr 64 -tdi 000000002ff00040
runtest -sec 0.002
sdr 64 -tdi 000000001ff00040
runtest -sec 0.002
sdr 64 -tdi 000000013ff00040
runtest -sec 0.002
sdr 64 -tdi 0000000000080040
runtest -sec 0.002
sdr 64 -tdi 0000000020080040
runtest -sec 0.002
sdr 64 -tdi 0000000010080040
runtest -sec 0.002
sdr 64 -tdi 0000000030080040
runtest -sec 0.002
sdr 64 -tdi 0000000008080040
runtest -sec 0.002
sdr 64 -tdi 0000000028080040
runtest -sec 0.002
sdr 64 -tdi 0000004018080040
runtest -sec 0.002
sdr 64 -tdi 0000000038080040
runtest -sec 0.002
sdr 64 -tdi 0000000004080040
runtest -sec 0.002
sdr 64 -tdi 0000000024080040
runtest -sec 0.002
sdr 64 -tdi 0000000014080040
runtest -sec 0.002
sdr 64 -tdi 0000000034080040
runtest -sec 0.002
sdr 64 -tdi 000000000c080040
runtest -sec 0.002
sdr 64 -tdi 000000002c080040
runtest -sec 0.002
sdr 64 -tdi 000000001c080040
runtest -sec 0.002
sdr 64 -tdi 000000003c080040
runtest -sec 0.002
sdr 64 -tdi 0000000002080040
runtest -sec 0.002
sdr 64 -tdi 0000000022080040
runtest -sec 0.002
sdr 64 -tdi 0000000012080040
runtest -sec 0.002
sdr 64 -tdi 0000000032080040
runtest -sec 0.002
sdr 64 -tdi 000000000a080040
runtest -sec 0.002
sdr 64 -tdi 000000002a080040
runtest -sec 0.002
sdr 64 -tdi 000000001a080040
runtest -sec 0.002
sdr 64 -tdi 000000003a080040
runtest -sec 0.002
sdr 64 -tdi 0000000006080040
runtest -sec 0.002
sdr 64 -tdi 0000000026080040
runtest -sec 0.002
sdr 64 -tdi 0000000016080040
runtest -sec 0.002
sdr 64 -tdi 0201000036080040
runtest -sec 0.002
sdr 64 -tdi 080400000e080040
runtest -sec 0.002
sdr 64 -tdi 000000002e080040
runtest -sec 0.002
sdr 64 -tdi 000000001e080040
runtest -sec 0.002
sdr 64 -tdi 000000003e080040
runtest -sec 0.002
sdr 64 -tdi 0000000001080040
runtest -sec 0.002
sdr 64 -tdi 0000000021080040
runtest -sec 0.002
sdr 64 -tdi 0000000011080040
runtest -sec 0.002
sdr 64 -tdi 1000800031080040
runtest -sec 0.002
sdr 64 -tdi 4002000009080040
runtest -sec 0.002
sdr 64 -tdi 0000000029080040
runtest -sec 0.002
sdr 64 -tdi 0000004019080040
runtest -sec 0.002
sdr 64 -tdi 0000000039080040
runtest -sec 0.002
sdr 64 -tdi 0000000005080040
runtest -sec 0.002
sdr 64 -tdi 0000000025080040
runtest -sec 0.002
sdr 64 -tdi 0000000015080040
runtest -sec 0.002
sdr 64 -tdi 0000000035080040
runtest -sec 0.002
sdr 64 -tdi 000400000d080040
runtest -sec 0.002
sdr 64 -tdi 000000002d080040
runtest -sec 0.002
sdr 64 -tdi 000000001d080040
runtest -sec 0.002
sdr 64 -tdi 000000003d080040
runtest -sec 0.002
sdr 64 -tdi 0000000003080040
runtest -sec 0.002
sdr 64 -tdi 0000000023080040
runtest -sec 0.002
sdr 64 -tdi 0000900013080040
runtest -sec 0.002
sdr 64 -tdi 0000000033080040
runtest -sec 0.002
sdr 64 -tdi 000200000b080040
runtest -sec 0.002
sdr 64 -tdi 100000002b080040
runtest -sec 0.002
sdr 64 -tdi 000000011b080040
runtest -sec 0.002
sdr 64 -tdi 000000003b080040
runtest -sec 0.002
sdr 64 -tdi 0000000007080040
runtest -sec 0.002
sdr 64 -tdi 0000000027080040
runtest -sec 0.002
sdr 64 -tdi 0002000017080040
runtest -sec 0.002
sdr 64 -tdi 0008000037080040
runtest -sec 0.002
sdr 64 -tdi 000000000f080040
runtest -sec 0.002
sdr 64 -tdi 000000002f080040
runtest -sec 0.002
sdr 64 -tdi 000000001f080040
runtest -sec 0.002
sdr 64 -tdi 000000013f080040
runtest -sec 0.002
sdr 64 -tdi 0000000000880040
runtest -sec 0.002
sdr 64 -tdi 0000000020880040
runtest -sec 0.002
sdr 64 -tdi 0010000010880040
runtest -sec 0.002
sdr 64 -tdi 0040000030880040
runtest -sec 0.002
sdr 64 -tdi 0000000008880040
runtest -sec 0.002
sdr 64 -tdi 0000000028880040
runtest -sec 0.002
sdr 64 -tdi 0000004018880040
runtest -sec 0.002
sdr 64 -tdi 0000000038880040
runtest -sec 0.002
sdr 64 -tdi 0000000004880040
runtest -sec 0.002
sdr 64 -tdi 0000000024880040
runtest -sec 0.002
sdr 64 -tdi 0000000014880040
runtest -sec 0.002
sdr 64 -tdi 0000000034880040
runtest -sec 0.002
sdr 64 -tdi 600000000c880040
runtest -sec 0.002
sdr 64 -tdi 000000002c880040
runtest -sec 0.002
sdr 64 -tdi 000000001c880040
runtest -sec 0.002
sdr 64 -tdi 000000003c880040
runtest -sec 0.002
sdr 64 -tdi 0000000002880040
runtest -sec 0.002
sdr 64 -tdi 0000000022880040
runtest -sec 0.002
sdr 64 -tdi 0000000012880040
runtest -sec 0.002
sdr 64 -tdi 0000000032880040
runtest -sec 0.002
sdr 64 -tdi 000000000a880040
runtest -sec 0.002
sdr 64 -tdi 100000002a880040
runtest -sec 0.002
sdr 64 -tdi 000000011a880040
runtest -sec 0.002
sdr 64 -tdi 000000003a880040
runtest -sec 0.002
sdr 64 -tdi 0000000006880040
runtest -sec 0.002
sdr 64 -tdi 0000000026880040
runtest -sec 0.002
sdr 64 -tdi 0400000016880040
runtest -sec 0.002
sdr 64 -tdi 0000000036880040
runtest -sec 0.002
sdr 64 -tdi 040000000e880040
runtest -sec 0.002
sdr 64 -tdi 000000002e880040
runtest -sec 0.002
sdr 64 -tdi 000000001e880040
runtest -sec 0.002
sdr 64 -tdi 000000003e880040
runtest -sec 0.002
sdr 64 -tdi 0000000001880040
runtest -sec 0.002
sdr 64 -tdi 0000000021880040
runtest -sec 0.002
sdr 64 -tdi 0100000011880040
runtest -sec 0.002
sdr 64 -tdi 0000000031880040
runtest -sec 0.002
sdr 64 -tdi 4000000009880040
runtest -sec 0.002
sdr 64 -tdi 0000000029880040
runtest -sec 0.002
sdr 64 -tdi 0000004019880040
runtest -sec 0.002
sdr 64 -tdi 0000002439880040
runtest -sec 0.002
sdr 64 -tdi 0000000005880040
runtest -sec 0.002
sdr 64 -tdi 0000000025880040
runtest -sec 0.002
sdr 64 -tdi 0000000015880040
runtest -sec 0.002
sdr 64 -tdi 0000000035880040
runtest -sec 0.002
sdr 64 -tdi 0000801c0d880040
runtest -sec 0.002
sdr 64 -tdi 000000002d880040
runtest -sec 0.002
sdr 64 -tdi 000000001d880040
runtest -sec 0.002
sdr 64 -tdi 000000003d880040
runtest -sec 0.002
sdr 64 -tdi 0000000003880040
runtest -sec 0.002
sdr 64 -tdi 0000000023880040
runtest -sec 0.002
sdr 64 -tdi 0012000013880040
runtest -sec 0.002
sdr 64 -tdi 0002400033880040
runtest -sec 0.002
sdr 64 -tdi 0000050c0b880040
runtest -sec 0.002
sdr 64 -tdi 000000002b880040
runtest -sec 0.002
sdr 64 -tdi 000000001b880040
runtest -sec 0.002
sdr 64 -tdi 000000003b880040
runtest -sec 0.002
sdr 64 -tdi 0000000007880040
runtest -sec 0.002
sdr 64 -tdi 0000000027880040
runtest -sec 0.002
sdr 64 -tdi 0010500017880040
runtest -sec 0.002
sdr 64 -tdi 0000000037880040
runtest -sec 0.002
sdr 64 -tdi 000081090f880040
runtest -sec 0.002
sdr 64 -tdi 000000002f880040
runtest -sec 0.002
sdr 64 -tdi 000000001f880040
runtest -sec 0.002
sdr 64 -tdi 000a00003f880040
runtest -sec 0.002
sdr 64 -tdi 0000000000480040
runtest -sec 0.002
sdr 64 -tdi 0000000020480040
runtest -sec 0.002
sdr 64 -tdi 0002000010480040
runtest -sec 0.002
sdr 64 -tdi 0000000030480040
runtest -sec 0.002
sdr 64 -tdi 0000050c08480040
runtest -sec 0.002
sdr 64 -tdi 0000000028480040
runtest -sec 0.002
sdr 64 -tdi 0000000018480040
runtest -sec 0.002
sdr 64 -tdi 0000000238480040
runtest -sec 0.002
sdr 64 -tdi 0000000004480040
runtest -sec 0.002
sdr 64 -tdi 0000000024480040
runtest -sec 0.002
sdr 64 -tdi 4000000014480040
runtest -sec 0.002
sdr 64 -tdi 1800000034480040
runtest -sec 0.002
sdr 64 -tdi 008982420c480040
runtest -sec 0.002
sdr 64 -tdi 000000002c480040
runtest -sec 0.002
sdr 64 -tdi 000000081c480040
runtest -sec 0.002
sdr 64 -tdi 000000003c480040
runtest -sec 0.002
sdr 64 -tdi 0000000002480040
runtest -sec 0.002
sdr 64 -tdi 0000000022480040
runtest -sec 0.002
sdr 64 -tdi 2000000012480040
runtest -sec 0.002
sdr 64 -tdi 8000069032480040
runtest -sec 0.002
sdr 64 -tdi 0020040f0a480040
runtest -sec 0.002
sdr 64 -tdi 000000002a480040
runtest -sec 0.002
sdr 64 -tdi 000000001a480040
runtest -sec 0.002
sdr 64 -tdi 000000003a480040
runtest -sec 0.002
sdr 64 -tdi 0000000006480040
runtest -sec 0.002
sdr 64 -tdi 0000000026480040
runtest -sec 0.002
sdr 64 -tdi 6000000016480040
runtest -sec 0.002
sdr 64 -tdi 0000209336480040
runtest -sec 0.002
sdr 64 -tdi 000021090e480040
runtest -sec 0.002
sdr 64 -tdi 000000002e480040
runtest -sec 0.002
sdr 64 -tdi 000000001e480040
runtest -sec 0.002
sdr 64 -tdi 000000043e480040
runtest -sec 0.002
sdr 64 -tdi 0000000001480040
runtest -sec 0.002
sdr 64 -tdi 0000000021480040
runtest -sec 0.002
sdr 64 -tdi 0000000011480040
runtest -sec 0.002
sdr 64 -tdi 0000020331480040
runtest -sec 0.002
sdr 64 -tdi 0000090009480040
runtest -sec 0.002
sdr 64 -tdi 0000000029480040
runtest -sec 0.002
sdr 64 -tdi 0000000419480040
runtest -sec 0.002
sdr 64 -tdi 0000000039480040
runtest -sec 0.002
sdr 64 -tdi 0000000005480040
runtest -sec 0.002
sdr 64 -tdi 0000000025480040
runtest -sec 0.002
sdr 64 -tdi 0000200015480040
runtest -sec 0.002
sdr 64 -tdi 0000000035480040
runtest -sec 0.002
sdr 64 -tdi 000000000d480040
runtest -sec 0.002
sdr 64 -tdi 008000002d480040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d480040
runtest -sec 0.002
sdr 64 -tdi 000000003d480040
runtest -sec 0.002
sdr 64 -tdi 0000000003480040
runtest -sec 0.002
sdr 64 -tdi 0000000023480040
runtest -sec 0.002
sdr 64 -tdi 0000200013480040
runtest -sec 0.002
sdr 64 -tdi 0000000033480040
runtest -sec 0.002
sdr 64 -tdi 000000000b480040
runtest -sec 0.002
sdr 64 -tdi 000000002b480040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b480040
runtest -sec 0.002
sdr 64 -tdi 000000003b480040
runtest -sec 0.002
sdr 64 -tdi 0000000007480040
runtest -sec 0.002
sdr 64 -tdi 0000000027480040
runtest -sec 0.002
sdr 64 -tdi 0000000017480040
runtest -sec 0.002
sdr 64 -tdi 0000000037480040
runtest -sec 0.002
sdr 64 -tdi 000000000f480040
runtest -sec 0.002
sdr 64 -tdi 000000002f480040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f480040
runtest -sec 0.002
sdr 64 -tdi 000000013f480040
runtest -sec 0.002
sdr 64 -tdi 0000000000c80040
runtest -sec 0.002
sdr 64 -tdi 0000000020c80040
runtest -sec 0.002
sdr 64 -tdi 0000000010c80040
runtest -sec 0.002
sdr 64 -tdi 0000000030c80040
runtest -sec 0.002
sdr 64 -tdi 0000000008c80040
runtest -sec 0.002
sdr 64 -tdi 0084280428c80040
runtest -sec 0.002
sdr 64 -tdi 0000007f18c80040
runtest -sec 0.002
sdr 64 -tdi 0000000038c80040
runtest -sec 0.002
sdr 64 -tdi 0000000004c80040
runtest -sec 0.002
sdr 64 -tdi 0000000024c80040
runtest -sec 0.002
sdr 64 -tdi 0000000014c80040
runtest -sec 0.002
sdr 64 -tdi 0000000034c80040
runtest -sec 0.002
sdr 64 -tdi 000000000cc80040
runtest -sec 0.002
sdr 64 -tdi 000000002cc80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1cc80040
runtest -sec 0.002
sdr 64 -tdi 000000003cc80040
runtest -sec 0.002
sdr 64 -tdi 0000000002c80040
runtest -sec 0.002
sdr 64 -tdi 0000000022c80040
runtest -sec 0.002
sdr 64 -tdi 0000000012c80040
runtest -sec 0.002
sdr 64 -tdi 0000000032c80040
runtest -sec 0.002
sdr 64 -tdi 000000000ac80040
runtest -sec 0.002
sdr 64 -tdi 000000002ac80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ac80040
runtest -sec 0.002
sdr 64 -tdi 000000003ac80040
runtest -sec 0.002
sdr 64 -tdi 0000000006c80040
runtest -sec 0.002
sdr 64 -tdi 0000000026c80040
runtest -sec 0.002
sdr 64 -tdi 0000000016c80040
runtest -sec 0.002
sdr 64 -tdi 0001000036c80040
runtest -sec 0.002
sdr 64 -tdi 000000000ec80040
runtest -sec 0.002
sdr 64 -tdi 000000002ec80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ec80040
runtest -sec 0.002
sdr 64 -tdi 000000013ec80040
runtest -sec 0.002
sdr 64 -tdi 0000000001c80040
runtest -sec 0.002
sdr 64 -tdi 0000000021c80040
runtest -sec 0.002
sdr 64 -tdi 0000000011c80040
runtest -sec 0.002
sdr 64 -tdi 0000800031c80040
runtest -sec 0.002
sdr 64 -tdi 0000000009c80040
runtest -sec 0.002
sdr 64 -tdi 0000000029c80040
runtest -sec 0.002
sdr 64 -tdi 0000007e19c80040
runtest -sec 0.002
sdr 64 -tdi 0000000039c80040
runtest -sec 0.002
sdr 64 -tdi 0000000005c80040
runtest -sec 0.002
sdr 64 -tdi 0001000025c80040
runtest -sec 0.002
sdr 64 -tdi 0000200015c80040
runtest -sec 0.002
sdr 64 -tdi 0000000035c80040
runtest -sec 0.002
sdr 64 -tdi 000000000dc80040
runtest -sec 0.002
sdr 64 -tdi 000000002dc80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1dc80040
runtest -sec 0.002
sdr 64 -tdi 000000003dc80040
runtest -sec 0.002
sdr 64 -tdi 0000000003c80040
runtest -sec 0.002
sdr 64 -tdi 0000800023c80040
runtest -sec 0.002
sdr 64 -tdi 0000100013c80040
runtest -sec 0.002
sdr 64 -tdi 0000000033c80040
runtest -sec 0.002
sdr 64 -tdi 000000000bc80040
runtest -sec 0.002
sdr 64 -tdi 000000002bc80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1bc80040
runtest -sec 0.002
sdr 64 -tdi 000000003bc80040
runtest -sec 0.002
sdr 64 -tdi 0000000007c80040
runtest -sec 0.002
sdr 64 -tdi 0000000027c80040
runtest -sec 0.002
sdr 64 -tdi 0200100017c80040
runtest -sec 0.002
sdr 64 -tdi 0000000037c80040
runtest -sec 0.002
sdr 64 -tdi 000000000fc80040
runtest -sec 0.002
sdr 64 -tdi 000000002fc80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1fc80040
runtest -sec 0.002
sdr 64 -tdi 000000013fc80040
runtest -sec 0.002
sdr 64 -tdi 0000000000280040
runtest -sec 0.002
sdr 64 -tdi 0000000020280040
runtest -sec 0.002
sdr 64 -tdi 0200400010280040
runtest -sec 0.002
sdr 64 -tdi 0000000030280040
runtest -sec 0.002
sdr 64 -tdi 0000000008280040
runtest -sec 0.002
sdr 64 -tdi 0000000028280040
runtest -sec 0.002
sdr 64 -tdi 0000007e18280040
runtest -sec 0.002
sdr 64 -tdi 0000000038280040
runtest -sec 0.002
sdr 64 -tdi 0000000004280040
runtest -sec 0.002
sdr 64 -tdi 0000100024280040
runtest -sec 0.002
sdr 64 -tdi 0000000014280040
runtest -sec 0.002
sdr 64 -tdi 0000000034280040
runtest -sec 0.002
sdr 64 -tdi 000000000c280040
runtest -sec 0.002
sdr 64 -tdi 000000002c280040
runtest -sec 0.002
sdr 64 -tdi 0000007e1c280040
runtest -sec 0.002
sdr 64 -tdi 000000003c280040
runtest -sec 0.002
sdr 64 -tdi 0000000002280040
runtest -sec 0.002
sdr 64 -tdi 0000080022280040
runtest -sec 0.002
sdr 64 -tdi 0000a00012280040
runtest -sec 0.002
sdr 64 -tdi 0002800032280040
runtest -sec 0.002
sdr 64 -tdi 000000000a280040
runtest -sec 0.002
sdr 64 -tdi 000000002a280040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a280040
runtest -sec 0.002
sdr 64 -tdi 000000003a280040
runtest -sec 0.002
sdr 64 -tdi 0000000006280040
runtest -sec 0.002
sdr 64 -tdi 0000000026280040
runtest -sec 0.002
sdr 64 -tdi 0000000016280040
runtest -sec 0.002
sdr 64 -tdi 0000000036280040
runtest -sec 0.002
sdr 64 -tdi 000000000e280040
runtest -sec 0.002
sdr 64 -tdi 000000002e280040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e280040
runtest -sec 0.002
sdr 64 -tdi 000000013e280040
runtest -sec 0.002
sdr 64 -tdi 0000000001280040
runtest -sec 0.002
sdr 64 -tdi 0000000021280040
runtest -sec 0.002
sdr 64 -tdi 0000000011280040
runtest -sec 0.002
sdr 64 -tdi 0000000031280040
runtest -sec 0.002
sdr 64 -tdi 0000000009280040
runtest -sec 0.002
sdr 64 -tdi 0000000029280040
runtest -sec 0.002
sdr 64 -tdi 0000007e19280040
runtest -sec 0.002
sdr 64 -tdi 0000000039280040
runtest -sec 0.002
sdr 64 -tdi 0000000005280040
runtest -sec 0.002
sdr 64 -tdi 0000000025280040
runtest -sec 0.002
sdr 64 -tdi 0000000015280040
runtest -sec 0.002
sdr 64 -tdi 0000000035280040
runtest -sec 0.002
sdr 64 -tdi 000000000d280040
runtest -sec 0.002
sdr 64 -tdi 000000002d280040
runtest -sec 0.002
sdr 64 -tdi 0000007e1d280040
runtest -sec 0.002
sdr 64 -tdi 000000003d280040
runtest -sec 0.002
sdr 64 -tdi 0000000003280040
runtest -sec 0.002
sdr 64 -tdi 0000000023280040
runtest -sec 0.002
sdr 64 -tdi 0000000013280040
runtest -sec 0.002
sdr 64 -tdi 0000000033280040
runtest -sec 0.002
sdr 64 -tdi 000000000b280040
runtest -sec 0.002
sdr 64 -tdi 000000002b280040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b280040
runtest -sec 0.002
sdr 64 -tdi 000000003b280040
runtest -sec 0.002
sdr 64 -tdi 0000000007280040
runtest -sec 0.002
sdr 64 -tdi 0000000027280040
runtest -sec 0.002
sdr 64 -tdi 0000000017280040
runtest -sec 0.002
sdr 64 -tdi 0000000037280040
runtest -sec 0.002
sdr 64 -tdi 000000000f280040
runtest -sec 0.002
sdr 64 -tdi 000000002f280040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f280040
runtest -sec 0.002
sdr 64 -tdi 000000013f280040
runtest -sec 0.002
sdr 64 -tdi 0000000000a80040
runtest -sec 0.002
sdr 64 -tdi 0000000020a80040
runtest -sec 0.002
sdr 64 -tdi 0000000010a80040
runtest -sec 0.002
sdr 64 -tdi 0000000030a80040
runtest -sec 0.002
sdr 64 -tdi 0000000008a80040
runtest -sec 0.002
sdr 64 -tdi 0000000028a80040
runtest -sec 0.002
sdr 64 -tdi 0000007e18a80040
runtest -sec 0.002
sdr 64 -tdi 0000000038a80040
runtest -sec 0.002
sdr 64 -tdi 0000000004a80040
runtest -sec 0.002
sdr 64 -tdi 0000000024a80040
runtest -sec 0.002
sdr 64 -tdi 0000000014a80040
runtest -sec 0.002
sdr 64 -tdi 0008000034a80040
runtest -sec 0.002
sdr 64 -tdi 000000000ca80040
runtest -sec 0.002
sdr 64 -tdi 000000002ca80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ca80040
runtest -sec 0.002
sdr 64 -tdi 000000003ca80040
runtest -sec 0.002
sdr 64 -tdi 0000000002a80040
runtest -sec 0.002
sdr 64 -tdi 0000000022a80040
runtest -sec 0.002
sdr 64 -tdi 0300000012a80040
runtest -sec 0.002
sdr 64 -tdi 0020000032a80040
runtest -sec 0.002
sdr 64 -tdi 000000000aa80040
runtest -sec 0.002
sdr 64 -tdi 000000002aa80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1aa80040
runtest -sec 0.002
sdr 64 -tdi 000000003aa80040
runtest -sec 0.002
sdr 64 -tdi 0000000006a80040
runtest -sec 0.002
sdr 64 -tdi 0000000026a80040
runtest -sec 0.002
sdr 64 -tdi 0000000016a80040
runtest -sec 0.002
sdr 64 -tdi 0000000036a80040
runtest -sec 0.002
sdr 64 -tdi 000000000ea80040
runtest -sec 0.002
sdr 64 -tdi 000000002ea80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ea80040
runtest -sec 0.002
sdr 64 -tdi 000000013ea80040
runtest -sec 0.002
sdr 64 -tdi 0000000001a80040
runtest -sec 0.002
sdr 64 -tdi 0000000021a80040
runtest -sec 0.002
sdr 64 -tdi 0000000011a80040
runtest -sec 0.002
sdr 64 -tdi 0000000031a80040
runtest -sec 0.002
sdr 64 -tdi 0000000009a80040
runtest -sec 0.002
sdr 64 -tdi 0000000029a80040
runtest -sec 0.002
sdr 64 -tdi 0000007e19a80040
runtest -sec 0.002
sdr 64 -tdi 0000000039a80040
runtest -sec 0.002
sdr 64 -tdi 0000000005a80040
runtest -sec 0.002
sdr 64 -tdi 0000000025a80040
runtest -sec 0.002
sdr 64 -tdi 0000100015a80040
runtest -sec 0.002
sdr 64 -tdi 0000000035a80040
runtest -sec 0.002
sdr 64 -tdi 000000000da80040
runtest -sec 0.002
sdr 64 -tdi 000000002da80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1da80040
runtest -sec 0.002
sdr 64 -tdi 000000003da80040
runtest -sec 0.002
sdr 64 -tdi 0000000003a80040
runtest -sec 0.002
sdr 64 -tdi 0000000023a80040
runtest -sec 0.002
sdr 64 -tdi 0014400013a80040
runtest -sec 0.002
sdr 64 -tdi 0050000033a80040
runtest -sec 0.002
sdr 64 -tdi 000000000ba80040
runtest -sec 0.002
sdr 64 -tdi 000000002ba80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ba80040
runtest -sec 0.002
sdr 64 -tdi 000000003ba80040
runtest -sec 0.002
sdr 64 -tdi 0000000007a80040
runtest -sec 0.002
sdr 64 -tdi 0001000027a80040
runtest -sec 0.002
sdr 64 -tdi 0000000017a80040
runtest -sec 0.002
sdr 64 -tdi 0000000037a80040
runtest -sec 0.002
sdr 64 -tdi 000000000fa80040
runtest -sec 0.002
sdr 64 -tdi 000000002fa80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1fa80040
runtest -sec 0.002
sdr 64 -tdi 000000013fa80040
runtest -sec 0.002
sdr 64 -tdi 0000000000680040
runtest -sec 0.002
sdr 64 -tdi 0000800020680040
runtest -sec 0.002
sdr 64 -tdi 0000000010680040
runtest -sec 0.002
sdr 64 -tdi 0000000030680040
runtest -sec 0.002
sdr 64 -tdi 0000000008680040
runtest -sec 0.002
sdr 64 -tdi 0000000028680040
runtest -sec 0.002
sdr 64 -tdi 0000007e18680040
runtest -sec 0.002
sdr 64 -tdi 0000000038680040
runtest -sec 0.002
sdr 64 -tdi 0000000004680040
runtest -sec 0.002
sdr 64 -tdi 0000000024680040
runtest -sec 0.002
sdr 64 -tdi 0040000014680040
runtest -sec 0.002
sdr 64 -tdi 0000000034680040
runtest -sec 0.002
sdr 64 -tdi 000000000c680040
runtest -sec 0.002
sdr 64 -tdi 000000002c680040
runtest -sec 0.002
sdr 64 -tdi 0000007e1c680040
runtest -sec 0.002
sdr 64 -tdi 000000003c680040
runtest -sec 0.002
sdr 64 -tdi 0000000002680040
runtest -sec 0.002
sdr 64 -tdi 0000000022680040
runtest -sec 0.002
sdr 64 -tdi 0400000012680040
runtest -sec 0.002
sdr 64 -tdi 0000000032680040
runtest -sec 0.002
sdr 64 -tdi 000000000a680040
runtest -sec 0.002
sdr 64 -tdi 000000002a680040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a680040
runtest -sec 0.002
sdr 64 -tdi 000000003a680040
runtest -sec 0.002
sdr 64 -tdi 0000000006680040
runtest -sec 0.002
sdr 64 -tdi 0000000026680040
runtest -sec 0.002
sdr 64 -tdi 0000000016680040
runtest -sec 0.002
sdr 64 -tdi 0000000036680040
runtest -sec 0.002
sdr 64 -tdi 000000000e680040
runtest -sec 0.002
sdr 64 -tdi 000000002e680040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e680040
runtest -sec 0.002
sdr 64 -tdi 000000013e680040
runtest -sec 0.002
sdr 64 -tdi 0000000001680040
runtest -sec 0.002
sdr 64 -tdi 0000000021680040
runtest -sec 0.002
sdr 64 -tdi 0000000011680040
runtest -sec 0.002
sdr 64 -tdi 0000000031680040
runtest -sec 0.002
sdr 64 -tdi 0000000009680040
runtest -sec 0.002
sdr 64 -tdi 0000000029680040
runtest -sec 0.002
sdr 64 -tdi 0000007e19680040
runtest -sec 0.002
sdr 64 -tdi 0000000039680040
runtest -sec 0.002
sdr 64 -tdi 0000000005680040
runtest -sec 0.002
sdr 64 -tdi 0000000025680040
runtest -sec 0.002
sdr 64 -tdi 0200000015680040
runtest -sec 0.002
sdr 64 -tdi 0000000035680040
runtest -sec 0.002
sdr 64 -tdi 000000000d680040
runtest -sec 0.002
sdr 64 -tdi 000000002d680040
runtest -sec 0.002
sdr 64 -tdi 0000007e1d680040
runtest -sec 0.002
sdr 64 -tdi 000000003d680040
runtest -sec 0.002
sdr 64 -tdi 0000000003680040
runtest -sec 0.002
sdr 64 -tdi 1000000023680040
runtest -sec 0.002
sdr 64 -tdi 0200000013680040
runtest -sec 0.002
sdr 64 -tdi 0000000033680040
runtest -sec 0.002
sdr 64 -tdi 000000000b680040
runtest -sec 0.002
sdr 64 -tdi 000000002b680040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b680040
runtest -sec 0.002
sdr 64 -tdi 000000003b680040
runtest -sec 0.002
sdr 64 -tdi 0000000007680040
runtest -sec 0.002
sdr 64 -tdi 0400000027680040
runtest -sec 0.002
sdr 64 -tdi 0000000017680040
runtest -sec 0.002
sdr 64 -tdi 0000000037680040
runtest -sec 0.002
sdr 64 -tdi 000000000f680040
runtest -sec 0.002
sdr 64 -tdi 000000002f680040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f680040
runtest -sec 0.002
sdr 64 -tdi 000000003f680040
runtest -sec 0.002
sdr 64 -tdi 0000000000e80040
runtest -sec 0.002
sdr 64 -tdi 0400000020e80040
runtest -sec 0.002
sdr 64 -tdi 0000000010e80040
runtest -sec 0.002
sdr 64 -tdi 0000000030e80040
runtest -sec 0.002
sdr 64 -tdi 0000000008e80040
runtest -sec 0.002
sdr 64 -tdi 0000000028e80040
runtest -sec 0.002
sdr 64 -tdi 0000007e18e80040
runtest -sec 0.002
sdr 64 -tdi 0000000038e80040
runtest -sec 0.002
sdr 64 -tdi 0000000004e80040
runtest -sec 0.002
sdr 64 -tdi 9000000024e80040
runtest -sec 0.002
sdr 64 -tdi 0000004214e80040
runtest -sec 0.002
sdr 64 -tdi 0000000034e80040
runtest -sec 0.002
sdr 64 -tdi 000000000ce80040
runtest -sec 0.002
sdr 64 -tdi 000000002ce80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ce80040
runtest -sec 0.002
sdr 64 -tdi 000000003ce80040
runtest -sec 0.002
sdr 64 -tdi 0000000002e80040
runtest -sec 0.002
sdr 64 -tdi 6000000022e80040
runtest -sec 0.002
sdr 64 -tdi 0000022012e80040
runtest -sec 0.002
sdr 64 -tdi 0000000032e80040
runtest -sec 0.002
sdr 64 -tdi 000000000ae80040
runtest -sec 0.002
sdr 64 -tdi 000000002ae80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ae80040
runtest -sec 0.002
sdr 64 -tdi 000000003ae80040
runtest -sec 0.002
sdr 64 -tdi 0000000006e80040
runtest -sec 0.002
sdr 64 -tdi 9800000026e80040
runtest -sec 0.002
sdr 64 -tdi 0022008816e80040
runtest -sec 0.002
sdr 64 -tdi 0000000036e80040
runtest -sec 0.002
sdr 64 -tdi 000000000ee80040
runtest -sec 0.002
sdr 64 -tdi 000000002ee80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ee80040
runtest -sec 0.002
sdr 64 -tdi 000000013ee80040
runtest -sec 0.002
sdr 64 -tdi 0000000001e80040
runtest -sec 0.002
sdr 64 -tdi 8000000021e80040
runtest -sec 0.002
sdr 64 -tdi 0000006011e80040
runtest -sec 0.002
sdr 64 -tdi 0000000031e80040
runtest -sec 0.002
sdr 64 -tdi 0000000009e80040
runtest -sec 0.002
sdr 64 -tdi 0000000029e80040
runtest -sec 0.002
sdr 64 -tdi 0000007e19e80040
runtest -sec 0.002
sdr 64 -tdi 0000000039e80040
runtest -sec 0.002
sdr 64 -tdi 0000000005e80040
runtest -sec 0.002
sdr 64 -tdi c000000025e80040
runtest -sec 0.002
sdr 64 -tdi 0000001015e80040
runtest -sec 0.002
sdr 64 -tdi 0000000035e80040
runtest -sec 0.002
sdr 64 -tdi 000000000de80040
runtest -sec 0.002
sdr 64 -tdi 000000002de80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1de80040
runtest -sec 0.002
sdr 64 -tdi 000000003de80040
runtest -sec 0.002
sdr 64 -tdi 0000000003e80040
runtest -sec 0.002
sdr 64 -tdi dc00000023e80040
runtest -sec 0.002
sdr 64 -tdi 0000002013e80040
runtest -sec 0.002
sdr 64 -tdi 0000000033e80040
runtest -sec 0.002
sdr 64 -tdi 000000000be80040
runtest -sec 0.002
sdr 64 -tdi 000000002be80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1be80040
runtest -sec 0.002
sdr 64 -tdi 000000003be80040
runtest -sec 0.002
sdr 64 -tdi 0000000007e80040
runtest -sec 0.002
sdr 64 -tdi c000000027e80040
runtest -sec 0.002
sdr 64 -tdi 0000040017e80040
runtest -sec 0.002
sdr 64 -tdi 0000000037e80040
runtest -sec 0.002
sdr 64 -tdi 000000000fe80040
runtest -sec 0.002
sdr 64 -tdi 000000002fe80040
runtest -sec 0.002
sdr 64 -tdi 0000007e1fe80040
runtest -sec 0.002
sdr 64 -tdi 000000013fe80040
runtest -sec 0.002
sdr 64 -tdi 0000000000180040
runtest -sec 0.002
sdr 64 -tdi 2000000020180040
runtest -sec 0.002
sdr 64 -tdi 0000006210180040
runtest -sec 0.002
sdr 64 -tdi 0000000030180040
runtest -sec 0.002
sdr 64 -tdi 0000000008180040
runtest -sec 0.002
sdr 64 -tdi 0000000028180040
runtest -sec 0.002
sdr 64 -tdi 0000007e18180040
runtest -sec 0.002
sdr 64 -tdi 0000000038180040
runtest -sec 0.002
sdr 64 -tdi 0000000004180040
runtest -sec 0.002
sdr 64 -tdi 0000000024180040
runtest -sec 0.002
sdr 64 -tdi 0000000014180040
runtest -sec 0.002
sdr 64 -tdi 0000000034180040
runtest -sec 0.002
sdr 64 -tdi 000000000c180040
runtest -sec 0.002
sdr 64 -tdi 000000002c180040
runtest -sec 0.002
sdr 64 -tdi 0000007e1c180040
runtest -sec 0.002
sdr 64 -tdi 000000003c180040
runtest -sec 0.002
sdr 64 -tdi 0000000002180040
runtest -sec 0.002
sdr 64 -tdi 0000000022180040
runtest -sec 0.002
sdr 64 -tdi 0000000012180040
runtest -sec 0.002
sdr 64 -tdi 0000000032180040
runtest -sec 0.002
sdr 64 -tdi 000000000a180040
runtest -sec 0.002
sdr 64 -tdi 000000002a180040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a180040
runtest -sec 0.002
sdr 64 -tdi 000000003a180040
runtest -sec 0.002
sdr 64 -tdi 0000000006180040
runtest -sec 0.002
sdr 64 -tdi 0000000026180040
runtest -sec 0.002
sdr 64 -tdi 0000000016180040
runtest -sec 0.002
sdr 64 -tdi 0000000036180040
runtest -sec 0.002
sdr 64 -tdi 000000000e180040
runtest -sec 0.002
sdr 64 -tdi 000000002e180040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e180040
runtest -sec 0.002
sdr 64 -tdi 000000013e180040
runtest -sec 0.002
sdr 64 -tdi 0000000001180040
runtest -sec 0.002
sdr 64 -tdi 0000000021180040
runtest -sec 0.002
sdr 64 -tdi 0300000011180040
runtest -sec 0.002
sdr 64 -tdi 0000000031180040
runtest -sec 0.002
sdr 64 -tdi 0000000009180040
runtest -sec 0.002
sdr 64 -tdi 0000000029180040
runtest -sec 0.002
sdr 64 -tdi 0000007e19180040
runtest -sec 0.002
sdr 64 -tdi 0000000039180040
runtest -sec 0.002
sdr 64 -tdi 0000000005180040
runtest -sec 0.002
sdr 64 -tdi 0000000025180040
runtest -sec 0.002
sdr 64 -tdi 0000000015180040
runtest -sec 0.002
sdr 64 -tdi 0000000035180040
runtest -sec 0.002
sdr 64 -tdi 000000000d180040
runtest -sec 0.002
sdr 64 -tdi 000000002d180040
runtest -sec 0.002
sdr 64 -tdi 0000007e1d180040
runtest -sec 0.002
sdr 64 -tdi 000000003d180040
runtest -sec 0.002
sdr 64 -tdi 0000000003180040
runtest -sec 0.002
sdr 64 -tdi 0000000023180040
runtest -sec 0.002
sdr 64 -tdi 0000000013180040
runtest -sec 0.002
sdr 64 -tdi 0000000033180040
runtest -sec 0.002
sdr 64 -tdi 000000000b180040
runtest -sec 0.002
sdr 64 -tdi 000000002b180040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b180040
runtest -sec 0.002
sdr 64 -tdi 000000003b180040
runtest -sec 0.002
sdr 64 -tdi 0000000007180040
runtest -sec 0.002
sdr 64 -tdi 0000000027180040
runtest -sec 0.002
sdr 64 -tdi 0000000017180040
runtest -sec 0.002
sdr 64 -tdi 0000000037180040
runtest -sec 0.002
sdr 64 -tdi 000000000f180040
runtest -sec 0.002
sdr 64 -tdi 000000002f180040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f180040
runtest -sec 0.002
sdr 64 -tdi 000000013f180040
runtest -sec 0.002
sdr 64 -tdi 0000000000980040
runtest -sec 0.002
sdr 64 -tdi 0000000020980040
runtest -sec 0.002
sdr 64 -tdi 0000000010980040
runtest -sec 0.002
sdr 64 -tdi 0000000030980040
runtest -sec 0.002
sdr 64 -tdi 0000000008980040
runtest -sec 0.002
sdr 64 -tdi 0000000028980040
runtest -sec 0.002
sdr 64 -tdi 0000007e18980040
runtest -sec 0.002
sdr 64 -tdi 0000000038980040
runtest -sec 0.002
sdr 64 -tdi 0000000004980040
runtest -sec 0.002
sdr 64 -tdi 0000000024980040
runtest -sec 0.002
sdr 64 -tdi 0000000014980040
runtest -sec 0.002
sdr 64 -tdi 0000000034980040
runtest -sec 0.002
sdr 64 -tdi 000000000c980040
runtest -sec 0.002
sdr 64 -tdi 000000002c980040
runtest -sec 0.002
sdr 64 -tdi 0000007e1c980040
runtest -sec 0.002
sdr 64 -tdi 000000003c980040
runtest -sec 0.002
sdr 64 -tdi 0000000002980040
runtest -sec 0.002
sdr 64 -tdi 0000000022980040
runtest -sec 0.002
sdr 64 -tdi 0000000012980040
runtest -sec 0.002
sdr 64 -tdi 0000000032980040
runtest -sec 0.002
sdr 64 -tdi 000000000a980040
runtest -sec 0.002
sdr 64 -tdi 000000002a980040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a980040
runtest -sec 0.002
sdr 64 -tdi 000000003a980040
runtest -sec 0.002
sdr 64 -tdi 0000800006980040
runtest -sec 0.002
sdr 64 -tdi 0000000026980040
runtest -sec 0.002
sdr 64 -tdi 0000000016980040
runtest -sec 0.002
sdr 64 -tdi 0020000036980040
runtest -sec 0.002
sdr 64 -tdi 000000000e980040
runtest -sec 0.002
sdr 64 -tdi 000000002e980040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e980040
runtest -sec 0.002
sdr 64 -tdi 000000013e980040
runtest -sec 0.002
sdr 64 -tdi 0000400001980040
runtest -sec 0.002
sdr 64 -tdi 0000000021980040
runtest -sec 0.002
sdr 64 -tdi 0000000011980040
runtest -sec 0.002
sdr 64 -tdi 0010000031980040
runtest -sec 0.002
sdr 64 -tdi 0000000009980040
runtest -sec 0.002
sdr 64 -tdi 0000000029980040
runtest -sec 0.002
sdr 64 -tdi 0000007e19980040
runtest -sec 0.002
sdr 64 -tdi 0000000039980040
runtest -sec 0.002
sdr 64 -tdi 0000000005980040
runtest -sec 0.002
sdr 64 -tdi 0000000025980040
runtest -sec 0.002
sdr 64 -tdi 0000000015980040
runtest -sec 0.002
sdr 64 -tdi 0000000035980040
runtest -sec 0.002
sdr 64 -tdi 000000000d980040
runtest -sec 0.002
sdr 64 -tdi 000000002d980040
runtest -sec 0.002
sdr 64 -tdi 0000007e1d980040
runtest -sec 0.002
sdr 64 -tdi 000000003d980040
runtest -sec 0.002
sdr 64 -tdi 0000000003980040
runtest -sec 0.002
sdr 64 -tdi 0000000023980040
runtest -sec 0.002
sdr 64 -tdi 0000000013980040
runtest -sec 0.002
sdr 64 -tdi 0000000033980040
runtest -sec 0.002
sdr 64 -tdi 000000000b980040
runtest -sec 0.002
sdr 64 -tdi 000000002b980040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b980040
runtest -sec 0.002
sdr 64 -tdi 000000003b980040
runtest -sec 0.002
sdr 64 -tdi 0000000007980040
runtest -sec 0.002
sdr 64 -tdi 0000000027980040
runtest -sec 0.002
sdr 64 -tdi 0000000017980040
runtest -sec 0.002
sdr 64 -tdi 0000000037980040
runtest -sec 0.002
sdr 64 -tdi 000000000f980040
runtest -sec 0.002
sdr 64 -tdi 000000002f980040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f980040
runtest -sec 0.002
sdr 64 -tdi 000000003f980040
runtest -sec 0.002
sdr 64 -tdi 0000000000580040
runtest -sec 0.002
sdr 64 -tdi 0000000020580040
runtest -sec 0.002
sdr 64 -tdi 0000000010580040
runtest -sec 0.002
sdr 64 -tdi 0000000030580040
runtest -sec 0.002
sdr 64 -tdi 0000000008580040
runtest -sec 0.002
sdr 64 -tdi 0000000028580040
runtest -sec 0.002
sdr 64 -tdi 0000007e18580040
runtest -sec 0.002
sdr 64 -tdi 0000000038580040
runtest -sec 0.002
sdr 64 -tdi 0000000004580040
runtest -sec 0.002
sdr 64 -tdi 0000000024580040
runtest -sec 0.002
sdr 64 -tdi 0000000014580040
runtest -sec 0.002
sdr 64 -tdi 0000000034580040
runtest -sec 0.002
sdr 64 -tdi 000000000c580040
runtest -sec 0.002
sdr 64 -tdi 000000002c580040
runtest -sec 0.002
sdr 64 -tdi 0000007e1c580040
runtest -sec 0.002
sdr 64 -tdi 000000003c580040
runtest -sec 0.002
sdr 64 -tdi 0000000002580040
runtest -sec 0.002
sdr 64 -tdi 0000000022580040
runtest -sec 0.002
sdr 64 -tdi 0280000012580040
runtest -sec 0.002
sdr 64 -tdi 0a00000032580040
runtest -sec 0.002
sdr 64 -tdi 000000000a580040
runtest -sec 0.002
sdr 64 -tdi 000000002a580040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a580040
runtest -sec 0.002
sdr 64 -tdi 000400003a580040
runtest -sec 0.002
sdr 64 -tdi 0000000006580040
runtest -sec 0.002
sdr 64 -tdi 0000000026580040
runtest -sec 0.002
sdr 64 -tdi 0000000016580040
runtest -sec 0.002
sdr 64 -tdi 0000000036580040
runtest -sec 0.002
sdr 64 -tdi 000000000e580040
runtest -sec 0.002
sdr 64 -tdi 000000002e580040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e580040
runtest -sec 0.002
sdr 64 -tdi 000800013e580040
runtest -sec 0.002
sdr 64 -tdi 0000000001580040
runtest -sec 0.002
sdr 64 -tdi 0000000021580040
runtest -sec 0.002
sdr 64 -tdi 0000000011580040
runtest -sec 0.002
sdr 64 -tdi 0000000031580040
runtest -sec 0.002
sdr 64 -tdi 0000000009580040
runtest -sec 0.002
sdr 64 -tdi 0000000029580040
runtest -sec 0.002
sdr 64 -tdi 0000007e19580040
runtest -sec 0.002
sdr 64 -tdi 0000000039580040
runtest -sec 0.002
sdr 64 -tdi 0000000005580040
runtest -sec 0.002
sdr 64 -tdi 0000000025580040
runtest -sec 0.002
sdr 64 -tdi 0000000015580040
runtest -sec 0.002
sdr 64 -tdi 0000000035580040
runtest -sec 0.002
sdr 64 -tdi 000000000d580040
runtest -sec 0.002
sdr 64 -tdi 000000002d580040
runtest -sec 0.002
sdr 64 -tdi 0000007e1d580040
runtest -sec 0.002
sdr 64 -tdi 000000003d580040
runtest -sec 0.002
sdr 64 -tdi 0000000003580040
runtest -sec 0.002
sdr 64 -tdi 0000000023580040
runtest -sec 0.002
sdr 64 -tdi 0000000013580040
runtest -sec 0.002
sdr 64 -tdi 0000000033580040
runtest -sec 0.002
sdr 64 -tdi 000000000b580040
runtest -sec 0.002
sdr 64 -tdi 000000002b580040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b580040
runtest -sec 0.002
sdr 64 -tdi 000000003b580040
runtest -sec 0.002
sdr 64 -tdi 0000000007580040
runtest -sec 0.002
sdr 64 -tdi 0000000027580040
runtest -sec 0.002
sdr 64 -tdi 0000000017580040
runtest -sec 0.002
sdr 64 -tdi 0000000037580040
runtest -sec 0.002
sdr 64 -tdi 000000000f580040
runtest -sec 0.002
sdr 64 -tdi 000000002f580040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f580040
runtest -sec 0.002
sdr 64 -tdi 000000003f580040
runtest -sec 0.002
sdr 64 -tdi 0000000000d80040
runtest -sec 0.002
sdr 64 -tdi 0000000020d80040
runtest -sec 0.002
sdr 64 -tdi 0000000010d80040
runtest -sec 0.002
sdr 64 -tdi 0000000030d80040
runtest -sec 0.002
sdr 64 -tdi 0000000008d80040
runtest -sec 0.002
sdr 64 -tdi 0000000028d80040
runtest -sec 0.002
sdr 64 -tdi 0000007e18d80040
runtest -sec 0.002
sdr 64 -tdi 001fffff38d80040
runtest -sec 0.002
sdr 64 -tdi 0040010a04d80040
runtest -sec 0.002
sdr 64 -tdi 1100042824d80040
runtest -sec 0.002
sdr 64 -tdi 0102422014d80040
runtest -sec 0.002
sdr 64 -tdi e000000034d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0cd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2cd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1cd80040
runtest -sec 0.002
sdr 64 -tdi 001fffff3cd80040
runtest -sec 0.002
sdr 64 -tdi 0000000002d80040
runtest -sec 0.002
sdr 64 -tdi 0000000022d80040
runtest -sec 0.002
sdr 64 -tdi 0080840012d80040
runtest -sec 0.002
sdr 64 -tdi e663183032d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ad80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ad80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ad80040
runtest -sec 0.002
sdr 64 -tdi 001fffff3ad80040
runtest -sec 0.002
sdr 64 -tdi 0000000006d80040
runtest -sec 0.002
sdr 64 -tdi 0004000026d80040
runtest -sec 0.002
sdr 64 -tdi 0000800016d80040
runtest -sec 0.002
sdr 64 -tdi e000100036d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ed80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ed80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ed80040
runtest -sec 0.002
sdr 64 -tdi 011fffff3ed80040
runtest -sec 0.002
sdr 64 -tdi 0442410a01d80040
runtest -sec 0.002
sdr 64 -tdi 1101042821d80040
runtest -sec 0.002
sdr 64 -tdi 41822a2011d80040
runtest -sec 0.002
sdr 64 -tdi e9a3045031d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff09d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff29d80040
runtest -sec 0.002
sdr 64 -tdi 0000007f19d80040
runtest -sec 0.002
sdr 64 -tdi 001fffff39d80040
runtest -sec 0.002
sdr 64 -tdi 0000000005d80040
runtest -sec 0.002
sdr 64 -tdi 0000000025d80040
runtest -sec 0.002
sdr 64 -tdi 0000000015d80040
runtest -sec 0.002
sdr 64 -tdi e000000035d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0dd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2dd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1dd80040
runtest -sec 0.002
sdr 64 -tdi 001fffff3dd80040
runtest -sec 0.002
sdr 64 -tdi 0000000003d80040
runtest -sec 0.002
sdr 64 -tdi 0000000023d80040
runtest -sec 0.002
sdr 64 -tdi 0000000013d80040
runtest -sec 0.002
sdr 64 -tdi e000000033d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0bd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2bd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1bd80040
runtest -sec 0.002
sdr 64 -tdi 001fffff3bd80040
runtest -sec 0.002
sdr 64 -tdi 0000000007d80040
runtest -sec 0.002
sdr 64 -tdi 0000000027d80040
runtest -sec 0.002
sdr 64 -tdi 0000000017d80040
runtest -sec 0.002
sdr 64 -tdi e000000037d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0fd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2fd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fd80040
runtest -sec 0.002
sdr 64 -tdi 001fffff3fd80040
runtest -sec 0.002
sdr 64 -tdi 0000000000380040
runtest -sec 0.002
sdr 64 -tdi 0000000020380040
runtest -sec 0.002
sdr 64 -tdi 0000000010380040
runtest -sec 0.002
sdr 64 -tdi e000000030380040
runtest -sec 0.002
sdr 64 -tdi ffffffff08380040
runtest -sec 0.002
sdr 64 -tdi ffffffff28380040
runtest -sec 0.002
sdr 64 -tdi 0000007f18380040
runtest -sec 0.002
sdr 64 -tdi 403f005438380040
runtest -sec 0.002
sdr 64 -tdi f5f0000004380040
runtest -sec 0.002
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi f0
sir 10 -tdi 3fd
runtest -tck 100
sdr 64 -tdi 00000000000000c0 -tdo 086a400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000200000c0 -tdo ffff000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000100000c0 -tdo 0400004500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000300000c0 -tdo 04f0200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000080000c0 -tdo b385942c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000280000c0 -tdo c2ca165000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000180000c0 -tdo 650b20f100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000380000c0 -tdo 85942c8100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000040000c0 -tdo c83dc0b200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000240000c0 -tdo 1ee0f70200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000140000c0 -tdo 707b83dc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000340000c0 -tdo 3dc1ee0f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c0000c0 -tdo e0f707b800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c0000c0 -tdo 7b81641e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c0000c0 -tdo c1ee0f7000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c0000c0 -tdo f707b83d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000020000c0 -tdo 83dc1ee000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000220000c0 -tdo b285902c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000120000c0 -tdo 42ca164000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000320000c0 -tdo c41ee05900000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a0000c0 -tdo 85907b8300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a0000c0 -tdo ca1650b200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a0000c0 -tdo 0b28594200000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a0000c0 -tdo 942ca16500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000060000c0 -tdo 1650b28500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000260000c0 -tdo 285942ca00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000160000c0 -tdo 2ca1650b00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000360000c0 -tdo 40b2059400000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e0000c0 -tdo 5902c81600000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e0000c0 -tdo a3e51f2000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e0000c0 -tdo b28f947c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e0000c0 -tdo c2ce167000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000010000c0 -tdo df0b385900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000210000c0 -tdo 0f707b8300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000110000c0 -tdo ca1641ee00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000310000c0 -tdo 0b28594200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000090000c0 -tdo 0000a16500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000290000c0 -tdo 0000004500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000190000c0 -tdo 04ffdb0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000390000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000050000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000250000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000150000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000350000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d0000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d0000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d0000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d0000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000030000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000230000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000130000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000330000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b0000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b0000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b0000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b0000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000070000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000270000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000170000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000370000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f0000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f0000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f0000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f0000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000008000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000208000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000108000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000308000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000088000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000288000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000188000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000388000c0 -tdo 011fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000048000c0 -tdo 0440210a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000248000c0 -tdo 1000842300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000148000c0 -tdo 42410a1400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000348000c0 -tdo 04a0045000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c8000c0 -tdo 2a12200400000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c8000c0 -tdo a604280400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c8000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c8000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000028000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000228000c0 -tdo 0060000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000128000c0 -tdo 0018400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000328000c0 -tdo 0205100000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a8000c0 -tdo 008040d000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a8000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a8000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000068000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000268000c0 -tdo 0010000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000168000c0 -tdo 0108420800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000368000c0 -tdo 0421082000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e8000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e8000c0 -tdo 011fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000018000c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000218000c0 -tdo 0040842000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000118000c0 -tdo 0090840400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000318000c0 -tdo 0242101000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000098000c0 -tdo 018c60cc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000298000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000198000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000398000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000058000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000258000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000158000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000358000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d8000c0 -tdo 0020000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d8000c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000038000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000238000c0 -tdo 00a9000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000138000c0 -tdo 0240000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000338000c0 -tdo 4004800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b8000c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000078000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000278000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000178000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000378000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f8000c0 -tdo 0000800200000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f8000c0 -tdo 008c000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f8000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000004000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000204000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000104000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000304000c0 -tdo 0002800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000084000c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000284000c0 -tdo 1400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000184000c0 -tdo 0000000900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000384000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000044000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000244000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000144000c0 -tdo 0100000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000344000c0 -tdo 0002400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c4000c0 -tdo 6011000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c4000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c4000c0 -tdo 0000040000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000024000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000224000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000124000c0 -tdo 0424000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000324000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a4000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000064000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000264000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000164000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000364000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000014000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000214000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000114000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000314000c0 -tdo 0090000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000094000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000294000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000194000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000394000c0 -tdo 0000480000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000054000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000254000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000154000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000354000c0 -tdo 2000c00000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d4000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000034000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000234000c0 -tdo 0009000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000134000c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000334000c0 -tdo 4090000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b4000c0 -tdo 1000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b4000c0 -tdo 0012000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000074000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000274000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000174000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000374000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f4000c0 -tdo 8000800200000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f4000c0 -tdo 0000000800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f4000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f4000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030c000c0 -tdo 0200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008c000c0 -tdo 0000040000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028c000c0 -tdo 0001100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018c000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034c000c0 -tdo 0000200300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cc000c0 -tdo 0004003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012c000c0 -tdo 5000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032c000c0 -tdo 0a90010300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ac000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ac000c0 -tdo 0020003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ac000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ac000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026c000c0 -tdo 00000c0000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016c000c0 -tdo 3000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036c000c0 -tdo 0000080a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ec000c0 -tdo 8010000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ec000c0 -tdo 8480003100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ec000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ec000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011c000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031c000c0 -tdo 0004818200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009c000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029c000c0 -tdo 0002103000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019c000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025c000c0 -tdo c000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015c000c0 -tdo 0040080000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dc000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dc000c0 -tdo 0040003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dc000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023c000c0 -tdo d400000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013c000c0 -tdo 0200004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033c000c0 -tdo 0090000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bc000c0 -tdo 1004003800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027c000c0 -tdo 8800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017c000c0 -tdo 0012000200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fc000c0 -tdo 0060000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fc000c0 -tdo 0814020100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fc000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fc000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000002000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000202000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000102000c0 -tdo 000002a000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000302000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000082000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000282000c0 -tdo 0080080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000182000c0 -tdo 0000000c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000382000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000042000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000242000c0 -tdo 1001800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000142000c0 -tdo 0800144400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000342000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c2000c0 -tdo 0003000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c2000c0 -tdo 0000003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000022000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000222000c0 -tdo f000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000122000c0 -tdo 6000802000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000322000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a2000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000062000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000262000c0 -tdo 8801800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000162000c0 -tdo 6000080200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000362000c0 -tdo 0000000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e2000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e2000c0 -tdo 0002000800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e2000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000012000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000212000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000112000c0 -tdo 0000005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000312000c0 -tdo 0002804b00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000092000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000292000c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000192000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000392000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000052000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000252000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000152000c0 -tdo 4c00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000352000c0 -tdo 0000200200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d2000c0 -tdo 0040000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000032000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000232000c0 -tdo 0002800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000132000c0 -tdo c040000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000332000c0 -tdo 098c810100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b2000c0 -tdo 0004000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000072000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000272000c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000172000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000372000c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f2000c0 -tdo 8003000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f2000c0 -tdo 000c000800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f2000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020a000c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010a000c0 -tdo 0024000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030a000c0 -tdo 0090000200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028a000c0 -tdo 0000500000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018a000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014a000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ca000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ca000c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ca000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ca000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022a000c0 -tdo 0009000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012a000c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000aa000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002aa000c0 -tdo 0400000600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001aa000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003aa000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016a000c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036a000c0 -tdo 0000c02300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ea000c0 -tdo c011000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ea000c0 -tdo 8480003600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ea000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ea000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001a000c0 -tdo 0000050000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031a000c0 -tdo 0000008300000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009a000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029a000c0 -tdo 00000a3000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015a000c0 -tdo 2200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035a000c0 -tdo 0800400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000da000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002da000c0 -tdo 0000080200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001da000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003da000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023a000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013a000c0 -tdo 6200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033a000c0 -tdo 8000400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ba000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ba000c0 -tdo 8004010400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ba000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ba000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027a000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017a000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037a000c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fa000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fa000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fa000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fa000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000006000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000206000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000106000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000306000c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000086000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000286000c0 -tdo 0000092900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000186000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000386000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000046000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000246000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000146000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000346000c0 -tdo 2088000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c6000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c6000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000026000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000226000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000126000c0 -tdo 7000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000326000c0 -tdo 8000004700000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a6000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a6000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a6000c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000066000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000266000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000166000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000366000c0 -tdo 8000000b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e6000c0 -tdo 0000000d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e6000c0 -tdo 0000000900000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e6000c0 -tdo 0000800100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000016000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000216000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000116000c0 -tdo 8024000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000316000c0 -tdo 0000118000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000096000c0 -tdo 0000028c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000296000c0 -tdo 0001100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000196000c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000396000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000056000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000256000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000156000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000356000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d6000c0 -tdo 0000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000036000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000236000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000136000c0 -tdo 0000a00000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000336000c0 -tdo 0904800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b6000c0 -tdo 0000093800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b6000c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000076000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000276000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000176000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000376000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f6000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f6000c0 -tdo 0000000600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f6000c0 -tdo 0000800100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020e000c0 -tdo 0000240000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010e000c0 -tdo 0000900000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008e000c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028e000c0 -tdo 0000063000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018e000c0 -tdo 0000001400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034e000c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ce000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ce000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ce000c0 -tdo 0000002000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ce000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022e000c0 -tdo 0090000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012e000c0 -tdo 0240000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032e000c0 -tdo 0901000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ae000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ae000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ae000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ae000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ee000c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ee000c0 -tdo 0000800800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ee000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ee000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011e000c0 -tdo 0001100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031e000c0 -tdo 0900000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029e000c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019e000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035e000c0 -tdo 0004400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000de000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002de000c0 -tdo 0480003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001de000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003de000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000be000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002be000c0 -tdo 0000093e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001be000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003be000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fe000c0 -tdo 0011000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fe000c0 -tdo 1000003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fe000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fe000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000001000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000201000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000101000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000301000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000081000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000281000c0 -tdo 0000060000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000181000c0 -tdo 0000000500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000381000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000041000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000241000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000141000c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000341000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c1000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c1000c0 -tdo 0000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c1000c0 -tdo 0000002800000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000021000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000221000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000121000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000321000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a1000c0 -tdo 0000003800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000061000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000261000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000161000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000361000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e1000c0 -tdo 0000010100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e1000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e1000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000011000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000211000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000111000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000311000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000091000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000291000c0 -tdo 1000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000191000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000391000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000051000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000251000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000151000c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000351000c0 -tdo 0048000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d1000c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000031000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000231000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000131000c0 -tdo 0010000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000331000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b1000c0 -tdo 0240000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b1000c0 -tdo 1880000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b1000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000071000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000271000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000171000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000371000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f1000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f1000c0 -tdo 0000400800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f1000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f1000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000009000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000209000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000109000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000309000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000089000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000289000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000189000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000389000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000049000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000249000c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000149000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000349000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c9000c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c9000c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000029000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000229000c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000129000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000329000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a9000c0 -tdo 0020000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a9000c0 -tdo 0200000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000069000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000269000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000169000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000369000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e9000c0 -tdo 8220004d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e9000c0 -tdo 0000000800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e9000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000019000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000219000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000119000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000319000c0 -tdo 0900000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000099000c0 -tdo 0000020c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000299000c0 -tdo 0000900000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000199000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000399000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000059000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000259000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000159000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000359000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d9000c0 -tdo 0020000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d9000c0 -tdo 0480003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000039000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000239000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000139000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000339000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b9000c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b9000c0 -tdo 0000003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000079000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000279000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000179000c0 -tdo 8000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000379000c0 -tdo 0002100000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f9000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f9000c0 -tdo 0080003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f9000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000005000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000205000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000105000c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000305000c0 -tdo 0000810000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000085000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000285000c0 -tdo 0402103000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000185000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000385000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000045000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000245000c0 -tdo 0140000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000145000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000345000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000025000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000225000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000125000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000325000c0 -tdo 0c00000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000065000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000265000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000165000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000365000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e5000c0 -tdo 0120000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e5000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000015000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000215000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000115000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000315000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000095000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000295000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000195000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000395000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000055000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000255000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000155000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000355000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d5000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d5000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000035000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000235000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000135000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000335000c0 -tdo 0002400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000075000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000275000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000175000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000375000c0 -tdo 0000c00000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f5000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010d000c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030d000c0 -tdo 1200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018d000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024d000c0 -tdo 0018000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014d000c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034d000c0 -tdo 0000c00000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cd000c0 -tdo 0010000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cd000c0 -tdo 0000890800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cd000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022d000c0 -tdo 0081000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012d000c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ad000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ad000c0 -tdo 1000103a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ad000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ad000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036d000c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ed000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ed000c0 -tdo 0000003400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ed000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ed000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031d000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029d000c0 -tdo 0044960000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019d000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dd000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dd000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dd000c0 -tdo 0012000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033d000c0 -tdo 0050000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fd000c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fd000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000003000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000203000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000103000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000303000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000083000c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000283000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000183000c0 -tdo 0000004100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000383000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000043000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000243000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000143000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000343000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000023000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000223000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000123000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000323000c0 -tdo 1100000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000063000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000263000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000163000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000363000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e3000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000013000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000213000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000113000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000313000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000093000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000293000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000193000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000393000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000053000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000253000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000153000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000353000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000033000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000233000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000133000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000333000c0 -tdo 0a00000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000073000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000273000c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000173000c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000373000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f3000c0 -tdo 0804000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f3000c0 -tdo 0024000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f3000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020b000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010b000c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008b000c0 -tdo 4002000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018b000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038b000c0 -tdo 0000000800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014b000c0 -tdo 0040000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034b000c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012b000c0 -tdo 0412000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032b000c0 -tdo 1140000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ab000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ab000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ab000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ab000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000eb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002eb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001eb000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003eb000c0 -tdo 0000002000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029b000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019b000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015b000c0 -tdo 4040000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000db000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002db000c0 -tdo 0000013000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001db000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003db000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013b000c0 -tdo 2400000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033b000c0 -tdo 0000065000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bb000c0 -tdo 0000083700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017b000c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037b000c0 -tdo 0000204300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fb000c0 -tdo 0000003000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fb000c0 -tdo 000a000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000007000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000207000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000107000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000307000c0 -tdo 1100028300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000087000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000287000c0 -tdo 0002188800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000187000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000387000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000047000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000247000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000147000c0 -tdo 0200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000347000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c7000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c7000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000027000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000227000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000127000c0 -tdo 4200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000327000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a7000c0 -tdo 2000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a7000c0 -tdo 8000000400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000067000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000267000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000167000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000367000c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e7000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000017000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000217000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000117000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000317000c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000097000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000297000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000197000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000397000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000057000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000257000c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000157000c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000357000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d7000c0 -tdo 0000014000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000037000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000237000c0 -tdo 9400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000137000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000337000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000077000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000277000c0 -tdo c800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000177000c0 -tdo 0000000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000377000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f7000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f7000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020f000c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010f000c0 -tdo 0000029000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018f000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024f000c0 -tdo 9000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014f000c0 -tdo 0000024000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034f000c0 -tdo 0000000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cf000c0 -tdo 0080000c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cf000c0 -tdo 0480000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cf000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cf000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022f000c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012f000c0 -tdo 7000001100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032f000c0 -tdo c000008b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000af000c0 -tdo 0040018d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002af000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001af000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003af000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026f000c0 -tdo 9800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016f000c0 -tdo 0002009000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036f000c0 -tdo 0000080b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ef000c0 -tdo 0000002c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ef000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ef000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ef000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021f000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011f000c0 -tdo 8020005000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031f000c0 -tdo 0028028000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009f000c0 -tdo 00002a0200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019f000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015f000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035f000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000df000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002df000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001df000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003df000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023f000c0 -tdo 00a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013f000c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033f000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bf000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bf000c0 -tdo 0500000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bf000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bf000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ff000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ff000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ff000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ff000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000000800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000200800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000100800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000300800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000080800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000280800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000180800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000380800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000040800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000240800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000140800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000340800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000020800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000220800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000120800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000320800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000060800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000260800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000160800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000360800c0 -tdo 0201000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e0800c0 -tdo 0804000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000010800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000210800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000110800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000310800c0 -tdo 1000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000090800c0 -tdo 4002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000290800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000190800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000390800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000050800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000250800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000150800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000350800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d0800c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000030800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000230800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000130800c0 -tdo 0000900000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000330800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b0800c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b0800c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b0800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000070800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000270800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000170800c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000370800c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f0800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000008800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000208800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000108800c0 -tdo 0010000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000308800c0 -tdo 0040000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000088800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000288800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000188800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000388800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000048800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000248800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000148800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000348800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c8800c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000028800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000228800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000128800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000328800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a8800c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a8800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000068800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000268800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000168800c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000368800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e8800c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000018800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000218800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000118800c0 -tdo 0100000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000318800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000098800c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000298800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000198800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000398800c0 -tdo 0000002400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000058800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000258800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000158800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000358800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d8800c0 -tdo 0000801c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000038800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000238800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000138800c0 -tdo 0012000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000338800c0 -tdo 0002400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b8800c0 -tdo 0000050c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000078800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000278800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000178800c0 -tdo 0010500000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000378800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f8800c0 -tdo 0000810900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f8800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f8800c0 -tdo 000a000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000004800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000204800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000104800c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000304800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000084800c0 -tdo 0000050c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000284800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000184800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000384800c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000044800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000244800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000144800c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000344800c0 -tdo 1800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c4800c0 -tdo 0089824200000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c4800c0 -tdo 0000000800000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000024800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000224800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000124800c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000324800c0 -tdo 8000069000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a4800c0 -tdo 0020040f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000064800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000264800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000164800c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000364800c0 -tdo 0000209300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e4800c0 -tdo 0000210900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e4800c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000014800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000214800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000114800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000314800c0 -tdo 0000020300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000094800c0 -tdo 0000090000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000294800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000194800c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000394800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000054800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000254800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000154800c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000354800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d4800c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d4800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000034800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000234800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000134800c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000334800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b4800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000074800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000274800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000174800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000374800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f4800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f4800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f4800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028c800c0 -tdo 0084280400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018c800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cc800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ac800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ac800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ac800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ac800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036c800c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ec800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ec800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ec800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ec800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031c800c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019c800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025c800c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015c800c0 -tdo 0000200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dc800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023c800c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013c800c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bc800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017c800c0 -tdo 0200100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fc800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fc800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fc800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000002800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000202800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000102800c0 -tdo 0200400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000302800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000082800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000282800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000182800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000382800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000042800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000242800c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000142800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000342800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c2800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000022800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000222800c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000122800c0 -tdo 0000a00000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000322800c0 -tdo 0002800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a2800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000062800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000262800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000162800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000362800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e2800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e2800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000012800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000212800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000112800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000312800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000092800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000292800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000192800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000392800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000052800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000252800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000152800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000352800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d2800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000032800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000232800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000132800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000332800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b2800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000072800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000272800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000172800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000372800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f2800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f2800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f2800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018a800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034a800c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ca800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ca800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ca800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ca800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012a800c0 -tdo 0300000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032a800c0 -tdo 0020000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000aa800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002aa800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001aa800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003aa800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ea800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ea800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ea800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ea800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019a800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015a800c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000da800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002da800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001da800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003da800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013a800c0 -tdo 0014400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033a800c0 -tdo 0050000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ba800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ba800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ba800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ba800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027a800c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fa800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fa800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fa800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fa800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000006800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000206800c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000106800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000306800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000086800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000286800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000186800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000386800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000046800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000246800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000146800c0 -tdo 0040000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000346800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c6800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000026800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000226800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000126800c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000326800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a6800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000066800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000266800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000166800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000366800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e6800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e6800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000016800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000216800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000116800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000316800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000096800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000296800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000196800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000396800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000056800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000256800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000156800c0 -tdo 0200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000356800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d6800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000036800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000236800c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000136800c0 -tdo 0200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000336800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b6800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000076800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000276800c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000176800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000376800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f6800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f6800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020e800c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018e800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024e800c0 -tdo 9000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014e800c0 -tdo 0000004200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ce800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ce800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ce800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ce800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022e800c0 -tdo 6000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012e800c0 -tdo 0000022000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ae800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ae800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ae800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ae800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026e800c0 -tdo 9800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016e800c0 -tdo 0022008800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ee800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ee800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ee800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ee800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021e800c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011e800c0 -tdo 0000006000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019e800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025e800c0 -tdo c000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015e800c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000de800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002de800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001de800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003de800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023e800c0 -tdo dc00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013e800c0 -tdo 0000002000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000be800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002be800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001be800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003be800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027e800c0 -tdo c000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017e800c0 -tdo 0000040000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fe800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fe800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fe800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fe800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000001800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000201800c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000101800c0 -tdo 0000006200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000301800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000081800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000281800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000181800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000381800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000041800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000241800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000141800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000341800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c1800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000021800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000221800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000121800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000321800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a1800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000061800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000261800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000161800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000361800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e1800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e1800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000011800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000211800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000111800c0 -tdo 0300000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000311800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000091800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000291800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000191800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000391800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000051800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000251800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000151800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000351800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d1800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000031800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000231800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000131800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000331800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b1800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000071800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000271800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000171800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000371800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f1800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f1800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f1800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000009800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000209800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000109800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000309800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000089800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000289800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000189800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000389800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000049800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000249800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000149800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000349800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c9800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000029800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000229800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000129800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000329800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a9800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000069800c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000269800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000169800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000369800c0 -tdo 0020000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e9800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e9800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000019800c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000219800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000119800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000319800c0 -tdo 0010000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000099800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000299800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000199800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000399800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000059800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000259800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000159800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000359800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d9800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000039800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000239800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000139800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000339800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b9800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000079800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000279800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000179800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000379800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f9800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f9800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000005800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000205800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000105800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000305800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000085800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000285800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000185800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000385800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000045800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000245800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000145800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000345800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c5800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000025800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000225800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000125800c0 -tdo 0280000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000325800c0 -tdo 0a00000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a5800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a5800c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000065800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000265800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000165800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000365800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e5800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e5800c0 -tdo 0008000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000015800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000215800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000115800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000315800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000095800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000295800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000195800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000395800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000055800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000255800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000155800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000355800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d5800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000035800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000235800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000135800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000335800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b5800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000075800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000275800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000175800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000375800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f5800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f5800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018d800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038d800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004d800c0 -tdo 0040010a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024d800c0 -tdo 1100042800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014d800c0 -tdo 0102422000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034d800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cd800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012d800c0 -tdo 0080840000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032d800c0 -tdo e663183000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ad800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ad800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ad800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ad800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026d800c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016d800c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036d800c0 -tdo e000100000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ed800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ed800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ed800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ed800c0 -tdo 011fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001d800c0 -tdo 0442410a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021d800c0 -tdo 1101042800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011d800c0 -tdo 41822a2000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031d800c0 -tdo e9a3045000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009d800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029d800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019d800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039d800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035d800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dd800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033d800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bd800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017d800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037d800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fd800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000003800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000203800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000103800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000303800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000083800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000283800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000183800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000383800c0 -tdo 403f005400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000043800c0 -tdo f5f0000000000000 -mask ffffffff00000000
sir 10 -tdi 3f7
runtest -tck 100
usb_close
