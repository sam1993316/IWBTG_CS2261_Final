	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r1, #16
	mov	r7, #30720
	mov	r5, #50
	mov	r4, #1
	mov	lr, #2
	mov	r2, #0
	mov	ip, #4
	mov	r0, #3
	ldr	r6, .L4
	ldr	r3, .L4+4
	ldr	r6, [r6]
	str	r7, [r3]
	stmib	r3, {r5, r6}
	str	r4, [r3, #12]
	str	lr, [r3, #28]
	str	ip, [r3, #32]
	str	r0, [r3, #40]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L7
	add	r3, r2, #32
	ldm	r3, {r3, ip}
	ldm	r2, {r0, r1}
	add	r3, r3, ip, lsl #5
	ldr	r2, .L7+4
	lsl	r3, r3, #1
	asr	r0, r0, #8
	orr	r1, r1, #16384
	strh	r3, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initApple
	.syntax unified
	.arm
	.fpu softvfp
	.type	initApple, %function
initApple:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L13
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r2, #0
	mov	r3, r1
	mov	r0, #16
	mov	r4, #2
	mov	ip, #1
	add	lr, r1, #260
.L10:
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	ip, [r3, #44]
	add	r3, r3, #52
	cmp	r3, lr
	bne	.L10
	mov	r9, #113
	mov	r8, #20
	mov	r7, #115
	mov	r6, #80
	mov	r5, #112
	mov	r4, #103
	mov	lr, #110
	mov	r0, #124
	mov	r2, #116
	mov	r3, #150
	str	r9, [r1]
	str	r8, [r1, #4]
	str	r7, [r1, #52]
	str	r6, [r1, #56]
	str	r5, [r1, #104]
	str	r4, [r1, #108]
	str	lr, [r1, #156]
	str	ip, [r1, #100]
	str	ip, [r1, #204]
	str	r0, [r1, #160]
	str	r2, [r1, #208]
	str	r3, [r1, #212]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	apples
	.size	initApple, .-initApple
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #3
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #1
	mov	r4, #0
	mov	r5, #16
	mov	r7, #2
	mov	lr, #30720
	mov	r1, #4
	mov	r0, #50
	ldr	r3, .L17
	str	r2, [r3, #40]
	ldr	r2, .L17+4
	str	r6, [r2]
	ldr	r2, .L17+8
	ldr	ip, .L17+12
	str	r6, [r2]
	ldr	r2, .L17+16
	ldr	ip, [ip]
	str	r4, [r2]
	ldr	r2, .L17+20
	str	lr, [r3]
	str	r1, [r3, #32]
	str	r6, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r7, [r3, #28]
	str	r7, [r2]
	stmib	r3, {r0, ip}
	bl	initApple
	mov	r1, #20
	mov	r2, #180
	ldr	r3, .L17+24
	str	r6, [r3, #44]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r7, [r3, #40]
	stm	r3, {r1, r2}
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	player
	.word	playerLife
	.word	currLevel
	.word	.LANCHOR0
	.word	level2Cheat
	.word	appleSPD
	.word	heart
	.size	initGame, .-initGame
	.align	2
	.global	updateApple
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateApple, %function
updateApple:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #24]
	ldr	r3, .L47
	push	{r4, r5, lr}
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	sub	sp, sp, #20
	bne	.L20
	ldr	r1, [r0, #40]
	ldr	ip, [r0, #36]
	sub	r1, r1, #1
	cmp	ip, r1
	addlt	ip, ip, #1
	strlt	ip, [r0, #36]
	strge	r3, [r0, #36]
.L20:
	ldr	r3, [r0, #44]
	add	r2, r2, #1
	cmp	r3, #0
	str	r2, [r0, #24]
	beq	.L19
	ldr	r2, .L47+4
	ldr	ip, [r2, #4]
	ldr	lr, [r0, #4]
	add	r3, ip, #11
	cmp	r3, lr
	ldr	r4, [r0]
	ldr	r3, [r0, #48]
	bge	.L46
.L45:
	ldr	r1, [r0, #8]
.L27:
	add	r1, r4, r1
	sub	r3, r1, #10
	cmp	r3, #149
	movhi	r3, #0
	mov	r4, #15
	mov	r5, #12
	str	r1, [r0]
	strhi	r3, [r0, #44]
	ldr	r3, [r2]
	asr	r3, r3, #8
	ldr	r2, [r0, #16]
	str	r3, [sp, #4]
	str	r4, [sp, #8]
	str	ip, [sp]
	mov	r0, lr
	str	r5, [sp, #12]
	mov	r3, #8
	ldr	r4, .L47+8
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L47+12
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
.L19:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L46:
	ldr	r1, [r2]
	cmp	r3, #0
	asr	r1, r1, #8
	ldrne	r3, .L47+16
	ldrne	r1, [r3]
	strne	r1, [r0, #8]
	bne	.L27
.L25:
	cmp	r1, r4
	bge	.L45
	add	r3, lr, #12
	cmp	ip, r3
	bgt	.L45
	ldr	r3, .L47+16
	ldr	r3, [r3]
	rsb	r1, r3, #0
	str	r1, [r0, #8]
	b	.L27
.L48:
	.align	2
.L47:
	.word	1717986919
	.word	player
	.word	collision
	.word	playerLife
	.word	appleSPD
	.size	updateApple, .-updateApple
	.align	2
	.global	drawApple
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawApple, %function
drawApple:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	ldr	r3, .L55
	ldr	r2, .L55+4
	add	ip, r3, #260
.L52:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	ldrne	r1, [r3, #36]
	ldrne	r0, [r3, #4]
	lslne	r1, r1, #6
	ldrne	lr, [r3]
	addne	r1, r1, #8
	orrne	r0, r0, #16384
	add	r3, r3, #52
	strhne	r1, [r2, #12]	@ movhi
	strhne	r0, [r2, #10]	@ movhi
	strhne	lr, [r2, #8]	@ movhi
	strheq	r4, [r2, #8]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L52
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	apples
	.word	shadowOAM
	.size	drawApple, .-drawApple
	.align	2
	.global	initHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHeart, %function
initHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #20
	mov	lr, #180
	mov	r1, #16
	mov	ip, #2
	mov	r0, #1
	ldr	r3, .L59
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r0, [r3, #44]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	heart
	.size	initHeart, .-initHeart
	.align	2
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L70
	ldr	r3, .L70+4
	ldr	r2, [r1, #24]
	push	{r4, r5, lr}
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #3
	ldr	r0, [r1, #36]
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	lslne	r0, r0, #22
	lsrne	r0, r0, #16
	bne	.L63
	ldr	ip, [r1, #40]
	sub	ip, ip, #1
	cmp	ip, r0
	movle	r0, r3
	addgt	r0, r0, #1
	lslgt	r3, r0, #22
	strle	r3, [r1, #36]
	strgt	r0, [r1, #36]
	lsrgt	r0, r3, #16
.L63:
	ldr	r3, .L70+8
	ldr	r3, [r3]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r1, #24]
	movne	r2, #512
	ldr	ip, [r1, #4]
	ldr	r3, .L70+12
	ldr	lr, [r1]
	orr	ip, ip, #16384
	strh	lr, [r3, #48]	@ movhi
	strh	ip, [r3, #50]	@ movhi
	strh	r0, [r3, #52]	@ movhi
	strhne	r2, [r3, #48]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	heart
	.word	1717986919
	.word	currLevel
	.word	shadowOAM
	.size	drawHeart, .-drawHeart
	.align	2
	.global	updateHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHeart, %function
updateHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #15
	mov	lr, #12
	ldr	r2, .L78
	ldm	r2, {r1, r4}
	ldr	r3, .L78+4
	sub	sp, sp, #16
	asr	r1, r1, #8
	ldr	r2, [r3, #16]
	str	r1, [sp, #4]
	ldr	r1, [r3]
	ldr	r0, [r3, #4]
	mov	r3, #8
	str	r4, [sp]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r4, .L78+8
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #2
	ldrne	r3, .L78+12
	strne	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	player
	.word	heart
	.word	collision
	.word	playerLife
	.size	updateHeart, .-updateHeart
	.align	2
	.global	initApple2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initApple2, %function
initApple2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L84
	push	{r4, lr}
	mov	r2, #0
	mov	r3, r1
	mov	r0, #16
	mov	r4, #2
	mov	lr, #1
	add	ip, r1, #156
.L81:
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	lr, [r3, #44]
	add	r3, r3, #52
	cmp	r3, ip
	bne	.L81
	mov	r3, #160
	mov	ip, #100
	mov	r0, #150
	mov	r2, #200
	str	r3, [r1]
	str	r3, [r1, #52]
	str	r3, [r1, #104]
	str	ip, [r1, #4]
	str	r0, [r1, #56]
	str	r2, [r1, #108]
	pop	{r4, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	stage3apples
	.size	initApple2, .-initApple2
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L190+8
	ldrh	r2, [r6]
	tst	r2, #2
	beq	.L87
	ldr	r3, .L190+12
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L175
.L87:
	ldr	r5, .L190+16
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L176
.L91:
	cmp	r3, #2
	beq	.L177
.L110:
	cmp	r3, #3
	beq	.L178
.L86:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L175:
	ldr	r1, .L190+20
	ldr	r0, [r1]
	cmp	r0, #0
	moveq	r3, #1
	str	r3, [r1]
	ldr	r3, .L190+24
	ldr	r1, [r3]
	cmp	r1, #2
	moveq	r1, #1
	movne	r1, #2
	ldr	r5, .L190+16
	str	r1, [r3]
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L91
.L176:
	mov	r0, #4
	ldr	r4, .L190+28
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldr	r1, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L190+32
	smull	r8, r9, r1, r3
	asr	r3, r1, #31
	rsb	r3, r3, r9, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r1, r3, lsl #2
	str	r0, [r4, #28]
	bne	.L93
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L93:
	ldr	r3, .L190+36
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L169
	ldr	r7, .L190+40
.L95:
	ldr	r3, .L190+36
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L96
	ldr	r3, [r4]
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #16]
	asr	ip, r3, #8
	add	r1, r0, r1
	rsb	r3, ip, ip, lsl #4
	add	r1, r1, #1
	add	r3, r1, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r8, [r7, r3]
	ldr	r3, .L190+44
	cmp	r8, r3
	beq	.L179
.L96:
	tst	r2, #1
	beq	.L99
	ldr	r3, .L190+12
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L99
	ldr	r8, .L190+48
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L180
.L99:
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
.L98:
	ldr	r3, [r4, #20]
	asr	ip, r1, #8
	add	r3, ip, r3
	asr	lr, r0, #8
	add	r3, r3, lr
	rsb	r3, r3, r3, lsl #4
	ldr	r8, [r4, #4]
	lsl	r3, r3, #4
	add	r2, r3, r8
	add	r2, r7, r2, lsl #1
	ldrh	fp, [r2, #2]
	ldr	r2, .L190+44
	cmp	fp, r2
	beq	.L181
.L100:
	mov	r3, #0
	ldr	r2, .L190+48
	str	r3, [r4, #8]
	str	r3, [r2]
.L104:
	ldr	r3, [r4, #28]
	cmp	r3, #4
	moveq	r2, #0
	ldrne	r3, [r4, #24]
	ldreq	r3, [r4, #32]
	addne	r3, r3, #1
	streq	r3, [r4, #28]
	strne	r3, [r4, #24]
	ldr	r3, [r4, #4]
	streq	r2, [r4, #36]
	cmp	r3, #0
	bgt	.L107
	mov	r0, #15360
	mov	r1, #0
	ldr	r3, [r4, #16]
	ldr	r2, [r5]
	rsb	r3, r3, #238
	add	r2, r2, #1
	stm	r4, {r0, r3}
	str	r2, [r5]
	str	r1, [r4, #8]
.L107:
	cmp	r3, #228
	ble	.L173
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L173
	ldr	r3, .L190+12
	ldrh	r3, [r3]
	tst	r3, #2
	ldreq	r2, .L190+52
	ldreq	r3, [r2]
	addeq	r3, r3, #1
	streq	r3, [r2]
.L173:
	ldr	r3, [r5]
	cmp	r3, #2
	bne	.L110
.L177:
	mov	r1, #4
	ldr	r4, .L190+28
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldr	r2, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L190+32
	smull	r8, r9, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r9, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	str	r1, [r4, #28]
	bne	.L112
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r3, [r4, #36]
.L112:
	ldr	r3, .L190+36
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L170
	ldr	r7, .L190+56
.L114:
	ldr	r3, .L190+36
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L115
	ldr	r3, [r4]
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	asr	r1, r3, #8
	add	r2, r0, r2
	rsb	r3, r1, r1, lsl #4
	add	r2, r2, #1
	add	r3, r2, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	lr, [r7, r3]
	ldr	r3, .L190+44
	cmp	lr, r3
	beq	.L182
.L115:
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L118
	ldr	r3, .L190+12
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L118
	ldr	r8, .L190+48
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L183
.L118:
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
.L117:
	ldr	r3, [r4, #20]
	add	r3, r3, r1, asr #8
	ldr	r2, [r4, #4]
	add	r3, r3, r0, asr #8
	rsb	r3, r3, r3, lsl #4
	add	r3, r2, r3, lsl #4
	add	r2, r7, r3, lsl #1
	ldrh	r2, [r2, #2]
	ldr	ip, .L190+44
	cmp	r2, ip
	beq	.L184
.L119:
	mov	r3, #0
	ldr	r2, .L190+48
	str	r3, [r4, #8]
	str	r3, [r2]
.L120:
	ldr	r3, [r4, #28]
	cmp	r3, #4
	moveq	r2, #0
	ldrne	r3, [r4, #24]
	ldreq	r3, [r4, #32]
	addne	r3, r3, #1
	streq	r3, [r4, #28]
	strne	r3, [r4, #24]
	ldr	r3, [r4, #16]
	streq	r2, [r4, #36]
	ldr	r2, [r4, #4]
	rsb	r3, r3, #240
	cmp	r2, r3
	ble	.L123
	mov	r1, #1
	mov	r2, #3
	mov	r3, #17408
	str	r1, [r5]
	str	r2, [r4, #4]
	str	r3, [r4]
.L174:
	ldr	r3, [r5]
	cmp	r3, #3
	bne	.L86
.L178:
	ldr	r4, .L190+28
.L126:
	mov	r1, #4
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldr	r2, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L190+32
	smull	r8, r9, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r9, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	str	r1, [r4, #28]
	bne	.L131
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r3, [r4, #36]
.L131:
	ldr	r3, .L190+36
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L171
	ldr	r7, .L190+60
.L133:
	ldr	r3, .L190+36
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L134
	ldr	r3, [r4]
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	asr	r1, r3, #8
	add	r2, r0, r2
	rsb	r3, r1, r1, lsl #4
	add	r2, r2, #1
	add	r3, r2, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	lr, [r7, r3]
	ldr	r3, .L190+44
	cmp	lr, r3
	beq	.L185
.L134:
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L137
	ldr	r3, .L190+12
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L137
	ldr	r6, .L190+48
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L186
.L137:
	ldr	r1, [r4]
	ldr	r0, [r4, #8]
.L136:
	ldr	r3, [r4, #20]
	add	r3, r3, r1, asr #8
	ldr	r2, [r4, #4]
	add	r3, r3, r0, asr #8
	rsb	r3, r3, r3, lsl #4
	add	r3, r2, r3, lsl #4
	add	r2, r7, r3, lsl #1
	ldrh	r2, [r2, #2]
	ldr	ip, .L190+44
	cmp	r2, ip
	beq	.L187
.L138:
	mov	r3, #0
	ldr	r2, .L190+48
	str	r3, [r4, #8]
	str	r3, [r2]
.L139:
	ldr	r3, [r4, #28]
	cmp	r3, #4
	moveq	r2, #0
	ldrne	r3, [r4, #24]
	ldreq	r3, [r4, #32]
	addne	r3, r3, #1
	streq	r3, [r4, #28]
	strne	r3, [r4, #24]
	ldr	r3, [r4, #16]
	streq	r2, [r4, #36]
	ldr	r2, [r4, #4]
	rsb	r3, r3, #237
	cmp	r2, r3
	ble	.L86
	mov	r2, #512
	mov	r0, #1
	mov	r1, #256
	str	r3, [r4, #4]
	ldr	r3, .L190+64
	str	r0, [r5]
	strh	r2, [r3, #56]	@ movhi
	strh	r2, [r3, #64]	@ movhi
	strh	r2, [r3, #72]	@ movhi
	str	r1, [r4]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L171:
	ldr	r3, [r4]
	ldr	r1, [r4, #4]
	asr	r0, r3, #8
	rsb	r3, r0, r0, lsl #4
	add	r3, r1, r3, lsl #4
	ldr	r7, .L190+60
	lsl	r3, r3, #1
	ldrh	ip, [r7, r3]
	ldr	r3, .L190+44
	cmp	ip, r3
	bne	.L133
	ldr	r3, [r4, #20]
	add	r2, r0, r3
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, r1, r2, lsl #4
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, ip
	bne	.L133
	add	r3, r3, r3, lsr #31
	add	r3, r0, r3, asr #1
	rsb	r3, r3, r3, lsl #4
	add	r3, r1, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, r2
	moveq	r3, #3
	ldreq	r2, [r4, #12]
	subeq	r1, r1, r2
	streq	r1, [r4, #4]
	streq	r3, [r4, #28]
	b	.L133
.L169:
	ldm	r4, {r3, lr}
	asr	r1, r3, #8
	rsb	r3, r1, r1, lsl #4
	sub	ip, lr, #1
	add	r3, ip, r3, lsl #4
	ldr	r7, .L190+40
	lsl	r3, r3, #1
	ldrh	r8, [r7, r3]
	ldr	r3, .L190+44
	cmp	r8, r3
	bne	.L95
	ldr	r3, [r4, #20]
	add	r0, r1, r3
	sub	r0, r0, #1
	rsb	r0, r0, r0, lsl #4
	add	r0, ip, r0, lsl #4
	lsl	r0, r0, #1
	ldrh	r0, [r7, r0]
	cmp	r0, r8
	bne	.L95
	add	r3, r3, r3, lsr #31
	add	r3, r1, r3, asr #1
	rsb	r3, r3, r3, lsl #4
	add	r3, ip, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, r0
	moveq	r3, #3
	ldreq	r1, [r4, #12]
	subeq	lr, lr, r1
	streq	lr, [r4, #4]
	streq	r3, [r4, #28]
	b	.L95
.L170:
	ldr	r3, [r4]
	ldr	r0, [r4, #4]
	asr	r2, r3, #8
	rsb	r3, r2, r2, lsl #4
	add	r3, r0, r3, lsl #4
	ldr	r7, .L190+56
	lsl	r3, r3, #1
	ldrh	ip, [r7, r3]
	ldr	r3, .L190+44
	cmp	ip, r3
	bne	.L114
	ldr	r3, [r4, #20]
	add	r1, r2, r3
	sub	r1, r1, #1
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, ip
	bne	.L114
	add	r3, r3, r3, lsr #31
	add	r3, r2, r3, asr #1
	rsb	r3, r3, r3, lsl #4
	add	r3, r0, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, r1
	moveq	r3, #3
	ldreq	r2, [r4, #12]
	subeq	r0, r0, r2
	streq	r0, [r4, #4]
	streq	r3, [r4, #28]
	b	.L114
.L123:
	ldr	r3, [r4]
	asr	r3, r3, #8
	cmp	r3, #0
	ble	.L188
	cmp	r3, #140
	ble	.L174
	ldr	r3, .L190+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L128
	mov	r3, #210
	mov	r2, #12800
	stm	r4, {r2, r3}
	ldr	r3, [r5]
	b	.L110
.L187:
	ldr	lr, [r4, #16]
	add	ip, r3, lr
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, r2
	bne	.L138
	add	lr, lr, lr, lsr #31
	add	r3, r3, lr, asr #1
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, ip
	bne	.L138
	add	r2, r1, r0
	add	r3, r0, #20
	str	r2, [r4]
	str	r3, [r4, #8]
	b	.L139
.L181:
	ldr	r2, [r4, #16]
	add	r10, r8, r2
	add	r9, r3, r10
	add	r9, r7, r9, lsl #1
	ldrh	r9, [r9, #-2]
	cmp	r9, fp
	bne	.L100
	add	r2, r2, r2, lsr #31
	add	r2, r8, r2, asr #1
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, r9
	bne	.L100
	cmp	r0, #0
	ble	.L189
.L101:
	add	r1, r1, r0
	add	r0, r0, #20
	str	r1, [r4]
	str	r0, [r4, #8]
	b	.L104
.L184:
	ldr	lr, [r4, #16]
	add	ip, r3, lr
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, r2
	bne	.L119
	add	lr, lr, lr, lsr #31
	add	r3, r3, lr, asr #1
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, ip
	bne	.L119
	add	r2, r1, r0
	add	r3, r0, #20
	str	r2, [r4]
	str	r3, [r4, #8]
	b	.L120
.L128:
	ldr	r2, .L190+52
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	b	.L174
.L188:
	bl	initApple2
	mov	r1, #3
	mov	r2, #33280
	mov	r3, #0
	str	r1, [r5]
	str	r2, [r4]
	str	r3, [r4, #8]
	b	.L126
.L185:
	ldr	r3, [r4, #20]
	add	ip, r1, r3
	sub	ip, ip, #1
	rsb	ip, ip, ip, lsl #4
	add	ip, r2, ip, lsl #4
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, lr
	bne	.L134
	add	r3, r3, r3, lsr #31
	add	r3, r1, r3, asr #1
	rsb	r3, r3, r3, lsl #4
	add	r3, r2, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, ip
	moveq	r2, #2
	ldreq	r3, [r4, #12]
	addeq	r0, r3, r0
	streq	r0, [r4, #4]
	streq	r2, [r4, #28]
	b	.L134
.L179:
	ldr	r3, [r4, #20]
	add	lr, ip, r3
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	lr, r1, lr, lsl #4
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	cmp	lr, r8
	bne	.L96
	add	r3, r3, r3, lsr #31
	add	r3, ip, r3, asr #1
	rsb	r3, r3, r3, lsl #4
	add	r3, r1, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, lr
	moveq	r1, #2
	ldreq	r3, [r4, #12]
	addeq	r0, r3, r0
	streq	r0, [r4, #4]
	streq	r1, [r4, #28]
	b	.L96
.L182:
	ldr	r3, [r4, #20]
	add	ip, r1, r3
	sub	ip, ip, #1
	rsb	ip, ip, ip, lsl #4
	add	ip, r2, ip, lsl #4
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, lr
	bne	.L115
	add	r3, r3, r3, lsr #31
	add	r3, r1, r3, asr #1
	rsb	r3, r3, r3, lsl #4
	add	r3, r2, r3, lsl #4
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, ip
	moveq	r2, #2
	ldreq	r3, [r4, #12]
	addeq	r0, r3, r0
	streq	r0, [r4, #4]
	streq	r2, [r4, #28]
	b	.L115
.L186:
	ldr	r2, .L190+68
	mov	r1, #1664
	ldr	r0, .L190+72
	ldr	r8, .L190+76
	mov	lr, pc
	bx	r8
	mov	r3, #1
	ldr	r2, .L190+80
	ldr	r0, [r2]
	str	r3, [r6]
	rsb	r0, r0, #0
	ldr	r3, .L190+84
	mov	lr, pc
	bx	r3
	ldr	r6, .L190+88
	adr	r3, .L190
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r6
	ldr	r3, .L190+92
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	add	r1, r0, r2
	str	r0, [r4, #8]
	str	r1, [r4]
	b	.L136
.L180:
	ldr	r2, .L190+68
	mov	r1, #1664
	ldr	r0, .L190+72
	ldr	r9, .L190+76
	mov	lr, pc
	bx	r9
	mov	r3, #1
	ldr	r2, .L190+80
	ldr	r0, [r2]
	str	r3, [r8]
	rsb	r0, r0, #0
	ldr	r3, .L190+84
	mov	lr, pc
	bx	r3
	ldr	r8, .L190+88
	adr	r3, .L190
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	ldr	r3, .L190+92
	mov	lr, pc
	bx	r3
	ldr	r1, [r4]
	add	r1, r0, r1
	str	r0, [r4, #8]
	str	r1, [r4]
	b	.L98
.L183:
	ldr	r2, .L190+68
	mov	r1, #1664
	ldr	r0, .L190+72
	ldr	r9, .L190+76
	mov	lr, pc
	bx	r9
	mov	r3, #1
	ldr	r2, .L190+80
	ldr	r0, [r2]
	str	r3, [r8]
	rsb	r0, r0, #0
	ldr	r3, .L190+84
	mov	lr, pc
	bx	r3
	ldr	r8, .L190+88
	adr	r3, .L190
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	ldr	r3, .L190+92
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	add	r1, r0, r2
	str	r0, [r4, #8]
	str	r1, [r4]
	b	.L117
.L189:
	add	r3, ip, lr
	add	r3, r3, #5
	rsb	r3, r3, r3, lsl #4
	lsl	ip, r3, #4
	add	r3, r8, ip
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.L102
	add	r3, r10, ip
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.L102
	add	r3, r2, ip
	lsl	r3, r3, #1
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	bne	.L101
.L102:
	rsb	r0, r0, #0
	str	r0, [r4, #8]
	b	.L104
.L191:
	.align	3
.L190:
	.word	3435973837
	.word	1073532108
	.word	oldButtons
	.word	buttons
	.word	currLevel
	.word	level2Cheat
	.word	appleSPD
	.word	player
	.word	1717986919
	.word	67109120
	.word	collisionmapBitmap
	.word	32767
	.word	.LANCHOR1
	.word	playerLife
	.word	collisionmap2Bitmap
	.word	collisionmap3Bitmap
	.word	shadowOAM
	.word	11025
	.word	jumpSound
	.word	playSoundA
	.word	.LANCHOR0
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_d2iz
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateApple2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateApple2, %function
updateApple2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L210
	ldr	r3, [r3]
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L193
	ldr	r3, [r0, #24]
	ldr	r2, .L210+4
	smull	r4, r5, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r5, asr #3
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #2
	ldr	r2, [r0, #44]
	beq	.L194
.L195:
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r0, #24]
	beq	.L192
	ldr	r3, .L210+8
	ldr	lr, [r3, #4]
	ldr	ip, [r0, #4]
	add	r2, lr, #11
	cmp	r2, ip
	ldrge	r2, .L210+12
	ldrge	r1, [r2]
	mov	r2, r0
	mov	r4, #15
	mov	r5, #12
	rsbge	r1, r1, #0
	ldrlt	r1, [r0, #8]
	strge	r1, [r0, #8]
	ldr	r0, [r0]
	add	r1, r1, r0
	str	r1, [r2]
	ldr	r3, [r3]
	asr	r3, r3, #8
	ldr	r2, [r2, #16]
	mov	r0, ip
	stmib	sp, {r3, r4, r5}
	str	lr, [sp]
	mov	r3, #8
	ldr	r4, .L210+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L210+20
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
.L192:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L193:
	mov	r1, #0
	ldr	r3, [r0, #24]
	ldr	r2, .L210+4
	smull	r4, r5, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r5, asr #3
	add	r2, r2, r2, lsl #2
	subs	r2, r3, r2, lsl #2
	addne	r3, r3, #1
	str	r1, [r0, #44]
	strne	r3, [r0, #24]
	bne	.L192
.L194:
	ldr	r1, [r0, #40]
	ldr	ip, [r0, #36]
	sub	r1, r1, #1
	cmp	ip, r1
	movge	r1, #0
	addlt	ip, ip, #1
	strlt	ip, [r0, #36]
	strge	r1, [r0, #36]
	b	.L195
.L211:
	.align	2
.L210:
	.word	currLevel
	.word	1717986919
	.word	player
	.word	appleSPD
	.word	collision
	.word	playerLife
	.size	updateApple2, .-updateApple2
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L220
	bl	updatePlayer
	bl	updateHeart
	ldr	r3, [r6]
	cmp	r3, #1
	beq	.L218
.L213:
	cmp	r3, #3
	beq	.L219
	pop	{r4, r5, r6, lr}
	bx	lr
.L219:
	mov	r1, #7
	ldr	r0, .L220+4
	bl	updateApple2
	mov	r1, #8
	ldr	r0, .L220+8
	bl	updateApple2
	mov	r1, #9
	ldr	r0, .L220+12
	pop	{r4, r5, r6, lr}
	b	updateApple2
.L218:
	mov	r4, #0
	ldr	r5, .L220+16
.L214:
	add	r4, r4, #1
	mov	r0, r5
	mov	r1, r4
	bl	updateApple
	cmp	r4, #5
	add	r5, r5, #52
	bne	.L214
	ldr	r3, [r6]
	b	.L213
.L221:
	.align	2
.L220:
	.word	currLevel
	.word	stage3apples
	.word	stage3apples+52
	.word	stage3apples+104
	.word	apples
	.size	updateGame, .-updateGame
	.align	2
	.global	drawApple2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawApple2, %function
drawApple2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	ldr	r3, .L228
	ldr	r2, .L228+4
	add	ip, r3, #156
.L225:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	ldrne	r1, [r3, #36]
	ldrne	r0, [r3, #4]
	lslne	r1, r1, #6
	ldrne	lr, [r3]
	addne	r1, r1, #8
	orrne	r0, r0, #16384
	add	r3, r3, #52
	strhne	r1, [r2, #60]	@ movhi
	strhne	r0, [r2, #58]	@ movhi
	strhne	lr, [r2, #56]	@ movhi
	strheq	r4, [r2, #56]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L225
	pop	{r4, lr}
	bx	lr
.L229:
	.align	2
.L228:
	.word	stage3apples
	.word	shadowOAM
	.size	drawApple2, .-drawApple2
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L236
	add	r3, r2, #32
	ldm	r3, {r3, ip}
	ldm	r2, {r0, r1}
	add	r3, r3, ip, lsl #5
	ldr	r2, .L236+4
	push	{r4, lr}
	lsl	r3, r3, #1
	asr	r0, r0, #8
	orr	r1, r1, #16384
	ldr	r4, .L236+8
	strh	r3, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	bl	drawHeart
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L234
.L231:
	cmp	r3, #3
	beq	.L235
.L232:
	ldr	r3, .L236+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L236+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L236+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L235:
	bl	drawApple2
	b	.L232
.L234:
	bl	drawApple
	ldr	r3, [r4]
	b	.L231
.L237:
	.align	2
.L236:
	.word	player
	.word	shadowOAM
	.word	currLevel
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.global	jumping
	.global	rdel
	.global	cheat
	.comm	level2Cheat,4,4
	.comm	appleSPD,4,4
	.comm	shadowOAM,1024,4
	.comm	playerLife,4,4
	.comm	currLevel,4,4
	.comm	heart,52,4
	.comm	player,52,4
	.comm	stage3apples,156,4
	.comm	apples,260,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rdel, %object
	.size	rdel, 4
rdel:
	.word	256
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
