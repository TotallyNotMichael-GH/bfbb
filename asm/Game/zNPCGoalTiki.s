.include "macros.inc"

.if 0

.section .text  # 0x800ECBFC - 0x800ED1E0

.global GOALCreate_Tiki__FiP10RyzMemGrowPv
GOALCreate_Tiki__FiP10RyzMemGrowPv:
/* 800ECBFC 000E99FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECC00 000E9A00  7C 08 02 A6 */	mflr r0
/* 800ECC04 000E9A04  3C C0 4E 47 */	lis r6, 0x4E475433@ha
/* 800ECC08 000E9A08  7C 85 23 78 */	mr r5, r4
/* 800ECC0C 000E9A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECC10 000E9A10  38 06 54 33 */	addi r0, r6, 0x4E475433@l
/* 800ECC14 000E9A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECC18 000E9A18  7C 7F 1B 78 */	mr r31, r3
/* 800ECC1C 000E9A1C  7C 1F 00 00 */	cmpw r31, r0
/* 800ECC20 000E9A20  41 82 00 B4 */	beq lbl_800ECCD4
/* 800ECC24 000E9A24  40 80 00 24 */	bge lbl_800ECC48
/* 800ECC28 000E9A28  38 06 54 31 */	addi r0, r6, 0x5431
/* 800ECC2C 000E9A2C  7C 1F 00 00 */	cmpw r31, r0
/* 800ECC30 000E9A30  41 82 00 54 */	beq lbl_800ECC84
/* 800ECC34 000E9A34  40 80 00 78 */	bge lbl_800ECCAC
/* 800ECC38 000E9A38  38 06 54 30 */	addi r0, r6, 0x5430
/* 800ECC3C 000E9A3C  7C 1F 00 00 */	cmpw r31, r0
/* 800ECC40 000E9A40  40 80 00 1C */	bge lbl_800ECC5C
/* 800ECC44 000E9A44  48 00 01 08 */	b lbl_800ECD4C
lbl_800ECC48:
/* 800ECC48 000E9A48  38 06 54 35 */	addi r0, r6, 0x5435
/* 800ECC4C 000E9A4C  7C 1F 00 00 */	cmpw r31, r0
/* 800ECC50 000E9A50  41 82 00 D4 */	beq lbl_800ECD24
/* 800ECC54 000E9A54  40 80 00 F8 */	bge lbl_800ECD4C
/* 800ECC58 000E9A58  48 00 00 A4 */	b lbl_800ECCFC
lbl_800ECC5C:
/* 800ECC5C 000E9A5C  7F E4 FB 78 */	mr r4, r31
/* 800ECC60 000E9A60  38 60 00 50 */	li r3, 0x50
/* 800ECC64 000E9A64  48 02 24 ED */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECC68 000E9A68  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECC6C 000E9A6C  41 82 00 10 */	beq lbl_800ECC7C
/* 800ECC70 000E9A70  7F E4 FB 78 */	mr r4, r31
/* 800ECC74 000E9A74  48 00 05 19 */	bl __ct__16zNPCGoalTikiIdleFi
/* 800ECC78 000E9A78  7C 60 1B 78 */	mr r0, r3
lbl_800ECC7C:
/* 800ECC7C 000E9A7C  7C 03 03 78 */	mr r3, r0
/* 800ECC80 000E9A80  48 00 00 F0 */	b lbl_800ECD70
lbl_800ECC84:
/* 800ECC84 000E9A84  7F E4 FB 78 */	mr r4, r31
/* 800ECC88 000E9A88  38 60 00 64 */	li r3, 0x64
/* 800ECC8C 000E9A8C  48 02 24 C5 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECC90 000E9A90  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECC94 000E9A94  41 82 00 10 */	beq lbl_800ECCA4
/* 800ECC98 000E9A98  7F E4 FB 78 */	mr r4, r31
/* 800ECC9C 000E9A9C  48 00 04 B5 */	bl __ct__18zNPCGoalTikiPatrolFi
/* 800ECCA0 000E9AA0  7C 60 1B 78 */	mr r0, r3
lbl_800ECCA4:
/* 800ECCA4 000E9AA4  7C 03 03 78 */	mr r3, r0
/* 800ECCA8 000E9AA8  48 00 00 C8 */	b lbl_800ECD70
lbl_800ECCAC:
/* 800ECCAC 000E9AAC  7F E4 FB 78 */	mr r4, r31
/* 800ECCB0 000E9AB0  38 60 00 4C */	li r3, 0x4c
/* 800ECCB4 000E9AB4  48 02 24 9D */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECCB8 000E9AB8  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECCBC 000E9ABC  41 82 00 10 */	beq lbl_800ECCCC
/* 800ECCC0 000E9AC0  7F E4 FB 78 */	mr r4, r31
/* 800ECCC4 000E9AC4  48 00 04 51 */	bl __ct__16zNPCGoalTikiHideFi
/* 800ECCC8 000E9AC8  7C 60 1B 78 */	mr r0, r3
lbl_800ECCCC:
/* 800ECCCC 000E9ACC  7C 03 03 78 */	mr r3, r0
/* 800ECCD0 000E9AD0  48 00 00 A0 */	b lbl_800ECD70
lbl_800ECCD4:
/* 800ECCD4 000E9AD4  7F E4 FB 78 */	mr r4, r31
/* 800ECCD8 000E9AD8  38 60 00 54 */	li r3, 0x54
/* 800ECCDC 000E9ADC  48 02 24 75 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECCE0 000E9AE0  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECCE4 000E9AE4  41 82 00 10 */	beq lbl_800ECCF4
/* 800ECCE8 000E9AE8  7F E4 FB 78 */	mr r4, r31
/* 800ECCEC 000E9AEC  48 00 03 ED */	bl __ct__17zNPCGoalTikiCountFi
/* 800ECCF0 000E9AF0  7C 60 1B 78 */	mr r0, r3
lbl_800ECCF4:
/* 800ECCF4 000E9AF4  7C 03 03 78 */	mr r3, r0
/* 800ECCF8 000E9AF8  48 00 00 78 */	b lbl_800ECD70
lbl_800ECCFC:
/* 800ECCFC 000E9AFC  7F E4 FB 78 */	mr r4, r31
/* 800ECD00 000E9B00  38 60 00 50 */	li r3, 0x50
/* 800ECD04 000E9B04  48 02 24 4D */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECD08 000E9B08  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECD0C 000E9B0C  41 82 00 10 */	beq lbl_800ECD1C
/* 800ECD10 000E9B10  7F E4 FB 78 */	mr r4, r31
/* 800ECD14 000E9B14  48 00 03 89 */	bl __ct__17zNPCGoalTikiDyingFi
/* 800ECD18 000E9B18  7C 60 1B 78 */	mr r0, r3
lbl_800ECD1C:
/* 800ECD1C 000E9B1C  7C 03 03 78 */	mr r3, r0
/* 800ECD20 000E9B20  48 00 00 50 */	b lbl_800ECD70
lbl_800ECD24:
/* 800ECD24 000E9B24  7F E4 FB 78 */	mr r4, r31
/* 800ECD28 000E9B28  38 60 00 50 */	li r3, 0x50
/* 800ECD2C 000E9B2C  48 02 24 25 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECD30 000E9B30  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECD34 000E9B34  41 82 00 10 */	beq lbl_800ECD44
/* 800ECD38 000E9B38  7F E4 FB 78 */	mr r4, r31
/* 800ECD3C 000E9B3C  48 00 03 25 */	bl __ct__16zNPCGoalTikiDeadFi
/* 800ECD40 000E9B40  7C 60 1B 78 */	mr r0, r3
lbl_800ECD44:
/* 800ECD44 000E9B44  7C 03 03 78 */	mr r3, r0
/* 800ECD48 000E9B48  48 00 00 28 */	b lbl_800ECD70
lbl_800ECD4C:
/* 800ECD4C 000E9B4C  7F E4 FB 78 */	mr r4, r31
/* 800ECD50 000E9B50  38 60 00 50 */	li r3, 0x50
/* 800ECD54 000E9B54  48 02 23 FD */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 800ECD58 000E9B58  7C 60 1B 79 */	or. r0, r3, r3
/* 800ECD5C 000E9B5C  41 82 00 10 */	beq lbl_800ECD6C
/* 800ECD60 000E9B60  7F E4 FB 78 */	mr r4, r31
/* 800ECD64 000E9B64  48 00 04 29 */	bl __ct__16zNPCGoalTikiIdleFi
/* 800ECD68 000E9B68  7C 60 1B 78 */	mr r0, r3
lbl_800ECD6C:
/* 800ECD6C 000E9B6C  7C 03 03 78 */	mr r3, r0
lbl_800ECD70:
/* 800ECD70 000E9B70  28 03 00 00 */	cmplwi r3, 0
/* 800ECD74 000E9B74  41 82 00 08 */	beq lbl_800ECD7C
/* 800ECD78 000E9B78  38 63 00 0C */	addi r3, r3, 0xc
lbl_800ECD7C:
/* 800ECD7C 000E9B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECD80 000E9B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECD84 000E9B84  7C 08 03 A6 */	mtlr r0
/* 800ECD88 000E9B88  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECD8C 000E9B8C  4E 80 00 20 */	blr 

