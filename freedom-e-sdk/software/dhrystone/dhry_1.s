	.file	"dhry_1.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Proc_2,"ax",@progbits
	.align	1
	.align	2
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB5:
	.file 1 "dhry_1.c"
	.loc 1 336 1
	.cfi_startproc
.LVL0:
	.loc 1 337 3
	.loc 1 338 3
	.loc 1 340 3
	.loc 1 342 19 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 342 8
	lbu	a4,%lo(.LANCHOR0)(a5)
	li	a5,65
.LVL1:
	.loc 1 341 3 is_stmt 1
	.loc 1 342 5
	.loc 1 342 8 is_stmt 0
	beq	a4,a5,.L4
.LVL2:
.LVL3:
	.loc 1 350 1
	ret
.LVL4:
.L4:
	.loc 1 345 7 is_stmt 1
	.loc 1 346 7
	.loc 1 345 15 is_stmt 0
	lw	a5,0(a0)
	.loc 1 346 30
	lui	a4,%hi(.LANCHOR1)
	lw	a4,%lo(.LANCHOR1)(a4)
	.loc 1 345 15
	addi	a5,a5,9
.LVL5:
	.loc 1 346 30
	sub	a5,a5,a4
.LVL6:
	.loc 1 346 20
	sw	a5,0(a0)
.LVL7:
	.loc 1 347 7 is_stmt 1
.LVL8:
	.loc 1 350 1 is_stmt 0
	ret
	.cfi_endproc
.LFE5:
	.size	Proc_2, .-Proc_2
	.section	.text.Proc_3,"ax",@progbits
	.align	1
	.align	2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB6:
	.loc 1 360 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 361 3
	.loc 1 361 16 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	lw	a2,0(a5)
	.loc 1 361 6
	beqz	a2,.L6
	.loc 1 363 5 is_stmt 1
	.loc 1 363 28 is_stmt 0
	lw	a4,0(a2)
	.loc 1 363 18
	sw	a4,0(a0)
	lw	a2,0(a5)
.L6:
	.loc 1 364 3 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lw	a1,%lo(.LANCHOR1)(a5)
	addi	a2,a2,12
	li	a0,10
.LVL10:
	tail	Proc_7
.LVL11:
	.cfi_endproc
.LFE6:
	.size	Proc_3, .-Proc_3
	.section	.text.Proc_1,"ax",@progbits
	.align	1
	.align	2
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB4:
	.loc 1 301 1
	.cfi_startproc
.LVL12:
	.loc 1 302 3
	.loc 1 301 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 307 28
	lui	s2,%hi(.LANCHOR2)
	addi	s2,s2,%lo(.LANCHOR2)
	.loc 1 307 26
	lw	a5,0(s2)
	.loc 1 301 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 302 15
	lw	s0,0(a0)
.LVL13:
	.loc 1 307 3 is_stmt 1
	.loc 1 307 26 is_stmt 0
	lw	a4,0(a5)
	.loc 1 301 1
	sw	s1,4(sp)
	.loc 1 307 26
	lw	t4,4(a5)
	lw	t3,8(a5)
	lw	t1,16(a5)
	lw	a7,20(a5)
	lw	a6,24(a5)
	lw	a1,32(a5)
	lw	a2,36(a5)
	lw	a3,40(a5)
	.loc 1 301 1
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 301 1
	mv	s1,a0
	.loc 1 307 26
	lw	a0,28(a5)
.LVL14:
	lw	a5,44(a5)
	sw	a4,0(s0)
	.loc 1 311 38
	lw	a4,0(s1)
	.loc 1 307 26
	sw	a0,28(s0)
	sw	a5,44(s0)
	.loc 1 308 3 is_stmt 1
	.loc 1 307 26 is_stmt 0
	sw	t4,4(s0)
	.loc 1 308 39
	li	a5,5
	.loc 1 307 26
	sw	t3,8(s0)
	sw	t1,16(s0)
	sw	a7,20(s0)
	sw	a6,24(s0)
	sw	a1,32(s0)
	sw	a2,36(s0)
	sw	a3,40(s0)
	.loc 1 308 39
	sw	a5,12(s1)
	.loc 1 309 3 is_stmt 1
	.loc 1 310 9 is_stmt 0
	sw	a5,12(s0)
	.loc 1 311 3 is_stmt 1
	.loc 1 311 25 is_stmt 0
	sw	a4,0(s0)
	.loc 1 312 3 is_stmt 1
	mv	a0,s0
	call	Proc_3
.LVL15:
	.loc 1 315 3
	.loc 1 315 6 is_stmt 0
	lw	a5,4(s0)
	beqz	a5,.L13
	.loc 1 326 5 is_stmt 1
	.loc 1 326 32 is_stmt 0
	lw	a5,0(s1)
	.loc 1 327 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL16:
	.loc 1 326 18
	lw	t6,0(a5)
	lw	t5,4(a5)
	lw	t4,8(a5)
	lw	t3,12(a5)
	lw	t1,16(a5)
	lw	a7,20(a5)
	lw	a6,24(a5)
	lw	a1,28(a5)
	lw	a2,32(a5)
	lw	a3,36(a5)
	lw	a4,40(a5)
	lw	a5,44(a5)
	sw	t6,0(s1)
	sw	t5,4(s1)
	sw	t4,8(s1)
	sw	t3,12(s1)
	sw	t1,16(s1)
	sw	a7,20(s1)
	sw	a6,24(s1)
	sw	a1,28(s1)
	sw	a2,32(s1)
	sw	a3,36(s1)
	sw	a4,40(s1)
	sw	a5,44(s1)
	.loc 1 327 1
	lw	s2,0(sp)
	.cfi_restore 18
	lw	s1,4(sp)
	.cfi_restore 9
.LVL17:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L13:
	.cfi_restore_state
.LBB2:
	.loc 1 318 5 is_stmt 1
	.loc 1 319 5 is_stmt 0
	lw	a0,8(s1)
	.loc 1 318 41
	li	a5,6
	.loc 1 319 5
	addi	a1,s0,8
	.loc 1 318 41
	sw	a5,12(s0)
	.loc 1 319 5 is_stmt 1
	call	Proc_6
.LVL19:
	.loc 1 321 5
	.loc 1 321 37 is_stmt 0
	lw	a5,0(s2)
	.loc 1 322 5
	lw	a0,12(s0)
	addi	a2,s0,12
	.loc 1 321 37
	lw	a5,0(a5)
.LBE2:
	.loc 1 327 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL20:
.LBB3:
	.loc 1 321 27
	sw	a5,0(s0)
	.loc 1 322 5 is_stmt 1
.LBE3:
	.loc 1 327 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL21:
	lw	s2,0(sp)
	.cfi_restore 18
.LBB4:
	.loc 1 322 5
	li	a1,10
.LBE4:
	.loc 1 327 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB5:
	.loc 1 322 5
	tail	Proc_7
.LVL22:
.LBE5:
	.cfi_endproc
.LFE4:
	.size	Proc_1, .-Proc_1
	.section	.text.Proc_4,"ax",@progbits
	.align	1
	.align	2
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB7:
	.loc 1 371 1 is_stmt 1
	.cfi_startproc
	.loc 1 372 3
	.loc 1 374 3
.LVL23:
	.loc 1 375 3
	.loc 1 374 24 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	.loc 1 375 13
	lui	a4,%hi(.LANCHOR3)
	addi	a4,a4,%lo(.LANCHOR3)
	.loc 1 375 24
	lw	a3,0(a4)
	.loc 1 374 24
	addi	a5,a5,-65
	seqz	a5,a5
	.loc 1 375 24
	or	a5,a5,a3
	.loc 1 375 13
	sw	a5,0(a4)
	.loc 1 376 3 is_stmt 1
	.loc 1 376 13 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	li	a4,66
	sb	a4,%lo(.LANCHOR4)(a5)
	.loc 1 377 1
	ret
	.cfi_endproc
.LFE7:
	.size	Proc_4, .-Proc_4
	.section	.text.Proc_5,"ax",@progbits
	.align	1
	.align	2
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
.LFB8:
	.loc 1 383 1 is_stmt 1
	.cfi_startproc
	.loc 1 384 3
	.loc 1 384 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,65
	sb	a4,%lo(.LANCHOR0)(a5)
	.loc 1 385 3 is_stmt 1
	.loc 1 385 13 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 386 1
	ret
	.cfi_endproc
