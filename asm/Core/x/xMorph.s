.include "macros.inc"

.if 0

.section .text  # 0x80035034 - 0x80035494

.global xMorphSeqSetup__FPvPFUiPc_Pv
xMorphSeqSetup__FPvPFUiPc_Pv:
/* 80035034 00031E34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80035038 00031E38  7C 08 02 A6 */	mflr r0
/* 8003503C 00031E3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80035040 00031E40  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80035044 00031E44  7C 9C 23 78 */	mr r28, r4
/* 80035048 00031E48  7C 7F 1B 78 */	mr r31, r3
/* 8003504C 00031E4C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80035050 00031E50  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80035054 00031E54  54 C0 10 3A */	slwi r0, r6, 2
/* 80035058 00031E58  80 83 00 04 */	lwz r4, 4(r3)
/* 8003505C 00031E5C  7F DF 02 14 */	add r30, r31, r0
/* 80035060 00031E60  54 A5 18 38 */	slwi r5, r5, 3
/* 80035064 00031E64  1C C6 00 30 */	mulli r6, r6, 0x30
/* 80035068 00031E68  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 8003506C 00031E6C  3B DE 00 10 */	addi r30, r30, 0x10
/* 80035070 00031E70  7F BE 32 14 */	add r29, r30, r6
/* 80035074 00031E74  7F 3D 2A 14 */	add r25, r29, r5
/* 80035078 00031E78  41 82 00 08 */	beq lbl_80035080
/* 8003507C 00031E7C  48 00 02 00 */	b lbl_8003527C
lbl_80035080:
/* 80035080 00031E80  64 80 80 00 */	oris r0, r4, 0x8000
/* 80035084 00031E84  90 1F 00 04 */	stw r0, 4(r31)
/* 80035088 00031E88  80 1F 00 04 */	lwz r0, 4(r31)
/* 8003508C 00031E8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80035090 00031E90  40 82 00 08 */	bne lbl_80035098
/* 80035094 00031E94  3B 20 00 00 */	li r25, 0
lbl_80035098:
/* 80035098 00031E98  7F BB EB 78 */	mr r27, r29
/* 8003509C 00031E9C  3B 40 00 00 */	li r26, 0
/* 800350A0 00031EA0  48 00 00 44 */	b lbl_800350E4
lbl_800350A4:
/* 800350A4 00031EA4  80 7B 00 00 */	lwz r3, 0(r27)
/* 800350A8 00031EA8  28 03 00 00 */	cmplwi r3, 0
/* 800350AC 00031EAC  41 82 00 18 */	beq lbl_800350C4
/* 800350B0 00031EB0  7F 8C E3 78 */	mr r12, r28
/* 800350B4 00031EB4  7F 24 CB 78 */	mr r4, r25
/* 800350B8 00031EB8  7D 89 03 A6 */	mtctr r12
/* 800350BC 00031EBC  4E 80 04 21 */	bctrl 
/* 800350C0 00031EC0  90 7B 00 00 */	stw r3, 0(r27)
lbl_800350C4:
/* 800350C4 00031EC4  28 19 00 00 */	cmplwi r25, 0
/* 800350C8 00031EC8  41 82 00 14 */	beq lbl_800350DC
/* 800350CC 00031ECC  7F 23 CB 78 */	mr r3, r25
/* 800350D0 00031ED0  48 1B 26 E9 */	bl strlen
/* 800350D4 00031ED4  7F 23 CA 14 */	add r25, r3, r25
/* 800350D8 00031ED8  3B 39 00 01 */	addi r25, r25, 1
lbl_800350DC:
/* 800350DC 00031EDC  3B 7B 00 04 */	addi r27, r27, 4
/* 800350E0 00031EE0  3B 5A 00 01 */	addi r26, r26, 1
lbl_800350E4:
/* 800350E4 00031EE4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800350E8 00031EE8  54 00 08 3C */	slwi r0, r0, 1
/* 800350EC 00031EEC  7C 1A 00 00 */	cmpw r26, r0
/* 800350F0 00031EF0  41 80 FF B4 */	blt lbl_800350A4
/* 800350F4 00031EF4  7F BB EB 78 */	mr r27, r29
/* 800350F8 00031EF8  3B 80 00 00 */	li r28, 0
/* 800350FC 00031EFC  48 00 00 28 */	b lbl_80035124
lbl_80035100:
/* 80035100 00031F00  80 7B 00 04 */	lwz r3, 4(r27)
/* 80035104 00031F04  28 03 00 00 */	cmplwi r3, 0
/* 80035108 00031F08  41 82 00 14 */	beq lbl_8003511C
/* 8003510C 00031F0C  80 03 00 08 */	lwz r0, 8(r3)
/* 80035110 00031F10  80 7B 00 00 */	lwz r3, 0(r27)
/* 80035114 00031F14  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 80035118 00031F18  48 09 4C E1 */	bl iMorphOptimize__FP8RpAtomici
lbl_8003511C:
/* 8003511C 00031F1C  3B 7B 00 08 */	addi r27, r27, 8
/* 80035120 00031F20  3B 9C 00 01 */	addi r28, r28, 1
lbl_80035124:
/* 80035124 00031F24  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80035128 00031F28  7C 1C 00 00 */	cmpw r28, r0
/* 8003512C 00031F2C  41 80 FF D4 */	blt lbl_80035100
/* 80035130 00031F30  7F C5 F3 78 */	mr r5, r30
/* 80035134 00031F34  38 E0 00 00 */	li r7, 0
/* 80035138 00031F38  48 00 01 34 */	b lbl_8003526C
lbl_8003513C:
/* 8003513C 00031F3C  80 65 00 00 */	lwz r3, 0(r5)
/* 80035140 00031F40  38 00 00 02 */	li r0, 2
/* 80035144 00031F44  7C A4 2B 78 */	mr r4, r5
/* 80035148 00031F48  39 00 00 00 */	li r8, 0
/* 8003514C 00031F4C  54 63 18 38 */	slwi r3, r3, 3
/* 80035150 00031F50  7C 7D 1A 14 */	add r3, r29, r3
/* 80035154 00031F54  80 C3 00 00 */	lwz r6, 0(r3)
/* 80035158 00031F58  81 23 00 04 */	lwz r9, 4(r3)
/* 8003515C 00031F5C  90 C5 00 00 */	stw r6, 0(r5)
/* 80035160 00031F60  7C 09 03 A6 */	mtctr r0
lbl_80035164:
/* 80035164 00031F64  80 64 00 10 */	lwz r3, 0x10(r4)
/* 80035168 00031F68  3C 03 00 01 */	addis r0, r3, 1
/* 8003516C 00031F6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80035170 00031F70  40 82 00 10 */	bne lbl_80035180
/* 80035174 00031F74  38 00 00 00 */	li r0, 0
/* 80035178 00031F78  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003517C 00031F7C  48 00 00 60 */	b lbl_800351DC
lbl_80035180:
/* 80035180 00031F80  A0 09 00 06 */	lhz r0, 6(r9)
/* 80035184 00031F84  80 C9 00 08 */	lwz r6, 8(r9)
/* 80035188 00031F88  1C 60 00 03 */	mulli r3, r0, 3
/* 8003518C 00031F8C  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 80035190 00031F90  38 63 00 07 */	addi r3, r3, 7
/* 80035194 00031F94  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 80035198 00031F98  41 82 00 08 */	beq lbl_800351A0
/* 8003519C 00031F9C  54 63 08 3C */	slwi r3, r3, 1
lbl_800351A0:
/* 800351A0 00031FA0  2C 08 00 00 */	cmpwi r8, 0
/* 800351A4 00031FA4  40 82 00 20 */	bne lbl_800351C4
/* 800351A8 00031FA8  B0 C5 00 0C */	sth r6, 0xc(r5)
/* 800351AC 00031FAC  A0 09 00 06 */	lhz r0, 6(r9)
/* 800351B0 00031FB0  B0 05 00 0E */	sth r0, 0xe(r5)
/* 800351B4 00031FB4  C0 25 00 08 */	lfs f1, 8(r5)
/* 800351B8 00031FB8  C0 09 00 0C */	lfs f0, 0xc(r9)
/* 800351BC 00031FBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800351C0 00031FC0  D0 05 00 08 */	stfs f0, 8(r5)
lbl_800351C4:
/* 800351C4 00031FC4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800351C8 00031FC8  7C 03 01 D6 */	mullw r0, r3, r0
/* 800351CC 00031FCC  54 00 08 3C */	slwi r0, r0, 1
/* 800351D0 00031FD0  7C 69 02 14 */	add r3, r9, r0
/* 800351D4 00031FD4  38 03 00 20 */	addi r0, r3, 0x20
/* 800351D8 00031FD8  90 04 00 10 */	stw r0, 0x10(r4)
lbl_800351DC:
/* 800351DC 00031FDC  80 64 00 14 */	lwz r3, 0x14(r4)
/* 800351E0 00031FE0  39 08 00 01 */	addi r8, r8, 1
/* 800351E4 00031FE4  3C 03 00 01 */	addis r0, r3, 1
/* 800351E8 00031FE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 800351EC 00031FEC  40 82 00 10 */	bne lbl_800351FC
/* 800351F0 00031FF0  38 00 00 00 */	li r0, 0
/* 800351F4 00031FF4  90 04 00 14 */	stw r0, 0x14(r4)
/* 800351F8 00031FF8  48 00 00 60 */	b lbl_80035258
lbl_800351FC:
/* 800351FC 00031FFC  A0 09 00 06 */	lhz r0, 6(r9)
/* 80035200 00032000  80 C9 00 08 */	lwz r6, 8(r9)
/* 80035204 00032004  1C 60 00 03 */	mulli r3, r0, 3
/* 80035208 00032008  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 8003520C 0003200C  38 63 00 07 */	addi r3, r3, 7
/* 80035210 00032010  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 80035214 00032014  41 82 00 08 */	beq lbl_8003521C
/* 80035218 00032018  54 63 08 3C */	slwi r3, r3, 1
lbl_8003521C:
/* 8003521C 0003201C  2C 08 00 00 */	cmpwi r8, 0
/* 80035220 00032020  40 82 00 20 */	bne lbl_80035240
/* 80035224 00032024  B0 C5 00 0C */	sth r6, 0xc(r5)
/* 80035228 00032028  A0 09 00 06 */	lhz r0, 6(r9)
/* 8003522C 0003202C  B0 05 00 0E */	sth r0, 0xe(r5)
/* 80035230 00032030  C0 25 00 08 */	lfs f1, 8(r5)
/* 80035234 00032034  C0 09 00 0C */	lfs f0, 0xc(r9)
/* 80035238 00032038  EC 01 00 32 */	fmuls f0, f1, f0
/* 8003523C 0003203C  D0 05 00 08 */	stfs f0, 8(r5)
lbl_80035240:
/* 80035240 00032040  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80035244 00032044  7C 03 01 D6 */	mullw r0, r3, r0
/* 80035248 00032048  54 00 08 3C */	slwi r0, r0, 1
/* 8003524C 0003204C  7C 69 02 14 */	add r3, r9, r0
/* 80035250 00032050  38 03 00 20 */	addi r0, r3, 0x20
/* 80035254 00032054  90 04 00 14 */	stw r0, 0x14(r4)
lbl_80035258:
/* 80035258 00032058  38 84 00 08 */	addi r4, r4, 8
/* 8003525C 0003205C  39 08 00 01 */	addi r8, r8, 1
/* 80035260 00032060  42 00 FF 04 */	bdnz lbl_80035164
/* 80035264 00032064  38 A5 00 30 */	addi r5, r5, 0x30
/* 80035268 00032068  38 E7 00 01 */	addi r7, r7, 1
lbl_8003526C:
/* 8003526C 0003206C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80035270 00032070  7C 07 00 00 */	cmpw r7, r0
/* 80035274 00032074  41 80 FE C8 */	blt lbl_8003513C
/* 80035278 00032078  7F E3 FB 78 */	mr r3, r31
lbl_8003527C:
/* 8003527C 0003207C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80035280 00032080  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80035284 00032084  7C 08 03 A6 */	mtlr r0
/* 80035288 00032088  38 21 00 30 */	addi r1, r1, 0x30
/* 8003528C 0003208C  4E 80 00 20 */	blr 