Enter__16zNPCGoalTikiIdleFfPv:
/* 800ECD90 000E9B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECD94 000E9B94  7C 08 02 A6 */	mflr r0
/* 800ECD98 000E9B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECD9C 000E9B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECDA0 000E9BA0  93 C1 00 08 */	stw r30, 8(r1)
/* 800ECDA4 000E9BA4  7C 7E 1B 78 */	mr r30, r3
/* 800ECDA8 000E9BA8  48 02 1C ED */	bl GetOwner__5xGoalCFv
/* 800ECDAC 000E9BAC  7C 7F 1B 78 */	mr r31, r3
/* 800ECDB0 000E9BB0  4B F6 97 35 */	bl SelfType__9xNPCBasicCFv
/* 800ECDB4 000E9BB4  3C 03 B1 AC */	addis r0, r3, 0xb1ac
/* 800ECDB8 000E9BB8  28 00 54 33 */	cmplwi r0, 0x5433
/* 800ECDBC 000E9BBC  40 82 00 10 */	bne lbl_800ECDCC
/* 800ECDC0 000E9BC0  C0 02 9A 88 */	lfs f0, lbl_803CE408-_SDA2_BASE_(r2)
/* 800ECDC4 000E9BC4  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 800ECDC8 000E9BC8  48 00 00 24 */	b lbl_800ECDEC
lbl_800ECDCC:
/* 800ECDCC 000E9BCC  80 7F 02 10 */	lwz r3, 0x210(r31)
/* 800ECDD0 000E9BD0  28 03 00 00 */	cmplwi r3, 0
/* 800ECDD4 000E9BD4  40 82 00 10 */	bne lbl_800ECDE4
/* 800ECDD8 000E9BD8  C0 02 9A 8C */	lfs f0, lbl_803CE40C-_SDA2_BASE_(r2)
/* 800ECDDC 000E9BDC  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 800ECDE0 000E9BE0  48 00 00 0C */	b lbl_800ECDEC
lbl_800ECDE4:
/* 800ECDE4 000E9BE4  4B FB A0 91 */	bl zMovePointGetDelay__FPC10zMovePoint
/* 800ECDE8 000E9BE8  D0 3E 00 4C */	stfs f1, 0x4c(r30)
lbl_800ECDEC:
/* 800ECDEC 000E9BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECDF0 000E9BF0  38 60 00 00 */	li r3, 0
/* 800ECDF4 000E9BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECDF8 000E9BF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ECDFC 000E9BFC  7C 08 03 A6 */	mtlr r0
/* 800ECE00 000E9C00  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECE04 000E9C04  4E 80 00 20 */	blr 

