	.cpu arm7tdmi
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"oac_gfx.c"
@ GNU C17 (devkitARM release 54) version 10.1.0 (arm-none-eabi)
@	compiled by GNU C version 4.9.2, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version isl-0.15-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -I ../../tonclib/include -imultilib thumb
@ -D__USES_INITFINI__ oac_gfx.c -mthumb-interwork -mthumb -mcpu=arm7tdmi
@ -march=armv4t -O2 -Wall -fno-strict-aliasing -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -falign-functions
@ -falign-jumps -falign-labels -falign-loops -fallocation-dce
@ -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop
@ -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
@ -fgcse-lm -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads
@ -fident -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-reference -fipa-reference-addressable -fipa-sra
@ -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
@ -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
@ -freg-struct-return -freorder-blocks -freorder-functions
@ -frerun-cse-after-loop -fsched-critical-path-heuristic
@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
@ -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
@ -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
@ -fstdarg-opt -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -ftree-vrp -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
@ -mbe32 -mlittle-endian -mpic-data-is-text-relative -msched-prolog -mthumb
@ -mthumb-interwork -mvectorize-with-neon-quad

	.text
	.global	oac_gfxTiles
	.global	oac_gfxPal
	.section	.rodata
	.align	2
	.type	oac_gfxTiles, %object
	.size	oac_gfxTiles, 1024
oac_gfxTiles:
	.word	0
	.word	0
	.word	0
	.word	-1879048192
	.word	160432128
	.word	589824
	.word	589824
	.word	36864
	.word	-1718616064
	.word	628992
	.word	153
	.word	0
	.word	0
	.word	-536870912
	.word	-1644167168
	.word	-1713373184
	.word	2457
	.word	10063872
	.word	-1728053248
	.word	0
	.word	0
	.word	14
	.word	233
	.word	3737
	.word	0
	.word	0
	.word	0
	.word	9
	.word	2448
	.word	36864
	.word	36864
	.word	589824
	.word	2304
	.word	2304
	.word	144
	.word	144
	.word	144
	.word	144
	.word	9
	.word	-1717986919
	.word	-1713373184
	.word	-1644167168
	.word	-536870912
	.word	0
	.word	0
	.word	-301989888
	.word	-1713373184
	.word	-1712744039
	.word	3737
	.word	233
	.word	14
	.word	0
	.word	0
	.word	238
	.word	3737
	.word	-1717985639
	.word	9437184
	.word	9437184
	.word	150994944
	.word	150994944
	.word	150994944
	.word	150994944
	.word	-1879048192
	.word	-1717986919
	.word	-286331154
	.word	14
	.word	224
	.word	224
	.word	224
	.word	224
	.word	3584
	.word	3584
	.word	-1712394514
	.word	-1713373184
	.word	-301989888
	.word	0
	.word	0
	.word	-1879048192
	.word	-385875968
	.word	-292552704
	.word	-286331239
	.word	3737
	.word	238
	.word	0
	.word	0
	.word	9
	.word	158
	.word	2542
	.word	-286331154
	.word	-536870912
	.word	234881024
	.word	234881024
	.word	234881024
	.word	234881024
	.word	14680064
	.word	14680064
	.word	57344
	.word	917504
	.word	917504
	.word	249561088
	.word	-536870912
	.word	0
	.word	0
	.word	0
	.word	-292552704
	.word	-385875968
	.word	-1879048192
	.word	0
	.word	0
	.word	238
	.word	978432
	.word	-287309824
	.word	2542
	.word	158
	.word	9
	.word	0
	.word	0
	.word	-301989888
	.word	15654912
	.word	3822
	.word	917504
	.word	57344
	.word	57344
	.word	3808
	.word	14
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1879048192
	.word	160432128
	.word	589824
	.word	589824
	.word	36864
	.word	-1718616064
	.word	628992
	.word	153
	.word	0
	.word	0
	.word	-536870912
	.word	-1644167168
	.word	-1713373184
	.word	2304
	.word	2304
	.word	144
	.word	144
	.word	144
	.word	144
	.word	9
	.word	-1717986919
	.word	-1713373184
	.word	-1644167168
	.word	-536870912
	.word	0
	.word	0
	.word	-301989888
	.word	-1713373184
	.word	-1712744039
	.word	2457
	.word	10063872
	.word	-1728053248
	.word	0
	.word	0
	.word	14
	.word	233
	.word	3737
	.word	0
	.word	0
	.word	0
	.word	9
	.word	2448
	.word	36864
	.word	36864
	.word	589824
	.word	3737
	.word	233
	.word	14
	.word	0
	.word	0
	.word	238
	.word	3737
	.word	-1717985639
	.word	9437184
	.word	9437184
	.word	150994944
	.word	150994944
	.word	150994944
	.word	150994944
	.word	-1879048192
	.word	-1717986919
	.word	-286331154
	.word	14
	.word	224
	.word	224
	.word	224
	.word	224
	.word	3584
	.word	3584
	.word	-1712394514
	.word	-1713373184
	.word	-301989888
	.word	0
	.word	0
	.word	-1879048192
	.word	-385875968
	.word	-292552704
	.word	57344
	.word	917504
	.word	917504
	.word	249561088
	.word	-536870912
	.word	0
	.word	0
	.word	0
	.word	-292552704
	.word	-385875968
	.word	-1879048192
	.word	0
	.word	0
	.word	238
	.word	978432
	.word	-287309824
	.word	-286331239
	.word	3737
	.word	238
	.word	0
	.word	0
	.word	9
	.word	158
	.word	2542
	.word	-286331154
	.word	-536870912
	.word	234881024
	.word	234881024
	.word	234881024
	.word	234881024
	.word	14680064
	.word	14680064
	.word	2542
	.word	158
	.word	9
	.word	0
	.word	0
	.word	-301989888
	.word	15654912
	.word	3822
	.word	917504
	.word	57344
	.word	57344
	.word	3808
	.word	14
	.word	0
	.word	0
	.word	0
	.type	oac_gfxPal, %object
	.size	oac_gfxPal, 32
oac_gfxPal:
	.word	1075007
	.word	34603520
	.word	1074806784
	.word	1662534144
	.word	2048528
	.word	67044320
	.word	2082438144
	.word	2147450848
	.ident	"GCC: (devkitARM release 54) 10.1.0"
