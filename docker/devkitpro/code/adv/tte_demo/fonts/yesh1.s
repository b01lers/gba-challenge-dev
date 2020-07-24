
@{{BLOCK(yesh1)

@ 4x8 Sub-pixel font by JanoS, http://www.haluz.org/yesh/

	.section .rodata
	.align	2
	.global	yesh1Font
yesh1Font:
	.word	yesh1Glyphs, 0, 0
	.hword	32, 96
	.byte	4, 8
	.byte	4, 8
	.hword	64
	.byte	16, 0

	.section .rodata
	.align	2
	.global yesh1Glyphs		@ 6144 unsigned chars
yesh1Glyphs:
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x00000000,0x00000000,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x67320012,0x67320012,0x67320012,0x67320012,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x67320012,0x48004B39,0x67320012,0x48004B39,0x7FFF4B3F,0x7F327FFF,0x67320012,0x48004B39
	.word 0x7FFF4B3F,0x7F327FFF,0x67320012,0x48004B39,0x67320012,0x48004B39,0x00000000,0x00000000

	.word 0x02590000,0x00006640,0x67FF0012,0x7F327FFF,0x48004B39,0x00000000,0x67FF0012,0x48007FF9
	.word 0x00000000,0x67320012,0x7FFF4B3F,0x48007FF9,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x48004B39,0x66400259,0x48004B39,0x48004B39,0x00120000,0x00006732,0x02590000,0x00006640
	.word 0x4B390000,0x00004800,0x67320012,0x67320012,0x66400259,0x67320012,0x00000000,0x00000000
	.word 0x67320012,0x00000000,0x4A594B39,0x00006640,0x4A594B39,0x00006640,0x67320012,0x00000000
	.word 0x4A594B39,0x67326652,0x48004B39,0x48004B39,0x67FF0012,0x67326652,0x00000000,0x00000000
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x4B390000,0x00004800,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x48004B39,0x02590000,0x00006640,0x67320012,0x00000000,0x67320012,0x00000000
	.word 0x67320012,0x00000000,0x02590000,0x00006640,0x00000000,0x48004B39,0x00000000,0x00000000
	.word 0x67320012,0x00000000,0x02590000,0x00006640,0x00000000,0x48004B39,0x00000000,0x48004B39
	.word 0x00000000,0x48004B39,0x02590000,0x00006640,0x67320012,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x48004B39,0x67320012,0x67320012,0x48004B39,0x7FFF4B3F,0x7F327FFF
	.word 0x67320012,0x48004B39,0x48004B39,0x67320012,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x7FFF4B3F,0x7F327FFF
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x4B390000,0x00004800
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF4B3F,0x7F327FFF
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x00000000,0x66400259,0x00000000,0x48004B39,0x00120000,0x00006732,0x02590000,0x00006640
	.word 0x4B390000,0x00004800,0x67320012,0x00000000,0x66400259,0x00000000,0x00000000,0x00000000

	.word 0x67FF0012,0x66407FFF,0x48004B39,0x7F324B3F,0x48124B39,0x67326739,0x4A594B39,0x67326652
	.word 0x67394B39,0x67324812,0x7F324B3F,0x67320012,0x7FFF0259,0x48007FF9,0x00000000,0x00000000
	.word 0x4B3F0000,0x00006640,0x67FF0012,0x00006640,0x7FFF0259,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x00000000,0x67320012,0x00000000,0x48004B39
	.word 0x02590000,0x00006640,0x67320012,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x00000000,0x67320012,0x02590000,0x48007FF9
	.word 0x00000000,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000

	.word 0x02590000,0x48007FF9,0x4B390000,0x48006739,0x67320012,0x48004B39,0x66400259,0x48004B39
	.word 0x7FFF4B3F,0x7F327FFF,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x7F327FFF,0x48004B39,0x00000000,0x7FFF4B3F,0x48007FF9,0x00000000,0x67320012
	.word 0x00000000,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x02590000,0x48007FF9,0x67320012,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x48007FF9
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x7F327FFF,0x00000000,0x66400259,0x00000000,0x48004B39,0x00120000,0x00006732
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000

	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x7F327FFF
	.word 0x00000000,0x67320012,0x00000000,0x48004B39,0x67FF0012,0x00006640,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x4B390000,0x00004800

	.word 0x00000000,0x00000000,0x00000000,0x7F320259,0x02590000,0x00007F32,0x7F320259,0x00000000
	.word 0x02590000,0x00007F32,0x00000000,0x7F320259,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x7F320259,0x00000000,0x02590000,0x00007F32,0x00000000,0x7F320259
	.word 0x02590000,0x00007F32,0x7F320259,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x00000000,0x67320012,0x00000000,0x48004B39
	.word 0x02590000,0x00006640,0x00000000,0x00000000,0x02590000,0x00006640,0x00000000,0x00000000

	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x48124B39,0x7F3267FF,0x4A594B39,0x67326652
	.word 0x48124B39,0x7F3267FF,0x48004B39,0x00000000,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x7F327FFF
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x48007FF9
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x48007FF9,0x00000000,0x00000000
	.word 0x67FF0012,0x7F327FFF,0x66400259,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000
	.word 0x48004B39,0x00000000,0x66400259,0x00000000,0x67FF0012,0x7F327FFF,0x00000000,0x00000000

	.word 0x7FFF4B3F,0x00006640,0x48004B39,0x48004B39,0x48004B39,0x67320012,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x48004B39,0x7FFF4B3F,0x00006640,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x7F327FFF,0x48004B39,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x00007F32
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x7F327FFF,0x48004B39,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x00006640
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000,0x00000000,0x00000000
	.word 0x67FF0012,0x66407FFF,0x66400259,0x67320012,0x48004B39,0x00000000,0x48124B39,0x7F3267FF
	.word 0x48004B39,0x67320012,0x66400259,0x67320012,0x67FF0012,0x7F327FFF,0x00000000,0x00000000

	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x7F327FFF
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x00000000,0x67320012,0x00000000,0x67320012,0x00000000,0x67320012,0x00000000,0x67320012
	.word 0x00000000,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x48004B39,0x67320012,0x48004B39,0x48004B39,0x4A594B39,0x00006640,0x7F324B3F,0x00000000
	.word 0x4A594B39,0x00006640,0x48004B39,0x48004B39,0x48004B39,0x67320012,0x00000000,0x00000000

	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000
	.word 0x66404B3F,0x7F320259,0x7F324B3F,0x7F324B3F,0x673F4B39,0x67327F39,0x4A594B39,0x67326652
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x66404B3F,0x67320012,0x7F324B3F,0x67320012,0x67394B39,0x67324812,0x4A594B39,0x67326652
	.word 0x48124B39,0x67326739,0x48004B39,0x7F324B3F,0x48004B39,0x7F320259,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x66400259,0x66400259,0x48004B39,0x67320012,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x66400259,0x66400259,0x67FF0012,0x48007FF9,0x00000000,0x00000000

	.word 0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x48007FF9
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x66400259,0x66400259,0x48004B39,0x67320012,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x67390259,0x66406739,0x67FF0012,0x48007FF9,0x00000000,0x48004B39
	.word 0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x48007FF9
	.word 0x4A594B39,0x00006640,0x48004B39,0x48004B39,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x67FF0012,0x48007FF9,0x48004B39,0x67320012,0x67320012,0x00000000,0x02590000,0x00006640
	.word 0x00000000,0x48004B39,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000

	.word 0x7FFF4B3F,0x7F327FFF,0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x66400259,0x66400259,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x66400259,0x66400259,0x66400259,0x66400259
	.word 0x67320012,0x48004B39,0x4B3F0000,0x00007F32,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x4A594B39,0x67326652
	.word 0x673F4B39,0x67327F39,0x7F324B3F,0x7F324B3F,0x66404B3F,0x7F320259,0x00000000,0x00000000

	.word 0x48004B39,0x67320012,0x66400259,0x66400259,0x67320012,0x48004B39,0x4B3F0000,0x00007F32
	.word 0x67320012,0x48004B39,0x66400259,0x66400259,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x48004B39,0x67320012,0x66400259,0x66400259,0x67320012,0x48004B39,0x4B3F0000,0x00007F32
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x7FFF4B3F,0x7F327FFF,0x00000000,0x67320012,0x00000000,0x48004B39,0x02590000,0x00006640
	.word 0x67320012,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000
	.word 0x02590000,0x48007FF9,0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x48007FF9,0x00000000,0x00000000

	.word 0x66400259,0x00000000,0x67320012,0x00000000,0x4B390000,0x00004800,0x02590000,0x00006640
	.word 0x00120000,0x00006732,0x00000000,0x48004B39,0x00000000,0x66400259,0x00000000,0x00000000
	.word 0x67FF0012,0x00007F32,0x02590000,0x00007F32,0x02590000,0x00007F32,0x02590000,0x00007F32
	.word 0x02590000,0x00007F32,0x02590000,0x00007F32,0x67FF0012,0x00007F32,0x00000000,0x00000000
	.word 0x02590000,0x00006640,0x67320012,0x48004B39,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF67FF,0x7FF97FFF,0x00000000,0x00000000

	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x00120000,0x00006732,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x48007FF9,0x00000000,0x67320012
	.word 0x67FF0012,0x7F327FFF,0x48004B39,0x67320012,0x67FF0012,0x7F327FFF,0x00000000,0x00000000
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x7FFF4B3F,0x48007FF9,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x48007FF9,0x48004B39,0x00000000
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x67FF0012,0x48007FF9,0x00000000,0x00000000

	.word 0x00000000,0x67320012,0x00000000,0x67320012,0x67FF0012,0x7F327FFF,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x7F327FFF,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x48007FF9,0x48004B39,0x67320012
	.word 0x7FFF4B3F,0x7F327FFF,0x48004B39,0x00000000,0x67FF0012,0x48007FF9,0x00000000,0x00000000
	.word 0x02590000,0x48007FF9,0x67320012,0x00000000,0x7FFF4B3F,0x00006640,0x67320012,0x00000000
	.word 0x67320012,0x00000000,0x67320012,0x00000000,0x67320012,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x7F327FFF,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x67FF0012,0x7F327FFF,0x00000000,0x67320012,0x67FF0012,0x48007FF9

	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x02590000,0x00006640,0x00000000,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x00120000,0x00006732,0x00000000,0x00000000
	.word 0x00000000,0x48004B39,0x00000000,0x00000000,0x00000000,0x48004B39,0x00000000,0x48004B39
	.word 0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x67FF0012,0x00006640
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x67320012,0x48004B39,0x48004B39
	.word 0x7FFF4B3F,0x00006640,0x48004B39,0x48004B39,0x48004B39,0x67320012,0x00000000,0x00000000

	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x00120000,0x00006732,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7F324B3F,0x48004B39,0x7FFF4B3F,0x7F327FFF
	.word 0x4A594B39,0x67326652,0x48004B39,0x67320012,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x48007FF9,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x48007FF9,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x7FFF4B3F,0x48007FF9,0x48004B39,0x00000000,0x48004B39,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x7F327FFF,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x67FF0012,0x7F327FFF,0x00000000,0x67320012,0x00000000,0x67320012
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF4B3F,0x48007FF9,0x48004B39,0x67320012
	.word 0x48004B39,0x00000000,0x48004B39,0x00000000,0x48004B39,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x67FF0012,0x48007FF9,0x48004B39,0x00000000
	.word 0x67FF0012,0x48007FF9,0x00000000,0x67320012,0x7FFF4B3F,0x48007FF9,0x00000000,0x00000000

	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x67FF0012,0x48007FF9,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x00120000,0x00006732,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x48004B39,0x67320012,0x48004B39,0x67320012
	.word 0x48004B39,0x67320012,0x48004B39,0x67320012,0x67FF0012,0x7F327FFF,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x48004B39,0x67320012,0x66400259,0x66400259
	.word 0x67320012,0x48004B39,0x4B3F0000,0x00007F32,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x48004B39,0x67320012,0x48004B39,0x67320012
	.word 0x4A594B39,0x67326652,0x7FFF0259,0x66407FFF,0x67320012,0x48004B39,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x48004B39,0x67320012,0x67320012,0x48004B39
	.word 0x02590000,0x00006640,0x67320012,0x48004B39,0x48004B39,0x67320012,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x48004B39,0x67320012,0x66400259,0x66400259
	.word 0x67320012,0x48004B39,0x4B3F0000,0x00007F32,0x02590000,0x00006640,0x4B390000,0x00004800
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x48004B39
	.word 0x02590000,0x00006640,0x67320012,0x00000000,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000
	.word 0x00000000,0x48004B39,0x02590000,0x00006640,0x02590000,0x00006640,0x67320012,0x00000000
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x48004B39,0x00000000,0x00000000

	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x00000000
	.word 0x67320012,0x00000000,0x02590000,0x00006640,0x02590000,0x00006640,0x00000000,0x48004B39
	.word 0x02590000,0x00006640,0x02590000,0x00006640,0x67320012,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x67F90012,0x67324812,0x48124B39,0x480067F9,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x02590000,0x00006640,0x4B3F0000,0x00007F32,0x67320012,0x48004B39
	.word 0x66400259,0x66400259,0x48004B39,0x67320012,0x7FFF4B3F,0x7F327FFF,0x00000000,0x00000000

@}}BLOCK(yesh1)