Enter__18zNPCGoalTikiPatrolFfPv:
/* 800ECE08 000E9C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECE0C 000E9C0C  7C 08 02 A6 */	mflr r0
/* 800ECE10 000E9C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECE14 000E9C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECE18 000E9C18  93 C1 00 08 */	stw r30, 8(r1)
/* 800ECE1C 000E9C1C  7C 7E 1B 78 */	mr r30, r3
/* 800ECE20 000E9C20  48 02 1C 75 */	bl GetOwner__5xGoalCFv
/* 800ECE24 000E9C24  7C 7F 1B 78 */	mr r31, r3
/* 800ECE28 000E9C28  80 63 02 10 */	lwz r3, 0x210(r3)
/* 800ECE2C 000E9C2C  4B FB A0 29 */	bl zMovePointGetPos__FPC10zMovePoint
/* 800ECE30 000E9C30  7C 64 1B 78 */	mr r4, r3
/* 800ECE34 000E9C34  38 7E 00 4C */	addi r3, r30, 0x4c
/* 800ECE38 000E9C38  4B F6 16 A5 */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 800ECE3C 000E9C3C  38 7E 00 58 */	addi r3, r30, 0x58
/* 800ECE40 000E9C40  38 9E 00 4C */	addi r4, r30, 0x4c
/* 800ECE44 000E9C44  38 BF 03 18 */	addi r5, r31, 0x318
/* 800ECE48 000E9C48  4B F2 18 49 */	bl xVec3Sub__FP5xVec3PC5xVec3PC5xVec3
/* 800ECE4C 000E9C4C  38 7E 00 58 */	addi r3, r30, 0x58
/* 800ECE50 000E9C50  7C 64 1B 78 */	mr r4, r3
/* 800ECE54 000E9C54  4B F6 14 9D */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 800ECE58 000E9C58  80 9F 01 D8 */	lwz r4, 0x1d8(r31)
/* 800ECE5C 000E9C5C  38 7E 00 58 */	addi r3, r30, 0x58
/* 800ECE60 000E9C60  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800ECE64 000E9C64  4B F2 EA D5 */	bl xVec3SMulBy__FP5xVec3f
/* 800ECE68 000E9C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECE6C 000E9C6C  38 60 00 00 */	li r3, 0
/* 800ECE70 000E9C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECE74 000E9C74  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ECE78 000E9C78  7C 08 03 A6 */	mtlr r0
/* 800ECE7C 000E9C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECE80 000E9C80  4E 80 00 20 */	blr 