.LFE8:
	.size	Proc_5, .-Proc_5
	.globl	__floatsisf
	.globl	__mulsf3
	.globl	__divsf3
	.globl	__fixsfsi
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB3:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
	.loc 1 83 9
	.loc 1 84 3
	.loc 1 85 9
	.loc 1 86 3
	.loc 1 87 9
	.loc 1 88 9
	.loc 1 89 9
	.loc 1 90 3
	.loc 1 91 3
	.loc 1 95 3
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	.loc 1 95 33
	li	a0,48
	.loc 1 82 1
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s9,116(sp)
	sw	s11,108(sp)
	sw	s1,148(sp)
	sw	s2,144(sp)
	sw	s3,140(sp)
	sw	s4,136(sp)
	sw	s5,132(sp)
	sw	s6,128(sp)
	sw	s7,124(sp)
	sw	s8,120(sp)
	sw	s10,112(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 25, -44
	.cfi_offset 27, -52
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 26, -48
	.loc 1 95 33
	call	malloc
.LVL24:
	.loc 1 95 17
	lui	a5,%hi(.LANCHOR5)
	addi	s0,a5,%lo(.LANCHOR5)
	sw	a0,0(s0)
	.loc 1 96 3 is_stmt 1
	.loc 1 96 28 is_stmt 0
	li	a0,48
	.loc 1 95 17
	sw	s0,8(sp)
	.loc 1 96 28
	call	malloc
.LVL25:
	.loc 1 98 22
	lw	a5,0(s0)
	.loc 1 96 12
	lui	s9,%hi(.LANCHOR2)
	addi	s9,s9,%lo(.LANCHOR2)
	sw	a0,0(s9)
	.loc 1 98 3 is_stmt 1
	.loc 1 98 22 is_stmt 0
	sw	a5,0(a0)
	.loc 1 99 3 is_stmt 1
	.loc 1 100 37 is_stmt 0
	li	a5,2
	sw	a5,8(a0)
	.loc 1 102 3
	lui	a1,%hi(.LC0)
	.loc 1 101 36
	li	a5,40
	sw	a5,12(a0)
	.loc 1 102 3
	li	a2,31
	addi	a1,a1,%lo(.LC0)
	.loc 1 99 19
	sw	zero,4(a0)
	.loc 1 100 3 is_stmt 1
	.loc 1 101 3
	.loc 1 102 3
	addi	a0,a0,16
	call	memcpy
.LVL26:
	.loc 1 104 3
	lui	a4,%hi(.LC1)
	addi	a5,a4,%lo(.LC1)
	lw	t3,%lo(.LC1)(a4)
	lw	t1,4(a5)
	lw	a7,8(a5)
	lw	a6,12(a5)
	lw	a1,16(a5)
	lw	a2,20(a5)
	lw	a3,24(a5)
	lhu	a4,28(a5)
	lbu	a5,30(a5)
	.loc 1 112 3 is_stmt 0
	lui	s0,%hi(.LC2)
	.loc 1 106 21
	lui	s11,%hi(Arr_2_Glob)
	.loc 1 104 3
	sh	a4,60(sp)
	sb	a5,62(sp)
	.loc 1 106 3 is_stmt 1
	.loc 1 106 21 is_stmt 0
	addi	a4,s11,%lo(Arr_2_Glob)
	li	a5,10
	.loc 1 112 3
	addi	a0,s0,%lo(.LC2)
	.loc 1 106 21
	sw	a5,1628(a4)
	.loc 1 112 3 is_stmt 1
	.loc 1 104 3 is_stmt 0
	sw	t3,32(sp)
	sw	t1,36(sp)
	sw	a7,40(sp)
	sw	a6,44(sp)
	sw	a1,48(sp)
	sw	a2,52(sp)
	sw	a3,56(sp)
	.loc 1 112 3
	call	printf
.LVL27:
	.loc 1 113 3 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL28:
	.loc 1 114 3
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL29:
	.loc 1 115 3
	.loc 1 115 7 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	.loc 1 115 6
	lw	a5,%lo(.LANCHOR6)(a5)
	beqz	a5,.L17
	.loc 1 117 5 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL30:
	.loc 1 118 5
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL31:
.L18:
	.loc 1 125 3
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL32:
.LBB6:
	.loc 1 127 5
	.loc 1 128 5
	lui	a0,%hi(.LC7)
	addi	a1,sp,64
	addi	a0,a0,%lo(.LC7)
	call	scanf
.LVL33:
	.loc 1 129 5
.LBE6:
	.loc 1 131 3
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.LVL34:
	.loc 1 133 3
	lui	a0,%hi(.LC8)
	li	a1,2000
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL35:
	.loc 1 144 3
	.loc 1 144 16 is_stmt 0
	li	a0,0
	call	time
.LVL36:
	lui	s2,%hi(.LC9)
.LBB7:
	.loc 1 158 5
	lw	a5,%lo(.LC9)(s2)
.LBB8:
	.loc 1 181 9
	lui	s10,%hi(.LC10)
	lw	s8,%lo(.LC10)(s10)
.LBE8:
	.loc 1 158 5
	sw	a5,4(sp)
.LBE7:
	.loc 1 144 14
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	sw	a5,12(sp)
	sw	a0,0(a5)
	.loc 1 150 3 is_stmt 1
.LVL37:
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	lui	s1,%hi(.LANCHOR4)
	lui	s7,%hi(.LANCHOR1)
	.loc 1 150 18 is_stmt 0
	li	s3,1
	addi	s2,s2,%lo(.LC9)
	sw	a5,0(sp)
	addi	s1,s1,%lo(.LANCHOR4)
	addi	s7,s7,%lo(.LANCHOR1)
.LBB13:
	.loc 1 156 15
	li	s0,2
.LVL38:
.L26:
	.loc 1 153 5 is_stmt 1
	call	Proc_5
.LVL39:
	.loc 1 154 5
	call	Proc_4
.LVL40:
	.loc 1 156 5
	.loc 1 158 5 is_stmt 0
	lbu	a5,30(s2)
	lw	a2,20(s2)
	lw	t3,4(s2)
	lw	t1,8(s2)
	lw	a7,12(s2)
	lw	a6,16(s2)
	lw	a3,24(s2)
	lhu	a4,28(s2)
	lw	t4,4(sp)
	sb	a5,94(sp)
	.loc 1 160 19
	addi	a1,sp,64
	.loc 1 159 14
	li	a5,1
	.loc 1 160 19
	addi	a0,sp,32
	.loc 1 158 5
	sw	a2,84(sp)
	.loc 1 159 14
	sw	a5,28(sp)
	.loc 1 156 15
	sw	s0,20(sp)
	.loc 1 157 5 is_stmt 1
.LVL41:
	.loc 1 158 5
	.loc 1 159 5
	.loc 1 160 5
	.loc 1 158 5 is_stmt 0
	sw	t4,64(sp)
	sw	t3,68(sp)
	sw	t1,72(sp)
	sw	a7,76(sp)
	sw	a6,80(sp)
	sw	a3,88(sp)
	sh	a4,92(sp)
	.loc 1 160 19
	call	Func_2
.LVL42:
	.loc 1 160 15
	lw	a5,0(sp)
	.loc 1 162 22
	lw	a2,20(sp)
	.loc 1 160 17
	seqz	a0,a0
	.loc 1 160 15
	sw	a0,0(a5)
	.loc 1 162 5 is_stmt 1
	.loc 1 162 11 is_stmt 0
	bgt	a2,s0,.L19
.L20:
.LBB9:
	.loc 1 164 7 is_stmt 1
	.loc 1 164 21 is_stmt 0
	slli	a5,a2,2
	add	a5,a5,a2
	.loc 1 164 33
	addi	a5,a5,-3
	.loc 1 166 7
	mv	a0,a2
	li	a1,3
	addi	a2,sp,24
	.loc 1 164 17
	sw	a5,24(sp)
	.loc 1 166 7 is_stmt 1
	call	Proc_7
.LVL43:
	.loc 1 168 7
	.loc 1 168 17 is_stmt 0
	lw	a2,20(sp)
	addi	a2,a2,1
	sw	a2,20(sp)
.LBE9:
	.loc 1 162 11
	ble	a2,s0,.L20
.L19:
	.loc 1 171 5 is_stmt 1
	lw	a3,24(sp)
	lui	a5,%hi(.LANCHOR8)
	addi	a0,a5,%lo(.LANCHOR8)
	addi	a1,s11,%lo(Arr_2_Glob)
	call	Proc_8
.LVL44:
	.loc 1 173 5
	lw	a0,0(s9)
	.loc 1 174 19 is_stmt 0
	li	s5,65
	.loc 1 157 15
	li	s4,3
	.loc 1 173 5
	call	Proc_1
.LVL45:
	.loc 1 174 5 is_stmt 1
	lbu	a4,0(s1)
	li	a5,64
.LBB10:
	.loc 1 181 9 is_stmt 0
	addi	s6,s10,%lo(.LC10)
.LBE10:
	.loc 1 174 5
	bleu	a4,a5,.L22
.LVL46:
.L21:
	.loc 1 177 7 is_stmt 1
	.loc 1 177 23 is_stmt 0
	mv	a0,s5
	li	a1,67
	call	Func_1
.LVL47:
	.loc 1 177 10
	lw	a5,28(sp)
	.loc 1 174 49
	addi	a4,s5,1
	.loc 1 177 10
	beq	a0,a5,.L35
	.loc 1 174 5 discriminator 2
	lbu	a5,0(s1)
	.loc 1 174 49 discriminator 2
	andi	s5,a4,0xff
.LVL48:
	.loc 1 174 5 discriminator 2
	bgeu	a5,s5,.L21
.LVL49:
.L22:
	.loc 1 187 5 is_stmt 1 discriminator 2
	.loc 1 187 15 is_stmt 0 discriminator 2
	lw	a5,20(sp)
	.loc 1 188 27 discriminator 2
	lw	s6,24(sp)
	.loc 1 191 5 discriminator 2
	addi	a0,sp,20
	.loc 1 187 15 discriminator 2
	mul	s4,s4,a5
.LVL50:
	.loc 1 188 5 is_stmt 1 discriminator 2
.LBE13:
	.loc 1 150 52 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL51:
.LBB14:
	.loc 1 188 27 discriminator 2
	div	s5,s4,s6
	.loc 1 188 15 discriminator 2
	sw	s5,20(sp)
	.loc 1 189 5 is_stmt 1 discriminator 2
.LVL52:
	.loc 1 191 5 discriminator 2
	call	Proc_2
.LVL53:
.LBE14:
	.loc 1 150 3 is_stmt 0 discriminator 2
	li	a5,2001
	bne	s3,a5,.L26
	.loc 1 205 3 is_stmt 1
	.loc 1 205 14 is_stmt 0
	li	a0,0
	.loc 1 205 12
	lui	s10,%hi(.LANCHOR9)
	.loc 1 205 14
	call	time
.LVL54:
	.loc 1 205 12
	addi	s10,s10,%lo(.LANCHOR9)
	sw	a0,0(s10)
	.loc 1 211 3 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL55:
	.loc 1 212 3
	lui	s0,%hi(.LC2)
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL56:
	.loc 1 213 3
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL57:
	.loc 1 214 3
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL58:
	.loc 1 215 3
	lw	a1,0(s7)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	.loc 1 216 3 is_stmt 0
	lui	s0,%hi(.LC14)
	.loc 1 215 3
	call	printf
.LVL59:
	.loc 1 216 3 is_stmt 1
	li	a1,5
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL60:
	.loc 1 217 3
	lw	a5,0(sp)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	lw	a1,0(a5)
	.loc 1 220 3 is_stmt 0
	lui	s2,%hi(.LC17)
	.loc 1 228 3
	lui	s11,%hi(.LC23)
	.loc 1 217 3
	call	printf
.LVL61:
	.loc 1 218 3 is_stmt 1
	li	a1,1
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL62:
	.loc 1 219 3
	lui	a5,%hi(.LANCHOR0)
	lbu	a1,%lo(.LANCHOR0)(a5)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL63:
	.loc 1 220 3
	li	a1,65
	addi	a0,s2,%lo(.LC17)
	call	printf
.LVL64:
	.loc 1 221 3
	lbu	a1,0(s1)
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL65:
	.loc 1 222 3
	li	a1,66
	addi	a0,s2,%lo(.LC17)
	call	printf
.LVL66:
	.loc 1 223 3
	lui	a5,%hi(.LANCHOR8)
	addi	a5,a5,%lo(.LANCHOR8)
	lw	a1,32(a5)
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL67:
	.loc 1 224 3
	li	a1,7
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL68:
	.loc 1 225 3
	lui	a5,%hi(Arr_2_Glob)
	addi	a5,a5,%lo(Arr_2_Glob)
	lw	a1,1628(a5)
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	printf
.LVL69:
	.loc 1 226 3
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL70:
	.loc 1 227 3
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	call	printf
.LVL71:
	.loc 1 228 3
	.loc 1 228 54 is_stmt 0
	lw	a5,0(s9)
	.loc 1 228 3
	addi	a0,s11,%lo(.LC23)
	.loc 1 230 3
	lui	s8,%hi(.LC25)
	.loc 1 228 3
	lw	a1,0(a5)
	.loc 1 232 3
	lui	s7,%hi(.LC26)
	.loc 1 234 3
	lui	s3,%hi(.LC27)
.LVL72:
	.loc 1 228 3
	call	printf
.LVL73:
	.loc 1 229 3 is_stmt 1
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	printf
.LVL74:
	.loc 1 230 3
	lw	a5,0(s9)
	addi	a0,s8,%lo(.LC25)
	.loc 1 236 3 is_stmt 0
	lui	s2,%hi(.LC28)
	.loc 1 230 3
	lw	a1,4(a5)
	.loc 1 237 3
	lui	s1,%hi(.LC29)
.LBB15:
	.loc 1 189 32
	sub	s4,s4,s6
.LVL75:
.LBE15:
	.loc 1 230 3
	call	printf
.LVL76:
	.loc 1 231 3 is_stmt 1
	li	a1,0
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL77:
	.loc 1 232 3
	lw	a5,0(s9)
	addi	a0,s7,%lo(.LC26)
	lw	a1,8(a5)
	call	printf
.LVL78:
	.loc 1 233 3
	li	a1,2
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL79:
	.loc 1 234 3
	lw	a5,0(s9)
	addi	a0,s3,%lo(.LC27)
	lw	a1,12(a5)
	call	printf
.LVL80:
	.loc 1 235 3
	li	a1,17
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL81:
	.loc 1 236 3
	.loc 1 236 63 is_stmt 0
	lw	a1,0(s9)
	.loc 1 236 3
	addi	a0,s2,%lo(.LC28)
	addi	a1,a1,16
	call	printf
.LVL82:
	.loc 1 237 3 is_stmt 1
	addi	a0,s1,%lo(.LC29)
	call	printf
.LVL83:
	.loc 1 238 3
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	call	printf
.LVL84:
	.loc 1 239 3
	.loc 1 239 59 is_stmt 0
	lw	s9,8(sp)
	.loc 1 239 3
	addi	a0,s11,%lo(.LC23)
	.loc 1 239 59
	lw	a5,0(s9)
	.loc 1 239 3
	lw	a1,0(a5)
	call	printf
.LVL85:
	.loc 1 240 3 is_stmt 1
	lui	a0,%hi(.LC31)
	addi	a0,a0,%lo(.LC31)
	call	printf
.LVL86:
	.loc 1 241 3
	lw	a5,0(s9)
	addi	a0,s8,%lo(.LC25)
	lw	a1,4(a5)
	call	printf
.LVL87:
	.loc 1 242 3
	li	a1,0
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL88:
	.loc 1 243 3
	lw	a5,0(s9)
	addi	a0,s7,%lo(.LC26)
	lw	a1,8(a5)
	call	printf
.LVL89:
	.loc 1 244 3
	li	a1,1
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL90:
	.loc 1 245 3
	lw	a5,0(s9)
	addi	a0,s3,%lo(.LC27)
	lw	a1,12(a5)
	call	printf
.LVL91:
	.loc 1 246 3
	li	a1,18
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL92:
	.loc 1 247 3
	.loc 1 248 61 is_stmt 0
	lw	a1,0(s9)
	.loc 1 247 3
	addi	a0,s2,%lo(.LC28)
	addi	a1,a1,16
	call	printf
.LVL93:
	.loc 1 249 3 is_stmt 1
	addi	a0,s1,%lo(.LC29)
	call	printf
.LVL94:
	.loc 1 250 3
	lw	a1,20(sp)
	lui	a0,%hi(.LC32)
	addi	a0,a0,%lo(.LC32)
	call	printf
.LVL95:
	.loc 1 251 3
	li	a1,5
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL96:
	.loc 1 252 3
.LBB16:
	.loc 1 189 19 is_stmt 0
	slli	a5,s4,3
	sub	s4,a5,s4
.LVL97:
.LBE16:
	.loc 1 252 3
	lui	a0,%hi(.LC33)
	sub	a1,s4,s5
	addi	a0,a0,%lo(.LC33)
	call	printf
.LVL98:
	.loc 1 253 3 is_stmt 1
	li	a1,13
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL99:
	.loc 1 254 3
	lw	a1,24(sp)
	lui	a0,%hi(.LC34)
	addi	a0,a0,%lo(.LC34)
	call	printf
.LVL100:
	.loc 1 255 3
	li	a1,7
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL101:
	.loc 1 256 3
	lw	a1,28(sp)
	lui	a0,%hi(.LC35)
	addi	a0,a0,%lo(.LC35)
	call	printf
.LVL102:
	.loc 1 257 3
	li	a1,1
	addi	a0,s0,%lo(.LC14)
	call	printf
.LVL103:
	.loc 1 258 3
	lui	a0,%hi(.LC36)
	addi	a1,sp,32
	addi	a0,a0,%lo(.LC36)
	call	printf
.LVL104:
	.loc 1 259 3
	lui	a0,%hi(.LC37)
	addi	a0,a0,%lo(.LC37)
	call	printf
.LVL105:
	.loc 1 260 3
	lui	a0,%hi(.LC38)
	addi	a1,sp,64
	addi	a0,a0,%lo(.LC38)
	call	printf
.LVL106:
	.loc 1 261 3
	lui	a0,%hi(.LC39)
	addi	a0,a0,%lo(.LC39)
	call	printf
.LVL107:
	.loc 1 262 3
	lui	s0,%hi(.LC2)
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL108:
	.loc 1 264 3
	.loc 1 264 24 is_stmt 0
	lw	a5,12(sp)
	lw	a0,0(s10)
	lw	a4,0(a5)
	.loc 1 266 6
	li	a5,1
	.loc 1 264 24
	sub	a0,a0,a4
	.loc 1 264 13
	lui	a4,%hi(.LANCHOR10)
	sw	a0,%lo(.LANCHOR10)(a4)
	.loc 1 266 3 is_stmt 1
	.loc 1 266 6 is_stmt 0
	ble	a0,a5,.L36
	.loc 1 275 5 is_stmt 1
	.loc 1 275 20 is_stmt 0
	call	__floatsisf
.LVL109:
	.loc 1 275 38
	lui	a5,%hi(.LC42)
	lw	a1,%lo(.LC42)(a5)
	.loc 1 276 25
	lui	s0,%hi(.LC43)
	.loc 1 275 20
	mv	s3,a0
	.loc 1 275 38
	call	__mulsf3
.LVL110:
	.loc 1 276 25
	lw	a1,%lo(.LC43)(s0)
	.loc 1 275 18
	lui	s1,%hi(.LANCHOR11)
	addi	s1,s1,%lo(.LANCHOR11)
	.loc 1 276 25
	call	__divsf3
.LVL111:
	.loc 1 275 18
	sw	a0,0(s1)
	.loc 1 277 5 is_stmt 1
	.loc 1 277 52 is_stmt 0
	lw	a0,%lo(.LC43)(s0)
	mv	a1,s3
	.loc 1 277 27
	lui	s0,%hi(.LANCHOR12)
	.loc 1 277 52
	call	__divsf3
.LVL112:
	.loc 1 277 27
	addi	s0,s0,%lo(.LANCHOR12)
	sw	a0,0(s0)
	.loc 1 284 5 is_stmt 1
	lui	a0,%hi(.LC44)
	addi	a0,a0,%lo(.LC44)
	call	printf
.LVL113:
	.loc 1 286 5
	lw	a0,0(s1)
	lui	s2,%hi(.LC45)
	call	__fixsfsi
.LVL114:
	mv	a1,a0
	addi	a0,s2,%lo(.LC45)
	call	printf
.LVL115:
	.loc 1 287 5
	lui	a0,%hi(.LC46)
	addi	a0,a0,%lo(.LC46)
	call	printf
.LVL116:
	.loc 1 289 5
	lw	a0,0(s0)
	call	__fixsfsi
.LVL117:
	mv	a1,a0
	addi	a0,s2,%lo(.LC45)
	call	printf
.LVL118:
	.loc 1 290 5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.LVL119:
.L28:
	.loc 1 293 1 is_stmt 0
	lw	ra,156(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	lw	s1,148(sp)
	.cfi_restore 9
	lw	s2,144(sp)
	.cfi_restore 18
	lw	s3,140(sp)
	.cfi_restore 19
	lw	s4,136(sp)
	.cfi_restore 20
	lw	s5,132(sp)
	.cfi_restore 21
	lw	s6,128(sp)
	.cfi_restore 22
	lw	s7,124(sp)
	.cfi_restore 23
	lw	s8,120(sp)
	.cfi_restore 24
	lw	s9,116(sp)
	.cfi_restore 25
	lw	s10,112(sp)
	.cfi_restore 26
	lw	s11,108(sp)
	.cfi_restore 27
	li	a0,0
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.LVL120:
.L35:
	.cfi_restore_state
.LBB17:
.LBB11:
	.loc 1 180 9 is_stmt 1
	addi	a1,sp,28
	li	a0,0
	call	Proc_6
.LVL121:
	.loc 1 181 9
	lw	t1,4(s6)
	lw	a7,8(s6)
	lw	a6,12(s6)
	lw	a0,16(s6)
	lw	a1,20(s6)
	lw	a2,24(s6)
	lhu	a3,28(s6)
	lbu	a4,30(s6)
.LBE11:
	.loc 1 174 5 is_stmt 0
	lbu	a5,0(s1)
	.loc 1 174 49
	addi	s5,s5,1
.LVL122:
.LBB12:
	.loc 1 181 9
	sw	s8,64(sp)
	sw	t1,68(sp)
	sw	a7,72(sp)
	sw	a6,76(sp)
	sw	a0,80(sp)
	sw	a1,84(sp)
	sw	a2,88(sp)
	sh	a3,92(sp)
	sb	a4,94(sp)
	.loc 1 182 9 is_stmt 1
.LVL123:
	.loc 1 183 9
	.loc 1 183 18 is_stmt 0
	sw	s3,0(s7)
.LBE12:
	.loc 1 174 49
	andi	s5,s5,0xff
.LVL124:
	.loc 1 174 5
	mv	s4,s3
	bgeu	a5,s5,.L21
	j	.L22
.LVL125:
.L17:
.LBE17:
	.loc 1 122 5 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL126:
	.loc 1 123 5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.LVL127:
	j	.L18
.LVL128:
.L36:
	.loc 1 268 5
	lui	a0,%hi(.LC40)
	addi	a0,a0,%lo(.LC40)
	call	printf
.LVL129:
	.loc 1 269 5
	lui	a0,%hi(.LC41)
	addi	a0,a0,%lo(.LC41)
	call	printf
.LVL130:
	.loc 1 270 5
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL131:
	j	.L28
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.globl	Dhrystones_Per_Second
	.globl	Microseconds
	.globl	User_Time
	.globl	End_Time
	.globl	Begin_Time
	.globl	Reg
	.globl	Arr_2_Glob
	.globl	Arr_1_Glob
	.globl	Ch_2_Glob
	.globl	Ch_1_Glob
	.globl	Bool_Glob
	.globl	Int_Glob
	.globl	Next_Ptr_Glob
	.globl	Ptr_Glob
	.section	.bss.Arr_1_Glob,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	Arr_1_Glob, @object
	.size	Arr_1_Glob, 200
Arr_1_Glob:
	.zero	200
	.section	.bss.Arr_2_Glob,"aw",@nobits
	.align	2
	.type	Arr_2_Glob, @object
	.size	Arr_2_Glob, 10000
Arr_2_Glob:
	.zero	10000
	.section	.rodata.main.cst4,"aM",@progbits,4
	.align	2
.LC42:
	.word	1232348160
.LC43:
	.word	1157234688
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.zero	1
.LC2:
	.string	"\n"
	.zero	2
.LC3:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"
.LC4:
	.string	"Program compiled with 'register' attribute\n"
.LC5:
	.string	"Program compiled without 'register' attribute\n"
	.zero	1
.LC6:
	.string	"Please give the number of runs through the benchmark: "
	.zero	1
.LC7:
	.string	"%d"
	.zero	1
.LC8:
	.string	"Execution starts, %d runs through Dhrystone\n"
	.zero	3
.LC11:
	.string	"Execution ends\n"
.LC12:
	.string	"Final values of the variables used in the benchmark:\n"
	.zero	2
.LC13:
	.string	"Int_Glob:            %d\n"
	.zero	3
.LC14:
	.string	"        should be:   %d\n"
	.zero	3
.LC15:
	.string	"Bool_Glob:           %d\n"
	.zero	3
.LC16:
	.string	"Ch_1_Glob:           %c\n"
	.zero	3
.LC17:
	.string	"        should be:   %c\n"
	.zero	3
.LC18:
	.string	"Ch_2_Glob:           %c\n"
	.zero	3
.LC19:
	.string	"Arr_1_Glob[8]:       %d\n"
	.zero	3
.LC20:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.zero	3
.LC21:
	.string	"        should be:   Number_Of_Runs + 10\n"
	.zero	2
.LC22:
	.string	"Ptr_Glob->\n"
.LC23:
	.string	"  Ptr_Comp:          %d\n"
	.zero	3
.LC24:
	.string	"        should be:   (implementation-dependent)\n"
	.zero	3
.LC25:
	.string	"  Discr:             %d\n"
	.zero	3
.LC26:
	.string	"  Enum_Comp:         %d\n"
	.zero	3
.LC27:
	.string	"  Int_Comp:          %d\n"
	.zero	3
.LC28:
	.string	"  Str_Comp:          %s\n"
	.zero	3
.LC29:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.zero	3
.LC30:
	.string	"Next_Ptr_Glob->\n"
	.zero	3
.LC31:
	.string	"        should be:   (implementation-dependent), same as above\n"
.LC32:
	.string	"Int_1_Loc:           %d\n"
	.zero	3
.LC33:
	.string	"Int_2_Loc:           %d\n"
	.zero	3
.LC34:
	.string	"Int_3_Loc:           %d\n"
	.zero	3
.LC35:
	.string	"Enum_Loc:            %d\n"
	.zero	3
.LC36:
	.string	"Str_1_Loc:           %s\n"
	.zero	3
.LC37:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.zero	3
.LC38:
	.string	"Str_2_Loc:           %s\n"
	.zero	3
.LC39:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.zero	3
.LC40:
	.string	"Measured time too small to obtain meaningful results\n"
	.zero	2
.LC41:
	.string	"Please increase number of runs\n"
.LC44:
	.string	"Microseconds for one run through Dhrystone: "
	.zero	3
.LC45:
	.string	"%d \n"
	.zero	3
.LC46:
	.string	"Dhrystones per Second:                      "
	.zero	3
.LC1:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
	.zero	1
.LC9:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.zero	1
.LC10:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
	.section	.sbss.Begin_Time,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	Begin_Time, @object
	.size	Begin_Time, 4
Begin_Time:
	.zero	4
	.section	.sbss.Bool_Glob,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	Bool_Glob, @object
	.size	Bool_Glob, 4
Bool_Glob:
	.zero	4
	.section	.sbss.Ch_1_Glob,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.section	.sbss.Ch_2_Glob,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	Ch_2_Glob, @object
	.size	Ch_2_Glob, 1
Ch_2_Glob:
	.zero	1
	.section	.sbss.Dhrystones_Per_Second,"aw",@nobits
	.align	2
	.set	.LANCHOR12,. + 0
	.type	Dhrystones_Per_Second, @object
	.size	Dhrystones_Per_Second, 4
Dhrystones_Per_Second:
	.zero	4
	.section	.sbss.End_Time,"aw",@nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	End_Time, @object
	.size	End_Time, 4
End_Time:
	.zero	4
	.section	.sbss.Int_Glob,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.section	.sbss.Microseconds,"aw",@nobits
	.align	2
	.set	.LANCHOR11,. + 0
	.type	Microseconds, @object
	.size	Microseconds, 4
Microseconds:
	.zero	4
	.section	.sbss.Next_Ptr_Glob,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 4
Next_Ptr_Glob:
	.zero	4
	.section	.sbss.Ptr_Glob,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 4
Ptr_Glob:
	.zero	4
	.section	.sbss.Reg,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	Reg, @object
	.size	Reg, 4
Reg:
	.zero	4
	.section	.sbss.User_Time,"aw",@nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	User_Time, @object
	.size	User_Time, 4
User_Time:
	.zero	4
	.text
.Letext0:
	.file 2 "dhry.h"
	.file 3 "/home/tanqinhan/Desktop/riscv/freedom-e-sdk/riscv64-unknown-elf-gcc-8.2.0-2019.02.0-x86_64-linux-ubuntu14/riscv64-unknown-elf/include/sys/lock.h"
	.file 4 "/home/tanqinhan/Desktop/riscv/freedom-e-sdk/riscv64-unknown-elf-gcc-8.2.0-2019.02.0-x86_64-linux-ubuntu14/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/tanqinhan/Desktop/riscv/freedom-e-sdk/riscv64-unknown-elf-gcc-8.2.0-2019.02.0-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/8.2.0/include/stddef.h"
	.file 6 "/home/tanqinhan/Desktop/riscv/freedom-e-sdk/riscv64-unknown-elf-gcc-8.2.0-2019.02.0-x86_64-linux-ubuntu14/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "<built-in>"
	.file 8 "/home/tanqinhan/Desktop/riscv/freedom-e-sdk/riscv64-unknown-elf-gcc-8.2.0-2019.02.0-x86_64-linux-ubuntu14/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1700
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF186
	.byte	0xc
	.4byte	.LASF187
	.4byte	.LASF188
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF10
	.byte	0x2
	.2byte	0x181
	.byte	0xf
	.4byte	0x32
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0xc
	.byte	0xd
	.4byte	0x32
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x55
	.byte	0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x55
	.byte	0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x91
	.byte	0x14
	.4byte	0x32
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x71
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xde
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xaf
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xde
	.byte	0
	.byte	0x8
	.4byte	0x40
	.4byte	0xee
	.byte	0x9
	.4byte	0x71
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x112
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x32
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xbc
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xee
	.byte	0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7f
	.byte	0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x5c
	.byte	0xd
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x192
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x192
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x32
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x32
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x32
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x32
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x198
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x138
	.byte	0x8
	.4byte	0x12c
	.4byte	0x1a8
	.byte	0x9
	.4byte	0x71
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x22b
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x32
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x32
	.byte	0x4
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x32
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x32
	.byte	0xc
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x32
	.byte	0x10
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x32
	.byte	0x14
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x32
	.byte	0x18
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x32
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x32
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x270
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x270
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x270
	.byte	0x80
	.byte	0x11
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x12c
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x12c
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x12a
	.4byte	0x280
	.byte	0x9
	.4byte	0x71
	.byte	0x1f
	.byte	0
	.byte	0xd
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2c2
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2c2
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x32
	.byte	0x4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2c8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2df
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x280
	.byte	0x8
	.4byte	0x2d8
	.4byte	0x2d8
	.byte	0x9
	.4byte	0x71
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2de
	.byte	0x12
	.byte	0xf
	.byte	0x4
	.4byte	0x22b
	.byte	0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x30d
	.byte	0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x30d
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x32
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x40
	.byte	0xd
	.4byte	.LASF50
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x386
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x30d
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x32
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x32
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x47
	.byte	0xc
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x47
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x2e5
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x32
	.byte	0x18
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x4ce
	.byte	0x1c
	.byte	0
	.byte	0x13
	.4byte	0x313
	.byte	0x14
	.4byte	.LASF55
	.byte	0x60
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x4ce
	.byte	0x15
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x32
	.byte	0
	.byte	0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x726
	.byte	0x4
	.byte	0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x726
	.byte	0x8
	.byte	0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x726
	.byte	0xc
	.byte	0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x32
	.byte	0x10
	.byte	0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x63a
	.byte	0x14
	.byte	0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x32
	.byte	0x18
	.byte	0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x32
	.byte	0x1c
	.byte	0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x88e
	.byte	0x20
	.byte	0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x894
	.byte	0x24
	.byte	0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8a5
	.byte	0x28
	.byte	0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x32
	.byte	0x2c
	.byte	0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x32
	.byte	0x30
	.byte	0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x63a
	.byte	0x34
	.byte	0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ab
	.byte	0x38
	.byte	0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8b1
	.byte	0x3c
	.byte	0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x63a
	.byte	0x40
	.byte	0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x197
	.byte	0xc
	.4byte	0x8c2
	.byte	0x44
	.byte	0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6e7
	.byte	0x48
	.byte	0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x726
	.byte	0x54
	.byte	0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8ce
	.byte	0x58
	.byte	0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x63a
	.byte	0x5c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x38b
	.byte	0x13
	.4byte	0x4ce
	.byte	0xd
	.4byte	.LASF77
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x61c
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x30d
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x32
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x32
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x47
	.byte	0xc
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x47
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e5
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x32
	.byte	0x18
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x4ce
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x12a
	.byte	0x20
	.byte	0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xc5
	.byte	0xe
	.4byte	0x64c
	.byte	0x24
	.byte	0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc7
	.byte	0xe
	.4byte	0x676
	.byte	0x28
	.byte	0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x69a
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6b4
	.byte	0x30
	.byte	0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2e5
	.byte	0x34
	.byte	0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x30d
	.byte	0x3c
	.byte	0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x32
	.byte	0x40
	.byte	0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ba
	.byte	0x44
	.byte	0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6ca
	.byte	0x47
	.byte	0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e5
	.byte	0x48
	.byte	0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x32
	.byte	0x50
	.byte	0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x8b
	.byte	0x54
	.byte	0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x11e
	.byte	0x58
	.byte	0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x112
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x32
	.byte	0x64
	.byte	0
	.byte	0x17
	.4byte	0xa3
	.4byte	0x63a
	.byte	0x18
	.4byte	0x4ce
	.byte	0x18
	.4byte	0x12a
	.byte	0x18
	.4byte	0x63a
	.byte	0x18
	.4byte	0x32
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x640
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.byte	0x13
	.4byte	0x640
	.byte	0xf
	.byte	0x4
	.4byte	0x61c
	.byte	0x17
	.4byte	0xa3
	.4byte	0x670
	.byte	0x18
	.4byte	0x4ce
	.byte	0x18
	.4byte	0x12a
	.byte	0x18
	.4byte	0x670
	.byte	0x18
	.4byte	0x32
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x647
	.byte	0xf
	.byte	0x4
	.4byte	0x652
	.byte	0x17
	.4byte	0x97
	.4byte	0x69a
	.byte	0x18
	.4byte	0x4ce
	.byte	0x18
	.4byte	0x12a
	.byte	0x18
	.4byte	0x97
	.byte	0x18
	.4byte	0x32
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x67c
	.byte	0x17
	.4byte	0x32
	.4byte	0x6b4
	.byte	0x18
	.4byte	0x4ce
	.byte	0x18
	.4byte	0x12a
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6a0
	.byte	0x8
	.4byte	0x40
	.4byte	0x6ca
	.byte	0x9
	.4byte	0x71
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x40
	.4byte	0x6da
	.byte	0x9
	.4byte	0x71
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4d9
	.byte	0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x720
	.byte	0x15
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x720
	.byte	0
	.byte	0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x32
	.byte	0x4
	.byte	0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x726
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6e7
	.byte	0xf
	.byte	0x4
	.4byte	0x6da
	.byte	0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x773
	.byte	0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x773
	.byte	0
	.byte	0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x773
	.byte	0x6
	.byte	0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x4e
	.byte	0xc
	.byte	0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x6a
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	0x4e
	.4byte	0x783
	.byte	0x9
	.4byte	0x71
	.byte	0x2
	.byte	0
	.byte	0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7ca
	.byte	0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x192
	.byte	0
	.byte	0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x32
	.byte	0x4
	.byte	0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x192
	.byte	0x8
	.byte	0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7ca
	.byte	0xc
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x192
	.byte	0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x879
	.byte	0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x63a
	.byte	0
	.byte	0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x112
	.byte	0x4
	.byte	0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x112
	.byte	0xc
	.byte	0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x112
	.byte	0x14
	.byte	0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x879
	.byte	0x1c
	.byte	0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x32
	.byte	0x24
	.byte	0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x112
	.byte	0x28
	.byte	0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x112
	.byte	0x30
	.byte	0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x112
	.byte	0x38
	.byte	0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x112
	.byte	0x40
	.byte	0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x112
	.byte	0x48
	.byte	0
	.byte	0x8
	.4byte	0x640
	.4byte	0x889
	.byte	0x9
	.4byte	0x71
	.byte	0x7
	.byte	0
	.byte	0x19
	.4byte	.LASF189
	.byte	0xf
	.byte	0x4
	.4byte	0x889
	.byte	0xf
	.byte	0x4
	.4byte	0x783
	.byte	0x1a
	.4byte	0x8a5
	.byte	0x18
	.4byte	0x4ce
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x89a
	.byte	0xf
	.byte	0x4
	.4byte	0x72c
	.byte	0xf
	.byte	0x4
	.4byte	0x1a8
	.byte	0x1a
	.4byte	0x8c2
	.byte	0x18
	.4byte	0x32
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8c8
	.byte	0xf
	.byte	0x4
	.4byte	0x8b7
	.byte	0xf
	.byte	0x4
	.4byte	0x7d0
	.byte	0x1b
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x386
	.byte	0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x386
	.byte	0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x386
	.byte	0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x307
	.byte	0x17
	.4byte	0x4ce
	.byte	0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x308
	.byte	0x1d
	.4byte	0x4d4
	.byte	0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x31a
	.byte	0x18
	.4byte	0x2c2
	.byte	0x2
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x193
	.byte	0xd
	.4byte	0x32
	.byte	0x2
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x195
	.byte	0xd
	.4byte	0x32
	.byte	0x2
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x196
	.byte	0xe
	.4byte	0x949
	.byte	0x8
	.4byte	0x640
	.4byte	0x959
	.byte	0x9
	.4byte	0x71
	.byte	0x1e
	.byte	0
	.byte	0x8
	.4byte	0x32
	.4byte	0x969
	.byte	0x9
	.4byte	0x71
	.byte	0x31
	.byte	0
	.byte	0x8
	.4byte	0x32
	.4byte	0x97f
	.byte	0x9
	.4byte	0x71
	.byte	0x31
	.byte	0x9
	.4byte	0x71
	.byte	0x31
	.byte	0
	.byte	0x1c
	.byte	0x28
	.byte	0x2
	.2byte	0x19f
	.byte	0xb
	.4byte	0x9b4
	.byte	0x15
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x1a0
	.byte	0x1f
	.4byte	0x25
	.byte	0
	.byte	0x15
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x32
	.byte	0x4
	.byte	0x15
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x1a2
	.byte	0x18
	.4byte	0x949
	.byte	0x8
	.byte	0
	.byte	0x1c
	.byte	0x24
	.byte	0x2
	.2byte	0x1a4
	.byte	0xb
	.4byte	0x9db
	.byte	0x15
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x1a5
	.byte	0x1f
	.4byte	0x25
	.byte	0
	.byte	0x15
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x1a6
	.byte	0x18
	.4byte	0x949
	.byte	0x4
	.byte	0
	.byte	0x1c
	.byte	0x2
	.byte	0x2
	.2byte	0x1a8
	.byte	0xb
	.4byte	0xa02
	.byte	0x15
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x1a9
	.byte	0x18
	.4byte	0x640
	.byte	0
	.byte	0x15
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x1aa
	.byte	0x18
	.4byte	0x640
	.byte	0x1
	.byte	0
	.byte	0x1d
	.byte	0x28
	.byte	0x2
	.2byte	0x19e
	.byte	0x5
	.4byte	0xa34
	.byte	0x1e
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x1a3
	.byte	0x15
	.4byte	0x97f
	.byte	0x1e
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x1a7
	.byte	0x15
	.4byte	0x9b4
	.byte	0x1e
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x1ab
	.byte	0x15
	.4byte	0x9db
	.byte	0
	.byte	0x14
	.4byte	.LASF136
	.byte	0x30
	.byte	0x2
	.2byte	0x19a
	.byte	0x10
	.4byte	0xa6d
	.byte	0x15
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x19c
	.byte	0x14
	.4byte	0xa6d
	.byte	0
	.byte	0x15
	.4byte	.LASF138
	.byte	0x2
	.2byte	0x19d
	.byte	0x11
	.4byte	0x25
	.byte	0x4
	.byte	0x15
	.4byte	.LASF139
	.byte	0x2
	.2byte	0x1ac
	.byte	0xd
	.4byte	0xa02
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xa34
	.byte	0x2
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x1ad
	.byte	0x14
	.4byte	0xa6d
	.byte	0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0xa73
	.byte	0x5
	.byte	0x3
	.4byte	Ptr_Glob
	.byte	0x1f
	.4byte	.LASF142
	.byte	0x1
	.byte	0x1b
	.byte	0x11
	.4byte	0xa73
	.byte	0x5
	.byte	0x3
	.4byte	Next_Ptr_Glob
	.byte	0x1f
	.4byte	.LASF143
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.4byte	0x32
	.byte	0x5
	.byte	0x3
	.4byte	Int_Glob
	.byte	0x1f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.4byte	0x92f
	.byte	0x5
	.byte	0x3
	.4byte	Bool_Glob
	.byte	0x1f
	.4byte	.LASF145
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	0x640
	.byte	0x5
	.byte	0x3
	.4byte	Ch_1_Glob
	.byte	0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x1f
	.byte	0x11
	.4byte	0x640
	.byte	0x5
	.byte	0x3
	.4byte	Ch_2_Glob
	.byte	0x1f
	.4byte	.LASF147
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x959
	.byte	0x5
	.byte	0x3
	.4byte	Arr_1_Glob
	.byte	0x1f
	.4byte	.LASF148
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x969
	.byte	0x5
	.byte	0x3
	.4byte	Arr_2_Glob
	.byte	0x20
	.string	"Reg"
	.byte	0x1
	.byte	0x28
	.byte	0x11
	.4byte	0x92f
	.byte	0x5
	.byte	0x3
	.4byte	Reg
	.byte	0x1f
	.4byte	.LASF149
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	Begin_Time
	.byte	0x1f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x45
	.byte	0x11
	.4byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	End_Time
	.byte	0x1f
	.4byte	.LASF151
	.byte	0x1
	.byte	0x46
	.byte	0x11
	.4byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	User_Time
	.byte	0x1f
	.4byte	.LASF152
	.byte	0x1
	.byte	0x47
	.byte	0x7
	.4byte	0xb6a
	.byte	0x5
	.byte	0x3
	.4byte	Microseconds
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF153
	.byte	0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0xb6a
	.byte	0x5
	.byte	0x3
	.4byte	Dhrystones_Per_Second
	.byte	0x21
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x17c
	.byte	0x1
	.4byte	0x32
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x22
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x170
	.byte	0x1
	.4byte	0x32
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd2
	.byte	0x23
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x174
	.byte	0xb
	.4byte	0x92f
	.byte	0xe
	.byte	0x3
	.4byte	Ch_1_Glob
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x41
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0x22
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	0x32
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xc20
	.byte	0x24
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x166
	.byte	0xe
	.4byte	0xc20
	.4byte	.LLST3
	.byte	0x25
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.4byte	0x32
	.4byte	0xc10
	.byte	0x26
	.byte	0
	.byte	0x27
	.4byte	.LVL11
	.4byte	0x168c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xa73
	.byte	0x22
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x14a
	.byte	0x1
	.4byte	0x32
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xc75
	.byte	0x24
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x14f
	.byte	0xc
	.4byte	0xc75
	.4byte	.LLST0
	.byte	0x29
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x151
	.byte	0xd
	.4byte	0x922
	.4byte	.LLST1
	.byte	0x29
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x152
	.byte	0xf
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x922
	.byte	0x22
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x128
	.byte	0x1
	.4byte	0x32
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xd2d
	.byte	0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x12b
	.byte	0xe
	.4byte	0xa73
	.4byte	.LLST4
	.byte	0x29
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x12e
	.byte	0xf
	.4byte	0xa73
	.4byte	.LLST5
	.byte	0x2a
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x138
	.byte	0x3
	.4byte	0x32
	.4byte	0xccb
	.byte	0x26
	.byte	0
	.byte	0x2b
	.4byte	.Ldebug_ranges0+0
	.4byte	0xd1c
	.byte	0x25
	.4byte	.LASF167
	.byte	0x1
	.byte	0xb4
	.byte	0x9
	.4byte	0x32
	.4byte	0xce6
	.byte	0x26
	.byte	0
	.byte	0x25
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.4byte	0x32
	.4byte	0xcf8
	.byte	0x26
	.byte	0
	.byte	0x2c
	.4byte	.LVL19
	.4byte	0x1698
	.4byte	0xd0c
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0
	.byte	0x27
	.4byte	.LVL22
	.4byte	0x168c
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL15
	.4byte	0xbd2
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF168
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x32
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x168c
	.byte	0x2f
	.4byte	.LASF169
	.byte	0x1
	.byte	0x53
	.byte	0x13
	.4byte	0x922
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x30
	.4byte	.LASF170
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.4byte	0x922
	.4byte	.LLST6
	.byte	0x2f
	.4byte	.LASF171
	.byte	0x1
	.byte	0x55
	.byte	0x13
	.4byte	0x922
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0x30
	.4byte	.LASF172
	.byte	0x1
	.byte	0x56
	.byte	0x8
	.4byte	0x640
	.4byte	.LLST7
	.byte	0x2f
	.4byte	.LASF162
	.byte	0x1
	.byte	0x57
	.byte	0x15
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x2f
	.4byte	.LASF173
	.byte	0x1
	.byte	0x58
	.byte	0x10
	.4byte	0x93c
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x2f
	.4byte	.LASF174
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.4byte	0x93c
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x30
	.4byte	.LASF175
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	0x32
	.4byte	.LLST8
	.byte	0x30
	.4byte	.LASF176
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	0x32
	.4byte	.LLST9
	.byte	0x31
	.4byte	.LASF177
	.byte	0x7
	.byte	0
	.4byte	0x63a
	.4byte	0xdf1
	.byte	0x18
	.4byte	0x63a
	.byte	0x18
	.4byte	0x670
	.byte	0
	.byte	0x32
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xe27
	.byte	0x33
	.string	"n"
	.byte	0x1
	.byte	0x7f
	.byte	0x9
	.4byte	0x32
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x2d
	.4byte	.LVL33
	.4byte	0x16a4
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0xf87
	.byte	0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x99
	.byte	0x5
	.4byte	0x32
	.4byte	0xe42
	.byte	0x26
	.byte	0
	.byte	0x25
	.4byte	.LASF155
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x32
	.4byte	0xe54
	.byte	0x26
	.byte	0
	.byte	0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0xa0
	.byte	0x13
	.4byte	0x32
	.4byte	0xe66
	.byte	0x26
	.byte	0
	.byte	0x25
	.4byte	.LASF180
	.byte	0x1
	.byte	0xab
	.byte	0x5
	.4byte	0x32
	.4byte	0xe78
	.byte	0x26
	.byte	0
	.byte	0x25
	.4byte	.LASF163
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.4byte	0x32
	.4byte	0xe8a
	.byte	0x26
	.byte	0
	.byte	0x25
	.4byte	.LASF157
	.byte	0x1
	.byte	0xbf
	.byte	0x5
	.4byte	0x32
	.4byte	0xe9c
	.byte	0x26
	.byte	0
	.byte	0x32
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xed2
	.byte	0x25
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.4byte	0x32
	.4byte	0xebb
	.byte	0x26
	.byte	0
	.byte	0x2d
	.4byte	.LVL43
	.4byte	0x168c
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xf04
	.byte	0x25
	.4byte	.LASF167
	.byte	0x1
	.byte	0xb4
	.byte	0x9
	.4byte	0x32
	.4byte	0xeed
	.byte	0x26
	.byte	0
	.byte	0x2d
	.4byte	.LVL121
	.4byte	0x1698
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL39
	.4byte	0xb83
	.byte	0x34
	.4byte	.LVL40
	.4byte	0xb9a
	.byte	0x2c
	.4byte	.LVL42
	.4byte	0x16b0
	.4byte	0xf32
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x2c
	.4byte	.LVL44
	.4byte	0x16bc
	.4byte	0xf52
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR8
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	Arr_2_Glob
	.byte	0
	.byte	0x34
	.4byte	.LVL45
	.4byte	0xc7b
	.byte	0x2c
	.4byte	.LVL47
	.4byte	0x16c8
	.4byte	0xf75
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.byte	0x2d
	.4byte	.LVL53
	.4byte	0xc26
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL24
	.4byte	0x16d4
	.4byte	0xf9b
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL25
	.4byte	0x16d4
	.4byte	0xfaf
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL26
	.4byte	0x16e0
	.4byte	0xfcb
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x2c
	.4byte	.LVL27
	.4byte	0x16eb
	.4byte	0xfe2
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL28
	.4byte	0x16eb
	.4byte	0xff9
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x2c
	.4byte	.LVL29
	.4byte	0x16eb
	.4byte	0x1010
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL30
	.4byte	0x16eb
	.4byte	0x1027
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x2c
	.4byte	.LVL31
	.4byte	0x16eb
	.4byte	0x103e
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL32
	.4byte	0x16eb
	.4byte	0x1055
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x2c
	.4byte	.LVL34
	.4byte	0x16eb
	.4byte	0x106c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL35
	.4byte	0x16eb
	.4byte	0x108a
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x2c
	.4byte	.LVL36
	.4byte	0x16f7
	.4byte	0x109d
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL54
	.4byte	0x16f7
	.4byte	0x10b0
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL55
	.4byte	0x16eb
	.4byte	0x10c7
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x2c
	.4byte	.LVL56
	.4byte	0x16eb
	.4byte	0x10de
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL57
	.4byte	0x16eb
	.4byte	0x10f5
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x2c
	.4byte	.LVL58
	.4byte	0x16eb
	.4byte	0x110c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL59
	.4byte	0x16eb
	.4byte	0x1123
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x2c
	.4byte	.LVL60
	.4byte	0x16eb
	.4byte	0x113f
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x2c
	.4byte	.LVL61
	.4byte	0x16eb
	.4byte	0x1156
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x2c
	.4byte	.LVL62
	.4byte	0x16eb
	.4byte	0x1172
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL63
	.4byte	0x16eb
	.4byte	0x1189
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x2c
	.4byte	.LVL64
	.4byte	0x16eb
	.4byte	0x11a6
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0x2c
	.4byte	.LVL65
	.4byte	0x16eb
	.4byte	0x11bd
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x2c
	.4byte	.LVL66
	.4byte	0x16eb
	.4byte	0x11da
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.byte	0x2c
	.4byte	.LVL67
	.4byte	0x16eb
	.4byte	0x11f1
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x2c
	.4byte	.LVL68
	.4byte	0x16eb
	.4byte	0x120d
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x2c
	.4byte	.LVL69
	.4byte	0x16eb
	.4byte	0x1224
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x2c
	.4byte	.LVL70
	.4byte	0x16eb
	.4byte	0x123b
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x2c
	.4byte	.LVL71
	.4byte	0x16eb
	.4byte	0x1252
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x2c
	.4byte	.LVL73
	.4byte	0x16eb
	.4byte	0x1269
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x2c
	.4byte	.LVL74
	.4byte	0x16eb
	.4byte	0x1280
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x2c
	.4byte	.LVL76
	.4byte	0x16eb
	.4byte	0x1297
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0x2c
	.4byte	.LVL77
	.4byte	0x16eb
	.4byte	0x12b3
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL78
	.4byte	0x16eb
	.4byte	0x12ca
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0x2c
	.4byte	.LVL79
	.4byte	0x16eb
	.4byte	0x12e6
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x2c
	.4byte	.LVL80
	.4byte	0x16eb
	.4byte	0x12fd
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0x2c
	.4byte	.LVL81
	.4byte	0x16eb
	.4byte	0x1319
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x2c
	.4byte	.LVL82
	.4byte	0x16eb
	.4byte	0x1330
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0x2c
	.4byte	.LVL83
	.4byte	0x16eb
	.4byte	0x1347
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x2c
	.4byte	.LVL84
	.4byte	0x16eb
	.4byte	0x135e
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0x2c
	.4byte	.LVL85
	.4byte	0x16eb
	.4byte	0x1375
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x2c
	.4byte	.LVL86
	.4byte	0x16eb
	.4byte	0x138c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0x2c
	.4byte	.LVL87
	.4byte	0x16eb
	.4byte	0x13a3
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0x2c
	.4byte	.LVL88
	.4byte	0x16eb
	.4byte	0x13bf
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL89
	.4byte	0x16eb
	.4byte	0x13d6
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0x2c
	.4byte	.LVL90
	.4byte	0x16eb
	.4byte	0x13f2
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL91
	.4byte	0x16eb
	.4byte	0x1409
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0x2c
	.4byte	.LVL92
	.4byte	0x16eb
	.4byte	0x1425
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0x2c
	.4byte	.LVL93
	.4byte	0x16eb
	.4byte	0x143c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0x2c
	.4byte	.LVL94
	.4byte	0x16eb
	.4byte	0x1453
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x2c
	.4byte	.LVL95
	.4byte	0x16eb
	.4byte	0x146a
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.byte	0x2c
	.4byte	.LVL96
	.4byte	0x16eb
	.4byte	0x1486
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x2c
	.4byte	.LVL98
	.4byte	0x16eb
	.4byte	0x14a6
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0x2c
	.4byte	.LVL99
	.4byte	0x16eb
	.4byte	0x14c2
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x2c
	.4byte	.LVL100
	.4byte	0x16eb
	.4byte	0x14d9
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0x2c
	.4byte	.LVL101
	.4byte	0x16eb
	.4byte	0x14f5
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x2c
	.4byte	.LVL102
	.4byte	0x16eb
	.4byte	0x150c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.byte	0x2c
	.4byte	.LVL103
	.4byte	0x16eb
	.4byte	0x1528
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL104
	.4byte	0x16eb
	.4byte	0x1546
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0
	.byte	0x2c
	.4byte	.LVL105
	.4byte	0x16eb
	.4byte	0x155d
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0x2c
	.4byte	.LVL106
	.4byte	0x16eb
	.4byte	0x157b
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x2c
	.4byte	.LVL107
	.4byte	0x16eb
	.4byte	0x1592
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.byte	0x2c
	.4byte	.LVL108
	.4byte	0x16eb
	.4byte	0x15a9
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL113
	.4byte	0x16eb
	.4byte	0x15c0
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0x2c
	.4byte	.LVL115
	.4byte	0x16eb
	.4byte	0x15d7
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.byte	0x2c
	.4byte	.LVL116
	.4byte	0x16eb
	.4byte	0x15ee
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.byte	0x2c
	.4byte	.LVL118
	.4byte	0x16eb
	.4byte	0x1605
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.byte	0x2c
	.4byte	.LVL119
	.4byte	0x16eb
	.4byte	0x161c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL126
	.4byte	0x16eb
	.4byte	0x1633
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2c
	.4byte	.LVL127
	.4byte	0x16eb
	.4byte	0x164a
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2c
	.4byte	.LVL129
	.4byte	0x16eb
	.4byte	0x1661
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0x2c
	.4byte	.LVL130
	.4byte	0x16eb
	.4byte	0x1678
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0x2d
	.4byte	.LVL131
	.4byte	0x16eb
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.byte	0x35
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x1
	.byte	0xb4
	.byte	0x9
	.byte	0x35
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x8
	.byte	0xca
	.byte	0x5
	.byte	0x35
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x1
	.byte	0xa0
	.byte	0x13
	.byte	0x35
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x1
	.byte	0xab
	.byte	0x5
	.byte	0x35
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.byte	0x35
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.byte	0x36
	.4byte	.LASF190
	.4byte	.LASF191
	.byte	0x7
	.byte	0
	.byte	0x35
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x35
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x23
	.byte	0xa
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x23
	.byte	0x9
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x23
	.byte	0x9
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x3
	.byte	0x7c
	.byte	0x74
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL52
	.4byte	.LVL75
	.2byte	0xb
	.byte	0x84
	.byte	0
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x37
	.byte	0x1e
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL97
	.2byte	0x8
	.byte	0x84
	.byte	0
	.byte	0x37
	.byte	0x1e
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xa
	.2byte	0x7d0
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xa
	.2byte	0x7d0
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF124:
	.string	"Boolean"
.LASF183:
	.string	"malloc"
.LASF137:
	.string	"Ptr_Comp"
.LASF49:
	.string	"_size"
.LASF95:
	.string	"_rand48"
.LASF61:
	.string	"_emergency"
.LASF125:
	.string	"Str_30"
.LASF160:
	.string	"Bool_Loc"
.LASF54:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF138:
	.string	"Discr"
.LASF7:
	.string	"long long unsigned int"
.LASF141:
	.string	"Ptr_Glob"
.LASF53:
	.string	"_lbfsize"
.LASF161:
	.string	"Int_Loc"
.LASF189:
	.string	"__locale_t"
.LASF128:
	.string	"Str_Comp"
.LASF113:
	.string	"_mbrtowc_state"
.LASF139:
	.string	"variant"
.LASF108:
	.string	"_wctomb_state"
.LASF29:
	.string	"__tm_sec"
.LASF140:
	.string	"Rec_Pointer"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF174:
	.string	"Str_2_Loc"
.LASF83:
	.string	"_ubuf"
.LASF48:
	.string	"_base"
.LASF31:
	.string	"__tm_hour"
.LASF144:
	.string	"Bool_Glob"
.LASF74:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF186:
	.string	"GNU C17 8.2.0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -mexplicit-relocs -g -O0 -O3 -ffunction-sections -fdata-sections -fno-inline -fno-builtin-printf -fno-common -falign-functions=4"
.LASF143:
	.string	"Int_Glob"
.LASF78:
	.string	"_cookie"
.LASF73:
	.string	"__sglue"
.LASF4:
	.string	"long int"
.LASF100:
	.string	"_mprec"
.LASF51:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF57:
	.string	"_stdin"
.LASF188:
	.string	"/home/tanqinhan/Desktop/riscv/freedom-e-sdk/software/dhrystone"
.LASF85:
	.string	"_blksize"
.LASF133:
	.string	"var_1"
.LASF134:
	.string	"var_2"
.LASF135:
	.string	"var_3"
.LASF68:
	.string	"_cvtbuf"
.LASF86:
	.string	"_offset"
.LASF184:
	.string	"printf"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_mbrlen_state"
.LASF173:
	.string	"Str_1_Loc"
.LASF39:
	.string	"_fnargs"
.LASF181:
	.string	"scanf"
.LASF45:
	.string	"_fns"
.LASF10:
	.string	"Enumeration"
.LASF25:
	.string	"_sign"
.LASF21:
	.string	"_flock_t"
.LASF59:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF66:
	.string	"_gamma_signgam"
.LASF147:
	.string	"Arr_1_Glob"
.LASF79:
	.string	"_read"
.LASF102:
	.string	"_result_k"
.LASF28:
	.string	"__tm"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF8:
	.string	"unsigned int"
.LASF17:
	.string	"__wchb"
.LASF58:
	.string	"_stdout"
.LASF67:
	.string	"_cvtlen"
.LASF5:
	.string	"long unsigned int"
.LASF50:
	.string	"__sFILE_fake"
.LASF142:
	.string	"Next_Ptr_Glob"
.LASF93:
	.string	"_niobs"
.LASF152:
	.string	"Microseconds"
.LASF3:
	.string	"short unsigned int"
.LASF76:
	.string	"_signal_buf"
.LASF71:
	.string	"_asctime_buf"
.LASF182:
	.string	"Func_1"
.LASF179:
	.string	"Func_2"
.LASF131:
	.string	"Ch_1_Comp"
.LASF101:
	.string	"_result"
.LASF16:
	.string	"__wch"
.LASF190:
	.string	"memcpy"
.LASF15:
	.string	"wint_t"
.LASF177:
	.string	"strcpy"
.LASF191:
	.string	"__builtin_memcpy"
.LASF87:
	.string	"_lock"
.LASF89:
	.string	"_flags2"
.LASF80:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF165:
	.string	"Next_Record"
.LASF148:
	.string	"Arr_2_Glob"
.LASF75:
	.string	"_misc"
.LASF9:
	.string	"long double"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF132:
	.string	"Ch_2_Comp"
.LASF163:
	.string	"Proc_1"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF156:
	.string	"Proc_3"
.LASF155:
	.string	"Proc_4"
.LASF178:
	.string	"Proc_5"
.LASF167:
	.string	"Proc_6"
.LASF187:
	.string	"dhry_1.c"
.LASF180:
	.string	"Proc_8"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF185:
	.string	"time"
.LASF62:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF175:
	.string	"Run_Index"
.LASF158:
	.string	"Ptr_Ref_Par"
.LASF136:
	.string	"record"
.LASF123:
	.string	"One_Fifty"
.LASF127:
	.string	"Int_Comp"
.LASF104:
	.string	"_freelist"
.LASF162:
	.string	"Enum_Loc"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF164:
	.string	"Ptr_Val_Par"
.LASF151:
	.string	"User_Time"
.LASF149:
	.string	"Begin_Time"
.LASF1:
	.string	"unsigned char"
.LASF154:
	.string	"Dhrystones_Per_Second"
.LASF94:
	.string	"_iobs"
.LASF172:
	.string	"Ch_Index"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF47:
	.string	"__sbuf"
.LASF171:
	.string	"Int_3_Loc"
.LASF91:
	.string	"__FILE"
.LASF20:
	.string	"_mbstate_t"
.LASF77:
	.string	"__sFILE"
.LASF88:
	.string	"_mbstate"
.LASF99:
	.string	"_rand_next"
.LASF107:
	.string	"_mblen_state"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF64:
	.string	"_locale"
.LASF65:
	.string	"__cleanup"
.LASF63:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF55:
	.string	"_reent"
.LASF96:
	.string	"_seed"
.LASF18:
	.string	"__count"
.LASF19:
	.string	"__value"
.LASF81:
	.string	"_seek"
.LASF120:
	.string	"_impure_ptr"
.LASF13:
	.string	"_fpos_t"
.LASF145:
	.string	"Ch_1_Glob"
.LASF56:
	.string	"_errno"
.LASF90:
	.string	"char"
.LASF30:
	.string	"__tm_min"
.LASF122:
	.string	"_global_atexit"
.LASF97:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF106:
	.string	"_strtok_last"
.LASF169:
	.string	"Int_1_Loc"
.LASF41:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF98:
	.string	"_add"
.LASF22:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF166:
	.string	"Proc_7"
.LASF170:
	.string	"Int_2_Loc"
.LASF121:
	.string	"_global_impure_ptr"
.LASF146:
	.string	"Ch_2_Glob"
.LASF126:
	.string	"Enum_Comp"
.LASF52:
	.string	"_file"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF14:
	.string	"_ssize_t"
.LASF110:
	.string	"_l64a_buf"
.LASF72:
	.string	"_sig_func"
.LASF153:
	.string	"float"
.LASF130:
	.string	"Str_2_Comp"
.LASF84:
	.string	"_nbuf"
.LASF150:
	.string	"End_Time"
.LASF37:
	.string	"__tm_isdst"
.LASF70:
	.string	"_localtime_buf"
.LASF82:
	.string	"_close"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF69:
	.string	"_r48"
.LASF176:
	.string	"Number_Of_Runs"
.LASF109:
	.string	"_mbtowc_state"
.LASF157:
	.string	"Proc_2"
.LASF103:
	.string	"_p5s"
.LASF168:
	.string	"main"
.LASF129:
	.string	"E_Comp_2"
.LASF159:
	.string	"Int_Par_Ref"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (GNU) 8.2.0"
