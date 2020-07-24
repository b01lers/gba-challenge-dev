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
	.file	"oacombo.c"
@ GNU C17 (devkitARM release 54) version 10.1.0 (arm-none-eabi)
@	compiled by GNU C version 4.9.2, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version isl-0.15-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -I ../../tonclib/include -imultilib thumb
@ -D__USES_INITFINI__ oacombo.c -mthumb-interwork -mthumb -mcpu=arm7tdmi
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
	.align	1
	.p2align 2,,3
	.global	oac_rotscale
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	oac_rotscale, %function
oac_rotscale:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	mov	r5, r8	@,
	mov	lr, fp	@,
	mov	r7, r10	@,
	mov	r6, r9	@,
	push	{r5, r6, r7, lr}	@
	movs	r6, r0	@ oac, tmp322
@ oacombo.c:79: 	int sx= oac->sx, sy= oac->sy;
	movs	r3, #28	@ tmp332,
	ldrsh	r1, [r0, r3]	@ sx, oac, tmp332
@ oacombo.c:79: 	int sx= oac->sx, sy= oac->sy;
	movs	r3, #30	@ tmp333,
	ldrsh	r5, [r0, r3]	@ sy, oac, tmp333
@ oacombo.c:80: 	int sina= lu_sin(oac->alpha)>>4, cosa= lu_cos(oac->alpha)>>4;
	ldrh	r3, [r0, #32]	@ tmp218,
@ ../../tonclib/include/tonc_math.h:421: {	return sin_lut[(theta>>7)&0x1FF];	}
	lsrs	r3, r3, #7	@ _108, tmp218,
@ ../../tonclib/include/tonc_math.h:421: {	return sin_lut[(theta>>7)&0x1FF];	}
	lsls	r0, r3, #1	@ tmp220, _108,
@ ../../tonclib/include/tonc_math.h:428: {	return sin_lut[((theta>>7)+128)&0x1FF];	}
	adds	r3, r3, #128	@ tmp223,
@ ../../tonclib/include/tonc_math.h:421: {	return sin_lut[(theta>>7)&0x1FF];	}
	ldr	r2, .L12	@ tmp219,
@ ../../tonclib/include/tonc_math.h:428: {	return sin_lut[((theta>>7)+128)&0x1FF];	}
	lsls	r3, r3, #23	@ tmp225, tmp223,
@ ../../tonclib/include/tonc_math.h:428: {	return sin_lut[((theta>>7)+128)&0x1FF];	}
	lsrs	r3, r3, #22	@ tmp226, tmp225,
	ldrsh	r7, [r3, r2]	@ tmp227, sin_lut
@ oacombo.c:83: 		&obj_aff_buffer[BFN_GET(oac->sub_obj->attr1, ATTR1_AFF_ID)];
	ldr	r3, [r6]	@ tmp336, oac_71(D)->sub_obj
	ldrh	r3, [r3, #2]	@ tmp230,
@ ../../tonclib/include/tonc_math.h:421: {	return sin_lut[(theta>>7)&0x1FF];	}
	ldrsh	r4, [r0, r2]	@ tmp221, sin_lut
@ oacombo.c:82: 	OBJ_AFFINE *oaff= 
	ldr	r2, .L12+4	@ tmp228,
@ oacombo.c:83: 		&obj_aff_buffer[BFN_GET(oac->sub_obj->attr1, ATTR1_AFF_ID)];
	lsls	r3, r3, #18	@ tmp232, tmp230,
@ oacombo.c:82: 	OBJ_AFFINE *oaff= 
	ldr	r2, [r2]	@ obj_aff_buffer, obj_aff_buffer
@ oacombo.c:83: 		&obj_aff_buffer[BFN_GET(oac->sub_obj->attr1, ATTR1_AFF_ID)];
	lsrs	r3, r3, #27	@ tmp233, tmp232,
@ oacombo.c:80: 	int sina= lu_sin(oac->alpha)>>4, cosa= lu_cos(oac->alpha)>>4;
	asrs	r7, r7, #4	@ cosa, tmp227,
@ oacombo.c:83: 		&obj_aff_buffer[BFN_GET(oac->sub_obj->attr1, ATTR1_AFF_ID)];
	lsls	r3, r3, #5	@ tmp234, tmp233,
@ oacombo.c:82: 	OBJ_AFFINE *oaff= 
	adds	r3, r2, r3	@ oaff, obj_aff_buffer, tmp234
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	movs	r2, r7	@ tmp236, cosa
	muls	r2, r1	@ tmp236, sx
@ oacombo.c:80: 	int sina= lu_sin(oac->alpha)>>4, cosa= lu_cos(oac->alpha)>>4;
	asrs	r4, r4, #4	@ sina, tmp221,
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	asrs	r2, r2, #8	@ tmp237, tmp236,
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	strh	r2, [r3, #6]	@ tmp237, oaff_77->pa
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	rsbs	r2, r4, #0	@ tmp239, sina
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	muls	r2, r1	@ tmp240, sx
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	asrs	r2, r2, #8	@ tmp241, tmp240,
@ oacombo.c:84: 	oaff->pa=  cosa*sx>>8;	oaff->pb= -sina*sx>>8;
	strh	r2, [r3, #14]	@ tmp241, oaff_77->pb
@ oacombo.c:85: 	oaff->pc=  sina*sy>>8;	oaff->pd=  cosa*sy>>8;
	movs	r2, r4	@ tmp243, sina
	muls	r2, r5	@ tmp243, sy
@ oacombo.c:88: 	sx= Div(1<<20, sx);
	movs	r0, #128	@,
@ oacombo.c:85: 	oaff->pc=  sina*sy>>8;	oaff->pd=  cosa*sy>>8;
	asrs	r2, r2, #8	@ tmp244, tmp243,
@ oacombo.c:85: 	oaff->pc=  sina*sy>>8;	oaff->pd=  cosa*sy>>8;
	strh	r2, [r3, #22]	@ tmp244, oaff_77->pc
@ oacombo.c:85: 	oaff->pc=  sina*sy>>8;	oaff->pd=  cosa*sy>>8;
	movs	r2, r7	@ tmp246, cosa
	muls	r2, r5	@ tmp246, sy
@ oacombo.c:85: 	oaff->pc=  sina*sy>>8;	oaff->pd=  cosa*sy>>8;
	asrs	r2, r2, #8	@ tmp247, tmp246,
@ oacombo.c:85: 	oaff->pc=  sina*sy>>8;	oaff->pd=  cosa*sy>>8;
	strh	r2, [r3, #30]	@ tmp247, oaff_77->pd
@ oacombo.c:77: {
	sub	sp, sp, #28	@,,
@ oacombo.c:88: 	sx= Div(1<<20, sx);
	lsls	r0, r0, #13	@,,
	bl	Div		@
	mov	r8, r0	@ sx, tmp323
@ oacombo.c:89: 	if(sx != sy)
	cmp	r5, r0	@ sy, sx
	beq	.L2		@,
@ oacombo.c:90: 		sy= Div(1<<20, sy);
	movs	r0, #128	@,
	movs	r1, r5	@, sy
	lsls	r0, r0, #13	@,,
	bl	Div		@
.L2:
@ oacombo.c:94: 	aa=  sx*cosa>>12;	ab= sy*sina>>12;	// .8f
	mov	r3, r8	@ tmp251, sx
	muls	r3, r7	@ tmp251, cosa
@ oacombo.c:94: 	aa=  sx*cosa>>12;	ab= sy*sina>>12;	// .8f
	asrs	r3, r3, #12	@ aa, tmp251,
	str	r3, [sp, #8]	@ aa, %sfp
@ oacombo.c:94: 	aa=  sx*cosa>>12;	ab= sy*sina>>12;	// .8f
	movs	r3, r4	@ tmp252, sina
	muls	r3, r0	@ tmp252, sy
@ oacombo.c:94: 	aa=  sx*cosa>>12;	ab= sy*sina>>12;	// .8f
	asrs	r3, r3, #12	@ ab, tmp252,
	str	r3, [sp, #12]	@ ab, %sfp
@ oacombo.c:95: 	ac= -sx*sina>>12;	ad= sy*cosa>>12;	// .8f
	mov	r3, r8	@ sx, sx
	rsbs	r3, r3, #0	@ tmp253, sx
@ oacombo.c:95: 	ac= -sx*sina>>12;	ad= sy*cosa>>12;	// .8f
	muls	r4, r3	@ tmp254, tmp253
@ oacombo.c:95: 	ac= -sx*sina>>12;	ad= sy*cosa>>12;	// .8f
	muls	r7, r0	@ tmp255, sy
@ oacombo.c:95: 	ac= -sx*sina>>12;	ad= sy*cosa>>12;	// .8f
	asrs	r3, r4, #12	@ ac, tmp254,
	str	r3, [sp, #16]	@ ac, %sfp
@ oacombo.c:95: 	ac= -sx*sina>>12;	ad= sy*cosa>>12;	// .8f
	asrs	r3, r7, #12	@ ad, tmp255,
	str	r3, [sp, #20]	@ ad, %sfp
@ oacombo.c:99: 	POINT *pt= oac->sub_pos;
	ldr	r3, [r6, #4]	@ pt, oac_71(D)->sub_pos
	mov	r8, r3	@ pt, pt
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	ldr	r3, [r6, #8]	@ tmp346, oac_71(D)->sub_count
@ oacombo.c:98: 	OBJ_ATTR *obj= oac->sub_obj;
	ldr	r0, [r6]	@ obj, oac_71(D)->sub_obj
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	cmp	r3, #0	@ tmp346,
	ble	.L1		@,
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	movs	r3, #0	@ ii,
	mov	r9, r3	@ ii, ii
	ldr	r3, .L12+8	@ tmp321,
@ ../../tonclib/include/tonc_oam.h:96: 	BFN_SET(obj->attr0, y, ATTR0_Y);
	mov	ip, r6	@ oac, oac
	mov	r10, r3	@ tmp321, tmp321
.L5:
@ oacombo.c:103: 		sx= oam_sizes[obj->attr0>>14][obj->attr1>>14][0]<<7;
	ldrh	r7, [r0]	@ _31, MEM[base: obj_135, offset: 0B]
@ oacombo.c:103: 		sx= oam_sizes[obj->attr0>>14][obj->attr1>>14][0]<<7;
	ldrh	r5, [r0, #2]	@ _34, MEM[base: obj_135, offset: 2B]
@ oacombo.c:103: 		sx= oam_sizes[obj->attr0>>14][obj->attr1>>14][0]<<7;
	lsrs	r3, r7, #14	@ _33, _31,
@ oacombo.c:103: 		sx= oam_sizes[obj->attr0>>14][obj->attr1>>14][0]<<7;
	lsrs	r2, r5, #14	@ _36, _34,
@ oacombo.c:103: 		sx= oam_sizes[obj->attr0>>14][obj->attr1>>14][0]<<7;
	lsls	r3, r3, #2	@ tmp262, _33,
	adds	r3, r3, r2	@ tmp263, tmp262, _36
	mov	r2, r10	@ tmp321, tmp321
	lsls	r3, r3, #1	@ tmp264, tmp263,
	ldrb	r6, [r2, r3]	@ tmp265, oam_sizes
@ oacombo.c:104: 		sy= oam_sizes[obj->attr0>>14][obj->attr1>>14][1]<<7;
	add	r3, r3, r10	@ tmp270, tmp321
	ldrb	r4, [r3, #1]	@ tmp272, oam_sizes
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	mov	r2, ip	@ oac, oac
@ oacombo.c:106: 		dx= oac->pos.x+oac->anchor.x - sx;	// .8f
	mov	r3, ip	@ oac, oac
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	ldr	r2, [r2, #24]	@ _45, oac_71(D)->anchor.y
@ oacombo.c:106: 		dx= oac->pos.x+oac->anchor.x - sx;	// .8f
	ldr	r1, [r3, #20]	@ _42, oac_71(D)->anchor.x
@ oacombo.c:106: 		dx= oac->pos.x+oac->anchor.x - sx;	// .8f
	ldr	r3, [r3, #12]	@ tmp352, oac_71(D)->pos.x
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	mov	fp, r2	@ _45, _45
@ oacombo.c:103: 		sx= oam_sizes[obj->attr0>>14][obj->attr1>>14][0]<<7;
	lsls	r6, r6, #7	@ sx, tmp265,
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	mov	r2, ip	@ oac, oac
@ oacombo.c:106: 		dx= oac->pos.x+oac->anchor.x - sx;	// .8f
	adds	r3, r1, r3	@ tmp273, _42, tmp352
@ oacombo.c:106: 		dx= oac->pos.x+oac->anchor.x - sx;	// .8f
	subs	r3, r3, r6	@ dx, tmp273, sx
	str	r3, [sp, #4]	@ dx, %sfp
@ oacombo.c:109: 		if(obj->attr0&ATTR0_AFF_DBL_BIT)
	movs	r3, #128	@ tmp358,
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	ldr	r2, [r2, #16]	@ tmp275, oac_71(D)->pos.y
@ oacombo.c:104: 		sy= oam_sizes[obj->attr0>>14][obj->attr1>>14][1]<<7;
	lsls	r4, r4, #7	@ sy, tmp272,
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	add	r2, r2, fp	@ tmp275, _45
@ oacombo.c:109: 		if(obj->attr0&ATTR0_AFF_DBL_BIT)
	lsls	r3, r3, #2	@ tmp358, tmp358,
@ oacombo.c:107: 		dy= oac->pos.y+oac->anchor.y - sy;	// .8f
	subs	r2, r2, r4	@ dy, tmp275, sy
@ oacombo.c:109: 		if(obj->attr0&ATTR0_AFF_DBL_BIT)
	tst	r7, r3	@ _31, tmp358
	beq	.L4		@,
@ oacombo.c:110: 		{	dx -= sx;	dy -= sy;	}
	ldr	r3, [sp, #4]	@ dx, %sfp
	subs	r3, r3, r6	@ dx, dx, sx
	str	r3, [sp, #4]	@ dx, %sfp
@ oacombo.c:110: 		{	dx -= sx;	dy -= sy;	}
	subs	r2, r2, r4	@ dy, dy, sy
.L4:
@ oacombo.c:112: 		sx= oac->anchor.x - pt->x - sx;
	mov	r3, r8	@ pt, pt
	ldr	r3, [r3]	@ tmp360, MEM[base: pt_133, offset: 0B]
	subs	r1, r1, r3	@ tmp282, _42, tmp360
@ oacombo.c:113: 		sy= oac->anchor.y - pt->y - sy;
	mov	r3, r8	@ pt, pt
@ oacombo.c:112: 		sx= oac->anchor.x - pt->x - sx;
	subs	r1, r1, r6	@ sx, tmp282, sx
@ oacombo.c:113: 		sy= oac->anchor.y - pt->y - sy;
	mov	r6, fp	@ _45, _45
	ldr	r3, [r3, #4]	@ tmp363, MEM[base: pt_133, offset: 4B]
	subs	r6, r6, r3	@ tmp284, _45, tmp363
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	ldr	r3, [sp, #16]	@ ac, %sfp
	mov	fp, r3	@ ac, ac
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	ldr	r3, [sp, #20]	@ ad, %sfp
@ oacombo.c:113: 		sy= oac->anchor.y - pt->y - sy;
	subs	r4, r6, r4	@ sy, tmp284, sy
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	mov	r6, fp	@ tmp286, ac
	muls	r6, r1	@ tmp286, sx
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	mov	fp, r3	@ ad, ad
	mov	r3, fp	@ tmp287, ad
	muls	r3, r4	@ tmp287, sy
	mov	fp, r3	@ tmp287, tmp287
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	add	r6, r6, fp	@ tmp288, tmp287
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	asrs	r6, r6, #8	@ tmp289, tmp288,
@ oacombo.c:116: 		dy -= (ac*sx + ad*sy)>>8;		// .8f
	subs	r6, r2, r6	@ dy, dy, tmp289
@ ../../tonclib/include/tonc_oam.h:96: 	BFN_SET(obj->attr0, y, ATTR0_Y);
	movs	r2, #255	@ tmp369,
@ oacombo.c:117: 		obj_set_pos(obj, dx>>8, dy>>8);	
	asrs	r6, r6, #8	@ tmp291, dy,
@ ../../tonclib/include/tonc_oam.h:96: 	BFN_SET(obj->attr0, y, ATTR0_Y);
	ands	r6, r2	@ tmp295, tmp369
	bics	r7, r2	@ tmp298, tmp370
@ oacombo.c:115: 		dx -= (aa*sx + ab*sy)>>8;		// .8f
	ldr	r2, [sp, #8]	@ tmp304, %sfp
	muls	r2, r1	@ tmp304, sx
	movs	r1, r2	@ tmp304, tmp304
@ oacombo.c:115: 		dx -= (aa*sx + ab*sy)>>8;		// .8f
	ldr	r2, [sp, #12]	@ tmp305, %sfp
	muls	r2, r4	@ tmp305, sy
@ oacombo.c:115: 		dx -= (aa*sx + ab*sy)>>8;		// .8f
	ldr	r3, [sp, #4]	@ dx, %sfp
@ oacombo.c:115: 		dx -= (aa*sx + ab*sy)>>8;		// .8f
	adds	r1, r1, r2	@ tmp306, tmp304, tmp305
@ oacombo.c:115: 		dx -= (aa*sx + ab*sy)>>8;		// .8f
	asrs	r1, r1, #8	@ tmp307, tmp306,
@ oacombo.c:115: 		dx -= (aa*sx + ab*sy)>>8;		// .8f
	subs	r3, r3, r1	@ dx, dx, tmp307
@ ../../tonclib/include/tonc_oam.h:97: 	BFN_SET(obj->attr1, x, ATTR1_X);
	lsls	r3, r3, #15	@ tmp312, dx,
	lsrs	r5, r5, #9	@ tmp315, _34,
	lsrs	r3, r3, #23	@ tmp311, tmp312,
	lsls	r5, r5, #9	@ tmp314, tmp315,
	orrs	r5, r3	@ tmp318, tmp311
@ oacombo.c:119: 		obj++;	pt++;
	movs	r3, #8	@ tmp373,
	mov	fp, r3	@ tmp373, tmp373
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	subs	r3, r3, #7	@ tmp375,
@ oacombo.c:119: 		obj++;	pt++;
	add	r8, r8, fp	@ pt, tmp373
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	mov	fp, r3	@ tmp375, tmp375
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	mov	r3, ip	@ oac, oac
@ ../../tonclib/include/tonc_oam.h:96: 	BFN_SET(obj->attr0, y, ATTR0_Y);
	orrs	r7, r6	@ tmp302, tmp295
	strh	r7, [r0]	@ tmp302, MEM[base: obj_135, offset: 0B]
@ ../../tonclib/include/tonc_oam.h:97: 	BFN_SET(obj->attr1, x, ATTR1_X);
	strh	r5, [r0, #2]	@ tmp318, MEM[base: obj_135, offset: 2B]
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	ldr	r3, [r3, #8]	@ tmp378, oac_71(D)->sub_count
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	add	r9, r9, fp	@ ii, tmp375
@ oacombo.c:119: 		obj++;	pt++;
	adds	r0, r0, #8	@ obj,
@ oacombo.c:100: 	for(ii=0; ii<oac->sub_count; ii++)
	cmp	r3, r9	@ tmp378, ii
	bgt	.L5		@,
.L1:
@ oacombo.c:121: }
	add	sp, sp, #28	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L13:
	.align	2
.L12:
	.word	sin_lut
	.word	.LANCHOR0
	.word	oam_sizes
	.size	oac_rotscale, .-oac_rotscale
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC11:
	.ascii	"#{P:%d,%d}1 full #{P:%d,%d}2 semi #{P:%d,%d}4 quart"
	.ascii	"s\000"
	.text
	.align	1
	.p2align 2,,3
	.global	init_main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	init_main, %function
init_main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
@ oacombo.c:125: 	memcpy32(pal_obj_mem, oac_gfxPal, oac_gfxPalLen/4);
	movs	r2, #8	@,
@ oacombo.c:124: {
	sub	sp, sp, #20	@,,
@ oacombo.c:125: 	memcpy32(pal_obj_mem, oac_gfxPal, oac_gfxPalLen/4);
	ldr	r4, .L15	@ tmp115,
	ldr	r1, .L15+4	@,
	ldr	r0, .L15+8	@,
	bl	.L17		@
@ oacombo.c:126: 	memcpy32(tile_mem[4], oac_gfxTiles, oac_gfxTilesLen/4);
	movs	r2, #128	@ tmp136,
	ldr	r1, .L15+12	@,
	lsls	r2, r2, #1	@, tmp136,
	ldr	r0, .L15+16	@,
	bl	.L17		@
@ oacombo.c:128: 	oam_init(obj_buffer, 128);
	ldr	r5, .L15+20	@ tmp120,
	movs	r1, #128	@,
	movs	r0, r5	@, tmp120
	bl	oam_init		@
@ oacombo.c:131: 	memcpy32(obj_buffer, obj_data, sizeof(obj_data)/4);
	movs	r0, r5	@, tmp120
	movs	r2, #14	@,
	ldr	r1, .L15+24	@,
	bl	.L17		@
@ oacombo.c:133: 	REG_DISPCNT= DCNT_BG0 | DCNT_OBJ | DCNT_OBJ_1D;
	movs	r3, #128	@ tmp124,
	movs	r2, #138	@ tmp125,
	lsls	r3, r3, #19	@ tmp124, tmp124,
	lsls	r2, r2, #5	@ tmp125, tmp125,
	str	r2, [r3]	@ tmp125, MEM[(volatile vu32 *)67108864B]
@ oacombo.c:135: 	tte_init_chr4c_b4_default(0, BG_CBB(2)|BG_SBB(28));
	movs	r2, #240	@ tmp139,
	ldr	r3, .L15+28	@ tmp129,
	str	r3, [sp, #8]	@ tmp129,
	ldr	r3, .L15+32	@ tmp130,
	str	r3, [sp, #4]	@ tmp130,
	ldr	r3, .L15+36	@ tmp131,
	movs	r0, #0	@,
	str	r3, [sp]	@ tmp131,
	ldr	r1, .L15+40	@,
	ldr	r3, .L15+44	@,
	lsls	r2, r2, #8	@, tmp139,
	bl	tte_init_chr4c		@
@ oacombo.c:136: 	tte_init_con();
	bl	tte_init_con		@
@ oacombo.c:139: 	tte_printf("#{P:%d,%d}1 full #{P:%d,%d}2 semi #{P:%d,%d}4 quarts", 
	movs	r3, #110	@ tmp133,
	str	r3, [sp, #8]	@ tmp133,
	subs	r3, r3, #10	@ tmp134,
	str	r3, [sp, #4]	@ tmp134,
	subs	r3, r3, #80	@ tmp135,
	str	r3, [sp]	@ tmp135,
	movs	r2, #20	@,
	movs	r1, #72	@,
	adds	r3, r3, #120	@,
	ldr	r0, .L15+48	@,
	bl	iprintf		@
@ oacombo.c:141: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L16:
	.align	2
.L15:
	.word	memcpy32
	.word	oac_gfxPal
	.word	83886592
	.word	oac_gfxTiles
	.word	100728832
	.word	obj_buffer
	.word	.LANCHOR1
	.word	chr4c_drawg_b4cts
	.word	verdana9_b4Font
	.word	35587071
	.word	7176
	.word	513
	.word	.LC11
	.size	init_main, .-init_main
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	mov	lr, r10	@,
	mov	r6, r8	@,
	mov	r7, r9	@,
	push	{r6, r7, lr}	@
@ oacombo.c:146: 	init_main();
	bl	init_main		@
	ldr	r3, .L24	@ tmp169,
	mov	r9, r3	@ tmp169, tmp169
	ldr	r3, .L24+4	@ tmp171,
	mov	r8, r3	@ tmp171, tmp171
	ldr	r3, .L24+8	@ tmp172,
@ oacombo.c:148: 	int ii, alpha=0;
	movs	r6, #0	@ alpha,
	mov	r10, r3	@ tmp172, tmp172
	ldr	r5, .L24+12	@ tmp170,
@ ../../tonclib/include/tonc_video.h:362: 	while(REG_VCOUNT >= 160);   // wait till VDraw
	ldr	r4, .L24+16	@ tmp127,
.L19:
	ldrh	r3, [r4]	@ MEM[(volatile vu16 *)67108870B], MEM[(volatile vu16 *)67108870B]
@ ../../tonclib/include/tonc_video.h:362: 	while(REG_VCOUNT >= 160);   // wait till VDraw
	cmp	r3, #159	@ MEM[(volatile vu16 *)67108870B],
	bhi	.L19		@,
.L20:
@ ../../tonclib/include/tonc_video.h:363: 	while(REG_VCOUNT < 160);    // wait till VBlank
	ldrh	r3, [r4]	@ MEM[(volatile vu16 *)67108870B], MEM[(volatile vu16 *)67108870B]
@ ../../tonclib/include/tonc_video.h:363: 	while(REG_VCOUNT < 160);    // wait till VBlank
	cmp	r3, #159	@ MEM[(volatile vu16 *)67108870B],
	bls	.L20		@,
@ oacombo.c:153: 		key_poll();
	bl	key_poll		@
@ ../../tonclib/include/tonc_input.h:174: {	return bit_tribool(__key_curr, KI_R, KI_L);			}
	mov	r3, r9	@ tmp169, tmp169
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	movs	r1, #1	@ tmp141,
@ ../../tonclib/include/tonc_input.h:174: {	return bit_tribool(__key_curr, KI_R, KI_L);			}
	ldrh	r0, [r3]	@ _16, __key_curr
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	lsrs	r2, r0, #8	@ tmp140, _16,
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	lsrs	r3, r0, #9	@ tmp143, _16,
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	ands	r2, r1	@ tmp142, tmp141
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	ands	r3, r1	@ tmp145, tmp141
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	subs	r3, r2, r3	@ tmp146, tmp142, tmp145
@ oacombo.c:154: 		alpha -= 128*key_tri_shoulder();
	lsls	r3, r3, #7	@ tmp147, tmp146,
@ oacombo.c:154: 		alpha -= 128*key_tri_shoulder();
	subs	r6, r6, r3	@ alpha, alpha, tmp147
@ oacombo.c:158: 			oacs[ii].alpha= alpha;
	lsls	r7, r6, #16	@ tmp148, alpha,
	lsrs	r7, r7, #16	@ _28, tmp148,
@ oacombo.c:159: 			oac_rotscale(&oacs[ii]);
	adds	r0, r5, #4	@ tmp152, tmp170,
@ oacombo.c:158: 			oacs[ii].alpha= alpha;
	strh	r7, [r5, #36]	@ _28, oacs[0].alpha
@ oacombo.c:159: 			oac_rotscale(&oacs[ii]);
	bl	oac_rotscale		@
@ oacombo.c:158: 			oacs[ii].alpha= alpha;
	movs	r3, #72	@ tmp154,
@ oacombo.c:159: 			oac_rotscale(&oacs[ii]);
	movs	r0, r5	@ tmp157, tmp170
@ oacombo.c:158: 			oacs[ii].alpha= alpha;
	strh	r7, [r5, r3]	@ _28, oacs[1].alpha
@ oacombo.c:159: 			oac_rotscale(&oacs[ii]);
	adds	r0, r0, #40	@ tmp157,
	bl	oac_rotscale		@
@ oacombo.c:158: 			oacs[ii].alpha= alpha;
	movs	r3, #108	@ tmp160,
@ oacombo.c:159: 			oac_rotscale(&oacs[ii]);
	movs	r0, r5	@ tmp163, tmp170
@ oacombo.c:158: 			oacs[ii].alpha= alpha;
	strh	r7, [r5, r3]	@ _28, oacs[2].alpha
@ oacombo.c:159: 			oac_rotscale(&oacs[ii]);
	adds	r0, r0, #76	@ tmp163,
	bl	oac_rotscale		@
@ ../../tonclib/include/tonc_oam.h:102: {	memcpy32(dst, src, count*2);	}
	movs	r2, #128	@,
	movs	r0, #224	@,
	mov	r1, r8	@, tmp171
	lsls	r2, r2, #1	@,,
	lsls	r0, r0, #19	@,,
	bl	.L26		@
@ ../../tonclib/include/tonc_video.h:362: 	while(REG_VCOUNT >= 160);   // wait till VDraw
	b	.L19		@
.L25:
	.align	2
.L24:
	.word	__key_curr
	.word	obj_buffer
	.word	memcpy32
	.word	.LANCHOR0
	.word	67108870
.L26:
	bx	r10
	.size	main, .-main
	.text
	.align	1
	.p2align 2,,3
	.global	alt_main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	alt_main, %function
alt_main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	mov	lr, fp	@,
	mov	r7, r10	@,
	mov	r6, r9	@,
	mov	r5, r8	@,
	push	{r5, r6, r7, lr}	@
	sub	sp, sp, #148	@,,
@ oacombo.c:170: 	init_main();
	bl	init_main		@
@ oacombo.c:172: 	AFF_SRC_EX asxs[7]= 
	movs	r2, #140	@,
	ldr	r1, .L35	@,
	add	r0, sp, #4	@ tmp187,,
	bl	memcpy		@
@ oacombo.c:186: 	int ii, alpha=0;
	movs	r3, #0	@ alpha,
	mov	r10, r3	@ alpha, alpha
	ldr	r3, .L35+4	@ tmp173,
	mov	fp, r3	@ tmp173, tmp173
	ldr	r3, .L35+8	@ tmp174,
	mov	r9, r3	@ tmp174, tmp174
@ ../../tonclib/include/tonc_video.h:362: 	while(REG_VCOUNT >= 160);   // wait till VDraw
	ldr	r7, .L35+12	@ tmp141,
.L28:
	ldrh	r3, [r7]	@ MEM[(volatile vu16 *)67108870B], MEM[(volatile vu16 *)67108870B]
@ ../../tonclib/include/tonc_video.h:362: 	while(REG_VCOUNT >= 160);   // wait till VDraw
	cmp	r3, #159	@ MEM[(volatile vu16 *)67108870B],
	bhi	.L28		@,
.L29:
@ ../../tonclib/include/tonc_video.h:363: 	while(REG_VCOUNT < 160);    // wait till VBlank
	ldrh	r3, [r7]	@ MEM[(volatile vu16 *)67108870B], MEM[(volatile vu16 *)67108870B]
@ ../../tonclib/include/tonc_video.h:363: 	while(REG_VCOUNT < 160);    // wait till VBlank
	cmp	r3, #159	@ MEM[(volatile vu16 *)67108870B],
	bls	.L29		@,
@ oacombo.c:191: 		key_poll();
	bl	key_poll		@
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	movs	r1, #1	@ tmp155,
@ ../../tonclib/include/tonc_input.h:174: {	return bit_tribool(__key_curr, KI_R, KI_L);			}
	ldr	r3, .L35+16	@ tmp191,
	ldrh	r0, [r3]	@ _22, __key_curr
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	lsrs	r2, r0, #8	@ tmp154, _22,
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	lsrs	r3, r0, #9	@ tmp157, _22,
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	ands	r2, r1	@ tmp156, tmp155
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	ands	r3, r1	@ tmp159, tmp155
@ ../../tonclib/include/tonc_core.h:412: {	return ((flags>>plus)&1) - ((flags>>minus)&1);	}
	subs	r3, r2, r3	@ tmp160, tmp156, tmp159
@ oacombo.c:192: 		alpha -= 128*key_tri_shoulder();
	mov	r2, r10	@ alpha, alpha
@ oacombo.c:192: 		alpha -= 128*key_tri_shoulder();
	lsls	r3, r3, #7	@ tmp161, tmp160,
@ oacombo.c:192: 		alpha -= 128*key_tri_shoulder();
	subs	r3, r2, r3	@ alpha, alpha, tmp161
	mov	r10, r3	@ alpha, alpha
@ oacombo.c:196: 			asxs[ii].alpha= alpha;
	lsls	r3, r3, #16	@ tmp162, alpha,
	lsrs	r3, r3, #16	@ _42, tmp162,
	mov	r8, r3	@ _42, _42
	mov	r6, fp	@ ivtmp.46, tmp173
	movs	r4, #0	@ ivtmp.45,
	add	r5, sp, #4	@ tmp196,,
.L30:
@ oacombo.c:196: 			asxs[ii].alpha= alpha;
	mov	r3, r8	@ _42, _42
	strh	r3, [r5, #16]	@ _42, MEM[base: _46, offset: 16B]
@ oacombo.c:197: 			obj_rs_ex2(&obj_buffer[ii], &obj_aff_buffer[ii], &asxs[ii]);
	mov	r3, r9	@ tmp174, tmp174
	ldr	r3, [r3]	@ tmp199, obj_aff_buffer
	movs	r2, r5	@, ivtmp.44
	movs	r0, r6	@, ivtmp.46
	adds	r1, r3, r4	@ tmp165, tmp199, ivtmp.45
@ oacombo.c:194: 		for(ii=0; ii<7; ii++)
	adds	r4, r4, #32	@ ivtmp.45,
@ oacombo.c:197: 			obj_rs_ex2(&obj_buffer[ii], &obj_aff_buffer[ii], &asxs[ii]);
	bl	obj_rs_ex2		@
@ oacombo.c:194: 		for(ii=0; ii<7; ii++)
	adds	r5, r5, #20	@ ivtmp.44,
	adds	r6, r6, #8	@ ivtmp.46,
	cmp	r4, #224	@ ivtmp.45,
	bne	.L30		@,
@ ../../tonclib/include/tonc_oam.h:102: {	memcpy32(dst, src, count*2);	}
	movs	r2, #128	@,
	movs	r0, #224	@,
	mov	r1, fp	@, tmp173
	ldr	r3, .L35+20	@ tmp200,
	lsls	r2, r2, #1	@,,
	lsls	r0, r0, #19	@,,
	bl	.L37		@
@ ../../tonclib/include/tonc_video.h:362: 	while(REG_VCOUNT >= 160);   // wait till VDraw
	b	.L28		@
.L36:
	.align	2
.L35:
	.word	.LC0
	.word	obj_buffer
	.word	.LANCHOR0
	.word	67108870
	.word	__key_curr
	.word	memcpy32
	.size	alt_main, .-alt_main
	.global	oacs
	.global	sub_pos
	.global	obj_data
	.global	obj_aff_buffer
	.global	obj_buffer
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	obj_data, %object
	.size	obj_data, 56
obj_data:
@ attr0:
	.short	768
@ attr1:
	.short	-32256
@ attr2:
	.short	0
@ fill:
	.short	0
@ attr0:
	.short	17152
@ attr1:
	.short	-32256
@ attr2:
	.short	0
@ fill:
	.short	0
@ attr0:
	.short	17152
@ attr1:
	.short	-32256
@ attr2:
	.short	8
@ fill:
	.short	0
@ attr0:
	.short	768
@ attr1:
	.short	17408
@ attr2:
	.short	16
@ fill:
	.short	0
@ attr0:
	.short	768
@ attr1:
	.short	17408
@ attr2:
	.short	20
@ fill:
	.short	0
@ attr0:
	.short	768
@ attr1:
	.short	17408
@ attr2:
	.short	24
@ fill:
	.short	0
@ attr0:
	.short	768
@ attr1:
	.short	17408
@ attr2:
	.short	28
@ fill:
	.short	0
.LC0:
@ tex_x:
	.word	4096
@ tex_y:
	.word	4096
@ scr_x:
	.short	32
@ scr_y:
	.short	36
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ tex_x:
	.word	4096
@ tex_y:
	.word	4096
@ scr_x:
	.short	96
@ scr_y:
	.short	36
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ tex_x:
	.word	4096
@ tex_y:
	.word	0
@ scr_x:
	.short	96
@ scr_y:
	.short	36
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ tex_x:
	.word	4096
@ tex_y:
	.word	4096
@ scr_x:
	.short	64
@ scr_y:
	.short	76
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ tex_x:
	.word	0
@ tex_y:
	.word	4096
@ scr_x:
	.short	64
@ scr_y:
	.short	76
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ tex_x:
	.word	4096
@ tex_y:
	.word	0
@ scr_x:
	.short	64
@ scr_y:
	.short	76
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ tex_x:
	.word	0
@ tex_y:
	.word	0
@ scr_x:
	.short	64
@ scr_y:
	.short	76
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	obj_aff_buffer, %object
	.size	obj_aff_buffer, 4
obj_aff_buffer:
	.word	obj_buffer
	.type	oacs, %object
	.size	oacs, 108
oacs:
@ sub_obj:
	.word	obj_buffer
@ sub_pos:
	.word	sub_pos
@ sub_count:
	.word	1
@ pos:
@ x:
	.word	18432
@ y:
	.word	9216
@ anchor:
@ x:
	.word	4096
@ y:
	.word	4096
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ sub_obj:
	.word	obj_buffer+8
@ sub_pos:
	.word	sub_pos+8
@ sub_count:
	.word	2
@ pos:
@ x:
	.word	34816
@ y:
	.word	9216
@ anchor:
@ x:
	.word	4096
@ y:
	.word	4096
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
@ sub_obj:
	.word	obj_buffer+24
@ sub_pos:
	.word	sub_pos+24
@ sub_count:
	.word	4
@ pos:
@ x:
	.word	26624
@ y:
	.word	19456
@ anchor:
@ x:
	.word	4096
@ y:
	.word	4096
@ sx:
	.short	256
@ sy:
	.short	256
@ alpha:
	.short	0
	.space	2
	.type	sub_pos, %object
	.size	sub_pos, 56
sub_pos:
@ x:
	.word	0
@ y:
	.word	0
@ x:
	.word	0
@ y:
	.word	0
@ x:
	.word	0
@ y:
	.word	4096
@ x:
	.word	0
@ y:
	.word	0
@ x:
	.word	4096
@ y:
	.word	0
@ x:
	.word	0
@ y:
	.word	4096
@ x:
	.word	4096
@ y:
	.word	4096
	.bss
	.align	2
	.type	obj_buffer, %object
	.size	obj_buffer, 1024
obj_buffer:
	.space	1024
	.ident	"GCC: (devkitARM release 54) 10.1.0"
	.text
	.code 16
	.align	1
.L37:
	bx	r3
.L17:
	bx	r4