Enter__16zNPCGoalTikiHideFfPv:
/* 800ECE84 000E9C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECE88 000E9C88  7C 08 02 A6 */	mflr r0
/* 800ECE8C 000E9C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECE90 000E9C90  48 02 1C 05 */	bl GetOwner__5xGoalCFv
/* 800ECE94 000E9C94  38 00 00 00 */	li r0, 0
/* 800ECE98 000E9C98  90 03 01 C8 */	stw r0, 0x1c8(r3)
/* 800ECE9C 000E9C9C  38 60 00 00 */	li r3, 0
/* 800ECEA0 000E9CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECEA4 000E9CA4  7C 08 03 A6 */	mtlr r0
/* 800ECEA8 000E9CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECEAC 000E9CAC  4E 80 00 20 */	blr 

Exit__16zNPCGoalTikiHideFfPv:
/* 800ECEB0 000E9CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECEB4 000E9CB4  7C 08 02 A6 */	mflr r0
/* 800ECEB8 000E9CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECEBC 000E9CBC  48 02 1B D9 */	bl GetOwner__5xGoalCFv
/* 800ECEC0 000E9CC0  3C 80 FF FF */	lis r4, 0xFFFF0001@ha
/* 800ECEC4 000E9CC4  38 04 00 01 */	addi r0, r4, 0xFFFF0001@l
/* 800ECEC8 000E9CC8  90 03 01 C8 */	stw r0, 0x1c8(r3)
/* 800ECECC 000E9CCC  38 60 00 00 */	li r3, 0
/* 800ECED0 000E9CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECED4 000E9CD4  7C 08 03 A6 */	mtlr r0
/* 800ECED8 000E9CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECEDC 000E9CDC  4E 80 00 20 */	blr 

