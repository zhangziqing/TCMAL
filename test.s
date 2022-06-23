
test.elf:     file format elf32-loongarch
test.elf


Disassembly of section .text:

1c000000 <_start>:
1c000000:	00150016 	move	$r22,$r0
1c000004:	1c000003 	pcaddu12i	$r3,0
1c000008:	2883d063 	ld.w	$r3,$r3,244(0xf4)
1c00000c:	5400bc00 	bl	188(0xbc) # 1c0000c8 <_trm_init>

1c000010 <main>:
1c000010:	02b94063 	addi.w	$r3,$r3,-432(0xe50)
1c000014:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c000018:	2980606c 	st.w	$r12,$r3,24(0x18)
1c00001c:	2980806c 	st.w	$r12,$r3,32(0x20)
1c000020:	2980906c 	st.w	$r12,$r3,36(0x24)
1c000024:	29807060 	st.w	$r0,$r3,28(0x1c)
1c000028:	0280a06d 	addi.w	$r13,$r3,40(0x28)
1c00002c:	0281b070 	addi.w	$r16,$r3,108(0x6c)
1c000030:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c000034:	50000c00 	b	12(0xc) # 1c000040 <main+0x30>
1c000038:	28bff1af 	ld.w	$r15,$r13,-4(0xffc)
1c00003c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000040:	2880606e 	ld.w	$r14,$r3,24(0x18)
1c000044:	00103d8c 	add.w	$r12,$r12,$r15
1c000048:	298001ac 	st.w	$r12,$r13,0
1c00004c:	0015b98e 	xor	$r14,$r12,$r14
1c000050:	2980606e 	st.w	$r14,$r3,24(0x18)
1c000054:	2880606e 	ld.w	$r14,$r3,24(0x18)
1c000058:	0015b98e 	xor	$r14,$r12,$r14
1c00005c:	2980706e 	st.w	$r14,$r3,28(0x1c)
1c000060:	5fffda0d 	bne	$r16,$r13,-40(0x3ffd8) # 1c000038 <main+0x28>
1c000064:	0015000c 	move	$r12,$r0
1c000068:	1c000010 	pcaddu12i	$r16,0
1c00006c:	02820210 	addi.w	$r16,$r16,128(0x80)
1c000070:	02816812 	addi.w	$r18,$r0,90(0x5a)
1c000074:	02810013 	addi.w	$r19,$r0,64(0x40)
1c000078:	02803011 	addi.w	$r17,$r0,12(0xc)
1c00007c:	0010320e 	add.w	$r14,$r16,$r12
1c000080:	2a0001cd 	ld.bu	$r13,$r14,0
1c000084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000088:	2900306d 	st.b	$r13,$r3,12(0xc)
1c00008c:	2800306d 	ld.b	$r13,$r3,12(0xc)
1c000090:	6400164d 	bge	$r18,$r13,20(0x14) # 1c0000a4 <main+0x94>
1c000094:	2a0001cd 	ld.bu	$r13,$r14,0
1c000098:	2900306d 	st.b	$r13,$r3,12(0xc)
1c00009c:	2800306d 	ld.b	$r13,$r3,12(0xc)
1c0000a0:	64001a6d 	bge	$r19,$r13,24(0x18) # 1c0000b8 <main+0xa8>
1c0000a4:	2a0001cd 	ld.bu	$r13,$r14,0
1c0000a8:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c0000ac:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0000b0:	2800306d 	ld.b	$r13,$r3,12(0xc)
1c0000b4:	290001cd 	st.b	$r13,$r14,0
1c0000b8:	5fffc591 	bne	$r12,$r17,-60(0x3ffc4) # 1c00007c <main+0x6c>
1c0000bc:	00150004 	move	$r4,$r0
1c0000c0:	0286c063 	addi.w	$r3,$r3,432(0x1b0)
1c0000c4:	4c000020 	jirl	$r0,$r1,0

1c0000c8 <_trm_init>:
1c0000c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0000cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0000d0:	57ff43ff 	bl	-192(0xfffff40) # 1c000010 <main>
1c0000d4:	00150084 	move	$r4,$r4
1c0000d8:	deadbeef 	0xdeadbeef
1c0000dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0000e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0000e4:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c0000e8 <hello>:
1c0000e8:	6c6c6548 	bgeu	$r10,$r8,27748(0x6c64) # 1c006d4c <_stack_top+0x5d4c>
1c0000ec:	6f572c6f 	bgeu	$r3,$r15,-43220(0x3572c) # 1bff5818 <_entry_offset+0x1bff5818>
1c0000f0:	00646c72 	bstrins.w	$r18,$r3,0x4,0x1b

Disassembly of section .got:

1c0000f4 <_GLOBAL_OFFSET_TABLE_>:
1c0000f4:	00000000 	0x00000000
1c0000f8:	1c009000 	pcaddu12i	$r0,1152(0x480)

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