.global xMorphRender__FP13xMorphSeqFileP11RwMatrixTagf
xMorphRender__FP13xMorphSeqFileP11RwMatrixTagf:
/* 80035290 00032090  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80035294 00032094  7C 08 02 A6 */	mflr r0
/* 80035298 00032098  38 E3 00 10 */	addi r7, r3, 0x10
/* 8003529C 0003209C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800352A0 000320A0  C0 02 85 40 */	lfs f0, lbl_803CCEC0-_SDA2_BASE_(r2)
/* 800352A4 000320A4  80 C3 00 08 */	lwz r6, 8(r3)
/* 800352A8 000320A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800352AC 000320AC  54 C0 10 3A */	slwi r0, r6, 2
/* 800352B0 000320B0  7C A7 02 14 */	add r5, r7, r0
/* 800352B4 000320B4  40 80 00 08 */	bge lbl_800352BC
/* 800352B8 000320B8  FC 20 00 90 */	fmr f1, f0
lbl_800352BC:
/* 800352BC 000320BC  54 C0 10 3A */	slwi r0, r6, 2
/* 800352C0 000320C0  7C 67 02 14 */	add r3, r7, r0
/* 800352C4 000320C4  C0 03 FF FC */	lfs f0, -4(r3)
/* 800352C8 000320C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800352CC 000320CC  40 81 00 08 */	ble lbl_800352D4
/* 800352D0 000320D0  FC 20 00 90 */	fmr f1, f0
lbl_800352D4:
/* 800352D4 000320D4  38 66 FF FF */	addi r3, r6, -1
/* 800352D8 000320D8  54 60 17 3A */	rlwinm r0, r3, 2, 0x1c, 0x1d
/* 800352DC 000320DC  54 66 07 BE */	clrlwi r6, r3, 0x1e
/* 800352E0 000320E0  7C 67 02 14 */	add r3, r7, r0
/* 800352E4 000320E4  48 00 00 0C */	b lbl_800352F0
lbl_800352E8:
/* 800352E8 000320E8  38 63 00 10 */	addi r3, r3, 0x10
/* 800352EC 000320EC  38 C6 00 04 */	addi r6, r6, 4
lbl_800352F0:
/* 800352F0 000320F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800352F4 000320F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800352F8 000320F8  41 80 FF F0 */	blt lbl_800352E8
/* 800352FC 000320FC  54 C0 10 3A */	slwi r0, r6, 2
/* 80035300 00032100  7C 67 02 14 */	add r3, r7, r0
/* 80035304 00032104  48 00 00 0C */	b lbl_80035310
lbl_80035308:
/* 80035308 00032108  38 63 FF FC */	addi r3, r3, -4
/* 8003530C 0003210C  38 C6 FF FF */	addi r6, r6, -1
lbl_80035310:
/* 80035310 00032110  28 06 00 00 */	cmplwi r6, 0
/* 80035314 00032114  41 82 00 10 */	beq lbl_80035324
/* 80035318 00032118  C0 03 00 00 */	lfs f0, 0(r3)
/* 8003531C 0003211C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80035320 00032120  41 80 FF E8 */	blt lbl_80035308
lbl_80035324:
/* 80035324 00032124  1C 06 00 30 */	mulli r0, r6, 0x30
/* 80035328 00032128  7C A5 02 14 */	add r5, r5, r0
/* 8003532C 0003212C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80035330 00032130  28 00 00 00 */	cmplwi r0, 0
/* 80035334 00032134  40 82 00 10 */	bne lbl_80035344
/* 80035338 00032138  80 65 00 00 */	lwz r3, 0(r5)
/* 8003533C 0003213C  48 09 2D B5 */	bl iModelRender__FP8RpAtomicP11RwMatrixTag
/* 80035340 00032140  48 00 01 30 */	b lbl_80035470
lbl_80035344:
/* 80035344 00032144  54 C0 10 3A */	slwi r0, r6, 2
/* 80035348 00032148  C0 65 00 04 */	lfs f3, 4(r5)
/* 8003534C 0003214C  7C 47 04 2E */	lfsx f2, r7, r0
/* 80035350 00032150  C0 02 85 40 */	lfs f0, lbl_803CCEC0-_SDA2_BASE_(r2)
/* 80035354 00032154  EC 21 10 28 */	fsubs f1, f1, f2
/* 80035358 00032158  EC 43 00 72 */	fmuls f2, f3, f1
/* 8003535C 0003215C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80035360 00032160  40 82 00 0C */	bne lbl_8003536C
/* 80035364 00032164  38 C5 00 20 */	addi r6, r5, 0x20
/* 80035368 00032168  48 00 00 F0 */	b lbl_80035458
lbl_8003536C:
/* 8003536C 0003216C  A8 E5 00 20 */	lha r7, 0x20(r5)
/* 80035370 00032170  3C 00 43 30 */	lis r0, 0x4330
/* 80035374 00032174  A8 65 00 28 */	lha r3, 0x28(r5)
/* 80035378 00032178  38 C1 00 08 */	addi r6, r1, 8
/* 8003537C 0003217C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80035380 00032180  7C 67 18 50 */	subf r3, r7, r3
/* 80035384 00032184  C8 22 85 48 */	lfd f1, lbl_803CCEC8-_SDA2_BASE_(r2)
/* 80035388 00032188  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8003538C 0003218C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80035390 00032190  90 61 00 14 */	stw r3, 0x14(r1)
/* 80035394 00032194  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80035398 00032198  90 01 00 30 */	stw r0, 0x30(r1)
/* 8003539C 0003219C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800353A0 000321A0  90 01 00 40 */	stw r0, 0x40(r1)
/* 800353A4 000321A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800353A8 000321A8  FC 00 00 1E */	fctiwz f0, f0
/* 800353AC 000321AC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800353B0 000321B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800353B4 000321B4  7C 07 02 14 */	add r0, r7, r0
/* 800353B8 000321B8  B0 01 00 08 */	sth r0, 8(r1)
/* 800353BC 000321BC  A8 65 00 22 */	lha r3, 0x22(r5)
/* 800353C0 000321C0  A8 05 00 2A */	lha r0, 0x2a(r5)
/* 800353C4 000321C4  7C 03 00 50 */	subf r0, r3, r0
/* 800353C8 000321C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800353CC 000321CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800353D0 000321D0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800353D4 000321D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800353D8 000321D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800353DC 000321DC  FC 00 00 1E */	fctiwz f0, f0
/* 800353E0 000321E0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800353E4 000321E4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800353E8 000321E8  7C 03 02 14 */	add r0, r3, r0
/* 800353EC 000321EC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800353F0 000321F0  A8 65 00 24 */	lha r3, 0x24(r5)
/* 800353F4 000321F4  A8 05 00 2C */	lha r0, 0x2c(r5)
/* 800353F8 000321F8  7C 03 00 50 */	subf r0, r3, r0
/* 800353FC 000321FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80035400 00032200  90 01 00 34 */	stw r0, 0x34(r1)
/* 80035404 00032204  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80035408 00032208  EC 00 08 28 */	fsubs f0, f0, f1
/* 8003540C 0003220C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80035410 00032210  FC 00 00 1E */	fctiwz f0, f0
/* 80035414 00032214  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80035418 00032218  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8003541C 0003221C  7C 03 02 14 */	add r0, r3, r0
/* 80035420 00032220  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80035424 00032224  A8 65 00 26 */	lha r3, 0x26(r5)
/* 80035428 00032228  A8 05 00 2E */	lha r0, 0x2e(r5)
/* 8003542C 0003222C  7C 03 00 50 */	subf r0, r3, r0
/* 80035430 00032230  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80035434 00032234  90 01 00 44 */	stw r0, 0x44(r1)
/* 80035438 00032238  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8003543C 0003223C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80035440 00032240  EC 02 00 32 */	fmuls f0, f2, f0
/* 80035444 00032244  FC 00 00 1E */	fctiwz f0, f0
/* 80035448 00032248  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8003544C 0003224C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80035450 00032250  7C 03 02 14 */	add r0, r3, r0
/* 80035454 00032254  B0 01 00 0E */	sth r0, 0xe(r1)
lbl_80035458:
/* 80035458 00032258  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 8003545C 0003225C  80 65 00 00 */	lwz r3, 0(r5)
/* 80035460 00032260  C0 25 00 08 */	lfs f1, 8(r5)
/* 80035464 00032264  38 A5 00 10 */	addi r5, r5, 0x10
/* 80035468 00032268  54 07 07 FE */	clrlwi r7, r0, 0x1f
/* 8003546C 0003226C  48 09 4A 21 */	bl iMorphRender__FP8RpAtomicP11RwMatrixTagPPsPsUif
lbl_80035470:
/* 80035470 00032270  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80035474 00032274  7C 08 03 A6 */	mtlr r0
/* 80035478 00032278  38 21 00 50 */	addi r1, r1, 0x50
/* 8003547C 0003227C  4E 80 00 20 */	blr 

.global xMorphSeqDuration__FP13xMorphSeqFile
xMorphSeqDuration__FP13xMorphSeqFile:
/* 80035480 00032280  80 03 00 08 */	lwz r0, 8(r3)
/* 80035484 00032284  54 00 10 3A */	slwi r0, r0, 2
/* 80035488 00032288  7C 63 02 14 */	add r3, r3, r0
/* 8003548C 0003228C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80035490 00032290  4E 80 00 20 */	blr 

.endif

.section .sdata2
lbl_803CCEC0:
	.incbin "baserom.dol", 0x2B6760, 0x8
lbl_803CCEC8:
	.incbin "baserom.dol", 0x2B6768, 0x8