Enter__17zNPCGoalTikiCountFfPv:
/* 800ECEE0 000E9CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECEE4 000E9CE4  7C 08 02 A6 */	mflr r0
/* 800ECEE8 000E9CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECEEC 000E9CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECEF0 000E9CF0  7C 7F 1B 78 */	mr r31, r3
/* 800ECEF4 000E9CF4  48 02 1B A1 */	bl GetOwner__5xGoalCFv
/* 800ECEF8 000E9CF8  C0 02 9A 90 */	lfs f0, lbl_803CE410-_SDA2_BASE_(r2)
/* 800ECEFC 000E9CFC  38 00 00 00 */	li r0, 0
/* 800ECF00 000E9D00  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 800ECF04 000E9D04  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800ECF08 000E9D08  C0 02 9A 94 */	lfs f0, lbl_803CE414-_SDA2_BASE_(r2)
/* 800ECF0C 000E9D0C  D0 03 03 0C */	stfs f0, 0x30c(r3)
/* 800ECF10 000E9D10  38 60 00 00 */	li r3, 0
/* 800ECF14 000E9D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECF18 000E9D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECF1C 000E9D1C  7C 08 03 A6 */	mtlr r0
/* 800ECF20 000E9D20  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECF24 000E9D24  4E 80 00 20 */	blr 

Enter__17zNPCGoalTikiDyingFfPv:
/* 800ECF28 000E9D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECF2C 000E9D2C  7C 08 02 A6 */	mflr r0
/* 800ECF30 000E9D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECF34 000E9D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECF38 000E9D38  7C 7F 1B 78 */	mr r31, r3
/* 800ECF3C 000E9D3C  48 02 1B 59 */	bl GetOwner__5xGoalCFv
/* 800ECF40 000E9D40  C0 03 03 08 */	lfs f0, 0x308(r3)
/* 800ECF44 000E9D44  38 00 00 00 */	li r0, 0
/* 800ECF48 000E9D48  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 800ECF4C 000E9D4C  90 03 01 C8 */	stw r0, 0x1c8(r3)
/* 800ECF50 000E9D50  38 60 00 00 */	li r3, 0
/* 800ECF54 000E9D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECF58 000E9D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECF5C 000E9D5C  7C 08 03 A6 */	mtlr r0
/* 800ECF60 000E9D60  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECF64 000E9D64  4E 80 00 20 */	blr 

Exit__17zNPCGoalTikiDyingFfPv:
/* 800ECF68 000E9D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECF6C 000E9D6C  7C 08 02 A6 */	mflr r0
/* 800ECF70 000E9D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECF74 000E9D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECF78 000E9D78  48 02 1B 1D */	bl GetOwner__5xGoalCFv
/* 800ECF7C 000E9D7C  7C 7F 1B 78 */	mr r31, r3
/* 800ECF80 000E9D80  48 01 CA FD */	bl zNPCTiki_ExplodeFX__FP8zNPCTiki
/* 800ECF84 000E9D84  7F E4 FB 78 */	mr r4, r31
/* 800ECF88 000E9D88  38 60 00 0A */	li r3, 0xa
/* 800ECF8C 000E9D8C  4B FC 00 F9 */	bl zRumbleStart__F16_tagSDRumbleTypeP4xEnt
/* 800ECF90 000E9D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECF94 000E9D94  38 60 00 00 */	li r3, 0
/* 800ECF98 000E9D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECF9C 000E9D9C  7C 08 03 A6 */	mtlr r0
/* 800ECFA0 000E9DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECFA4 000E9DA4  4E 80 00 20 */	blr 

