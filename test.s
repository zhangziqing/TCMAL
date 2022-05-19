
test.elf:     file format elf32-tradlittlemips
test.elf


Disassembly of section .text:

00000000 <_start>:
   0:	0000f021 	move	s8,zero
   4:	8f9d012c 	lw	sp,300(gp)
   8:	8f990130 	lw	t9,304(gp)
   c:	0320f809 	jalr	t9
  10:	00000000 	nop

00000014 <main>:
  14:	27bdfe60 	addiu	sp,sp,-416
  18:	afbc0000 	sw	gp,0(sp)
  1c:	24020001 	li	v0,1
  20:	afa20008 	sw	v0,8(sp)
  24:	afa20010 	sw	v0,16(sp)
  28:	afa20014 	sw	v0,20(sp)
  2c:	afa0000c 	sw	zero,12(sp)
  30:	27a50014 	addiu	a1,sp,20
  34:	27a6005c 	addiu	a2,sp,92
  38:	8ca40000 	lw	a0,0(a1)
  3c:	8ca3fffc 	lw	v1,-4(a1)
  40:	8fa20008 	lw	v0,8(sp)
  44:	00641821 	addu	v1,v1,a0
  48:	00621026 	xor	v0,v1,v0
  4c:	afa20008 	sw	v0,8(sp)
  50:	8fa40008 	lw	a0,8(sp)
  54:	aca30004 	sw	v1,4(a1)
  58:	00641826 	xor	v1,v1,a0
  5c:	24a50004 	addiu	a1,a1,4
  60:	afa3000c 	sw	v1,12(sp)
  64:	14a6fff4 	bne	a1,a2,38 <main+0x24>
  68:	3c020000 	lui	v0,0x0
  6c:	24460110 	addiu	a2,v0,272
  70:	00001821 	move	v1,zero
  74:	2407000c 	li	a3,12
  78:	00662021 	addu	a0,v1,a2
  7c:	90820000 	lbu	v0,0(a0)
  80:	00802821 	move	a1,a0
  84:	00021600 	sll	v0,v0,0x18
  88:	00021603 	sra	v0,v0,0x18
  8c:	2842005b 	slti	v0,v0,91
  90:	14400007 	bnez	v0,b0 <main+0x9c>
  94:	24630001 	addiu	v1,v1,1
  98:	90820000 	lbu	v0,0(a0)
  9c:	00021600 	sll	v0,v0,0x18
  a0:	00021603 	sra	v0,v0,0x18
  a4:	28420041 	slti	v0,v0,65
  a8:	14400006 	bnez	v0,c4 <main+0xb0>
  ac:	00000000 	nop
  b0:	90a20000 	lbu	v0,0(a1)
  b4:	24420020 	addiu	v0,v0,32
  b8:	00021600 	sll	v0,v0,0x18
  bc:	00021603 	sra	v0,v0,0x18
  c0:	a0a20000 	sb	v0,0(a1)
  c4:	1467ffed 	bne	v1,a3,7c <main+0x68>
  c8:	00662021 	addu	a0,v1,a2
  cc:	00001021 	move	v0,zero
  d0:	03e00008 	jr	ra
  d4:	27bd01a0 	addiu	sp,sp,416

000000d8 <_trm_init>:
  d8:	3c1c0000 	lui	gp,0x0
  dc:	27bdffe0 	addiu	sp,sp,-32
  e0:	279c0000 	addiu	gp,gp,0
  e4:	afbf001c 	sw	ra,28(sp)
  e8:	afbc0010 	sw	gp,16(sp)
  ec:	8f990128 	lw	t9,296(gp)
  f0:	0320f809 	jalr	t9
  f4:	00000000 	nop
  f8:	8fbc0010 	lw	gp,16(sp)
  fc:	00401021 	move	v0,v0
 100:	deadbeef 	ldc3	$13,-16657(s5)
 104:	8fbf001c 	lw	ra,28(sp)
 108:	03e00008 	jr	ra
 10c:	27bd0020 	addiu	sp,sp,32

Disassembly of section .data:

00000110 <hello>:
 110:	6c6c6548 	0x6c6c6548
 114:	6f572c6f 	0x6f572c6f
 118:	00646c72 	tlt	v1,a0,0x1b1

Disassembly of section .got:

00000120 <_GLOBAL_OFFSET_TABLE_>:
 120:	00000000 	nop
 124:	80000000 	lb	zero,0(zero)
 128:	00000014 	0x14
 12c:	00009000 	sll	s2,zero,0x0
 130:	000000d8 	0xd8

Disassembly of section .comment:

00000000 <_bss_start-0x134>:
   0:	43434700 	c0	0x1434700
   4:	4728203a 	c1	0x128203a
   8:	2029554e 	addi	t1,at,21838
   c:	2e332e34 	sltiu	s3,s1,11828
  10:	47000030 	c1	0x1000030
  14:	203a4343 	addi	k0,at,17219
  18:	554e4728 	bnel	t2,t6,11cbc <_end+0x8cbc>
  1c:	2e342029 	sltiu	s4,s1,8233
  20:	00302e33 	tltu	at,s0,0xb8

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <_end+0x5b90c00>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