Enter__16zNPCGoalTikiDeadFfPv:
/* 800ECFA8 000E9DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECFAC 000E9DAC  7C 08 02 A6 */	mflr r0
/* 800ECFB0 000E9DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECFB4 000E9DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECFB8 000E9DB8  48 02 1A DD */	bl GetOwner__5xGoalCFv
/* 800ECFBC 000E9DBC  80 03 02 A0 */	lwz r0, 0x2a0(r3)
/* 800ECFC0 000E9DC0  7C 7F 1B 78 */	mr r31, r3
/* 800ECFC4 000E9DC4  54 00 06 2A */	rlwinm r0, r0, 0, 0x18, 0x15
/* 800ECFC8 000E9DC8  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 800ECFCC 000E9DCC  80 03 02 A0 */	lwz r0, 0x2a0(r3)
/* 800ECFD0 000E9DD0  60 00 01 00 */	ori r0, r0, 0x100
/* 800ECFD4 000E9DD4  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 800ECFD8 000E9DD8  4B F2 E8 11 */	bl xEntHide__FP4xEnt
/* 800ECFDC 000E9DDC  38 00 00 00 */	li r0, 0
/* 800ECFE0 000E9DE0  7F E3 FB 78 */	mr r3, r31
/* 800ECFE4 000E9DE4  98 1F 00 22 */	stb r0, 0x22(r31)
/* 800ECFE8 000E9DE8  98 1F 00 23 */	stb r0, 0x23(r31)
/* 800ECFEC 000E9DEC  48 00 4D 55 */	bl GiveReward__10zNPCCommonFv
/* 800ECFF0 000E9DF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 800ECFF4 000E9DF4  38 80 00 24 */	li r4, 0x24
/* 800ECFF8 000E9DF8  4B F3 25 6D */	bl zEntEvent__FUiUi
/* 800ECFFC 000E9DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED000 000E9E00  38 60 00 00 */	li r3, 0
/* 800ED004 000E9E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED008 000E9E08  7C 08 03 A6 */	mtlr r0
/* 800ED00C 000E9E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED010 000E9E10  4E 80 00 20 */	blr 

Exit__16zNPCGoalTikiDeadFfPv:
/* 800ED014 000E9E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED018 000E9E18  7C 08 02 A6 */	mflr r0
/* 800ED01C 000E9E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED020 000E9E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED024 000E9E24  48 02 1A 71 */	bl GetOwner__5xGoalCFv
/* 800ED028 000E9E28  7C 7F 1B 78 */	mr r31, r3
/* 800ED02C 000E9E2C  4B F2 E7 CD */	bl xEntShow__FP4xEnt
/* 800ED030 000E9E30  38 80 00 10 */	li r4, 0x10
/* 800ED034 000E9E34  3C 60 FF FF */	lis r3, 0xFFFF0001@ha
/* 800ED038 000E9E38  98 9F 00 22 */	stb r4, 0x22(r31)
/* 800ED03C 000E9E3C  38 03 00 01 */	addi r0, r3, 0xFFFF0001@l
/* 800ED040 000E9E40  38 60 00 00 */	li r3, 0
/* 800ED044 000E9E44  98 9F 00 23 */	stb r4, 0x23(r31)
/* 800ED048 000E9E48  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 800ED04C 000E9E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED050 000E9E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED054 000E9E54  7C 08 03 A6 */	mtlr r0
/* 800ED058 000E9E58  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED05C 000E9E5C  4E 80 00 20 */	blr 

.global __ct__16zNPCGoalTikiDeadFi
__ct__16zNPCGoalTikiDeadFi:
/* 800ED060 000E9E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED064 000E9E64  7C 08 02 A6 */	mflr r0
/* 800ED068 000E9E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED06C 000E9E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED070 000E9E70  7C 7F 1B 78 */	mr r31, r3
/* 800ED074 000E9E74  4B FE BF 81 */	bl __ct__14zNPCGoalCommonFi
/* 800ED078 000E9E78  3C 80 80 29 */	lis r4, __vt__16zNPCGoalTikiDead@ha
/* 800ED07C 000E9E7C  7F E3 FB 78 */	mr r3, r31
/* 800ED080 000E9E80  38 04 3F 18 */	addi r0, r4, __vt__16zNPCGoalTikiDead@l
/* 800ED084 000E9E84  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800ED088 000E9E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED08C 000E9E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED090 000E9E90  7C 08 03 A6 */	mtlr r0
/* 800ED094 000E9E94  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED098 000E9E98  4E 80 00 20 */	blr 

.global __ct__17zNPCGoalTikiDyingFi
__ct__17zNPCGoalTikiDyingFi:
/* 800ED09C 000E9E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED0A0 000E9EA0  7C 08 02 A6 */	mflr r0
/* 800ED0A4 000E9EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED0A8 000E9EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED0AC 000E9EAC  7C 7F 1B 78 */	mr r31, r3
/* 800ED0B0 000E9EB0  4B FE BF 45 */	bl __ct__14zNPCGoalCommonFi
/* 800ED0B4 000E9EB4  3C 80 80 29 */	lis r4, __vt__17zNPCGoalTikiDying@ha
/* 800ED0B8 000E9EB8  7F E3 FB 78 */	mr r3, r31
/* 800ED0BC 000E9EBC  38 04 3F 4C */	addi r0, r4, __vt__17zNPCGoalTikiDying@l
/* 800ED0C0 000E9EC0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800ED0C4 000E9EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED0C8 000E9EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED0CC 000E9ECC  7C 08 03 A6 */	mtlr r0
/* 800ED0D0 000E9ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED0D4 000E9ED4  4E 80 00 20 */	blr 

.global __ct__17zNPCGoalTikiCountFi
__ct__17zNPCGoalTikiCountFi:
/* 800ED0D8 000E9ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED0DC 000E9EDC  7C 08 02 A6 */	mflr r0
/* 800ED0E0 000E9EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED0E4 000E9EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED0E8 000E9EE8  7C 7F 1B 78 */	mr r31, r3
/* 800ED0EC 000E9EEC  4B FE BF 09 */	bl __ct__14zNPCGoalCommonFi
/* 800ED0F0 000E9EF0  3C 80 80 29 */	lis r4, __vt__17zNPCGoalTikiCount@ha
/* 800ED0F4 000E9EF4  7F E3 FB 78 */	mr r3, r31
/* 800ED0F8 000E9EF8  38 04 3F 80 */	addi r0, r4, __vt__17zNPCGoalTikiCount@l
/* 800ED0FC 000E9EFC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800ED100 000E9F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED104 000E9F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED108 000E9F08  7C 08 03 A6 */	mtlr r0
/* 800ED10C 000E9F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED110 000E9F10  4E 80 00 20 */	blr 

.global __ct__16zNPCGoalTikiHideFi
__ct__16zNPCGoalTikiHideFi:
/* 800ED114 000E9F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED118 000E9F18  7C 08 02 A6 */	mflr r0
/* 800ED11C 000E9F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED120 000E9F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED124 000E9F24  7C 7F 1B 78 */	mr r31, r3
/* 800ED128 000E9F28  4B FE BE CD */	bl __ct__14zNPCGoalCommonFi
/* 800ED12C 000E9F2C  3C 80 80 29 */	lis r4, __vt__16zNPCGoalTikiHide@ha
/* 800ED130 000E9F30  7F E3 FB 78 */	mr r3, r31
/* 800ED134 000E9F34  38 04 3F B4 */	addi r0, r4, __vt__16zNPCGoalTikiHide@l
/* 800ED138 000E9F38  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800ED13C 000E9F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED140 000E9F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED144 000E9F44  7C 08 03 A6 */	mtlr r0
/* 800ED148 000E9F48  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED14C 000E9F4C  4E 80 00 20 */	blr 

.global __ct__18zNPCGoalTikiPatrolFi
__ct__18zNPCGoalTikiPatrolFi:
/* 800ED150 000E9F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED154 000E9F54  7C 08 02 A6 */	mflr r0
/* 800ED158 000E9F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED15C 000E9F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED160 000E9F60  7C 7F 1B 78 */	mr r31, r3
/* 800ED164 000E9F64  4B FE BE 91 */	bl __ct__14zNPCGoalCommonFi
/* 800ED168 000E9F68  3C 80 80 29 */	lis r4, __vt__18zNPCGoalTikiPatrol@ha
/* 800ED16C 000E9F6C  7F E3 FB 78 */	mr r3, r31
/* 800ED170 000E9F70  38 04 3F E8 */	addi r0, r4, __vt__18zNPCGoalTikiPatrol@l
/* 800ED174 000E9F74  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800ED178 000E9F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED17C 000E9F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED180 000E9F80  7C 08 03 A6 */	mtlr r0
/* 800ED184 000E9F84  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED188 000E9F88  4E 80 00 20 */	blr 

.global __ct__16zNPCGoalTikiIdleFi
__ct__16zNPCGoalTikiIdleFi:
/* 800ED18C 000E9F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED190 000E9F90  7C 08 02 A6 */	mflr r0
/* 800ED194 000E9F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED198 000E9F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED19C 000E9F9C  7C 7F 1B 78 */	mr r31, r3
/* 800ED1A0 000E9FA0  4B FE BE 55 */	bl __ct__14zNPCGoalCommonFi
/* 800ED1A4 000E9FA4  3C 80 80 29 */	lis r4, __vt__16zNPCGoalTikiIdle@ha
/* 800ED1A8 000E9FA8  7F E3 FB 78 */	mr r3, r31
/* 800ED1AC 000E9FAC  38 04 40 1C */	addi r0, r4, __vt__16zNPCGoalTikiIdle@l
/* 800ED1B0 000E9FB0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800ED1B4 000E9FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED1B8 000E9FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED1BC 000E9FBC  7C 08 03 A6 */	mtlr r0
/* 800ED1C0 000E9FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED1C4 000E9FC4  4E 80 00 20 */	blr 

Clear__16zNPCGoalTikiDeadFv:
/* 800ED1C8 000E9FC8  4E 80 00 20 */	blr 

Clear__17zNPCGoalTikiDyingFv:
/* 800ED1CC 000E9FCC  4E 80 00 20 */	blr 

Clear__17zNPCGoalTikiCountFv:
/* 800ED1D0 000E9FD0  4E 80 00 20 */	blr 

Clear__16zNPCGoalTikiHideFv:
/* 800ED1D4 000E9FD4  4E 80 00 20 */	blr 

Clear__18zNPCGoalTikiPatrolFv:
/* 800ED1D8 000E9FD8  4E 80 00 20 */	blr 

Clear__16zNPCGoalTikiIdleFv:
/* 800ED1DC 000E9FDC  4E 80 00 20 */	blr 

.endif

.section .sdata2
lbl_803CE408:
	.incbin "baserom.dol", 0x2B7CA8, 0x4
lbl_803CE40C:
	.incbin "baserom.dol", 0x2B7CAC, 0x4
lbl_803CE410:
	.incbin "baserom.dol", 0x2B7CB0, 0x4
lbl_803CE414:
	.incbin "baserom.dol", 0x2B7CB4, 0x4