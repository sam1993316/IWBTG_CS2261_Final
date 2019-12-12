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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+4
	mov	r3, #1
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	ldr	r0, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r4, .L4+20
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3184
	mov	r2, #100663296
	ldr	r1, .L4+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7168
	ldr	r3, .L4+40
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	235123
	.word	startSong
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100720640
	.word	startMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #16384
	ldr	r4, .L8
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #4352
	mov	r3, #67108864
	ldr	r1, .L8+20
	ldr	r2, .L8+24
	ldrh	r1, [r1, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L8+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	67109120
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	mov	r2, #83886080
	ldr	r1, .L12+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3296
	mov	r2, #100663296
	ldr	r1, .L12+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionPal
	.word	instructionTiles
	.word	100720640
	.word	instructionMap
	.word	state
	.size	goToInstruction, .-goToInstruction
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L22
	ldr	r2, .L22+4
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #8
	str	r0, [r3]
	bxeq	lr
	ldr	r3, .L22+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L22+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstruction
.L23:
	.align	2
.L22:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.size	start, .-start
	.align	2
	.global	goToGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame1, %function
goToGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L26
	mov	r2, #83886080
	ldr	r1, .L26+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3600
	mov	r2, #100663296
	ldr	r1, .L26+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L26+12
	ldr	r1, .L26+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L26+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	DMANow
	.word	bg1Pal
	.word	bg1Tiles
	.word	100720640
	.word	bg1Map
	.word	state
	.size	goToGame1, .-goToGame1
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L40
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L29
	ldr	r2, .L40+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L38
.L29:
	tst	r3, #4
	beq	.L28
	ldr	r3, .L40+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L39
.L28:
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L38:
	bl	goToGame1
	ldr	r2, .L40+8
	ldr	r3, .L40+12
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L40+24
	mov	r3, #1
	ldr	r2, .L40+28
	ldr	r1, .L40+32
	ldr	r0, .L40+36
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	b	.L29
.L41:
	.align	2
.L40:
	.word	oldButtons
	.word	buttons
	.word	seed
	.word	srand
	.word	initGame
	.word	stopSound
	.word	playSoundB
	.word	11025
	.word	2069120
	.word	gameSong
	.size	instruction, .-instruction
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r4, .L44
	ldr	r3, .L44+4
	mov	r2, #100663296
	ldr	r1, .L44+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L44+12
	ldr	r1, .L44+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1568
	ldr	r2, .L44+20
	ldr	r1, .L44+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L44+28
	ldr	r1, .L44+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L44+36
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L44+40
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L44+44
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4864
	ldr	r3, .L44+48
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L44+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L44+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	DMANow
	.word	4640
	.word	bg2Tiles
	.word	100720640
	.word	bg2Map
	.word	100679680
	.word	backbgTiles
	.word	100724736
	.word	backbgMap
	.word	7684
	.word	backbgPal
	.word	bg2Pal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame2, .-goToGame2
	.align	2
	.global	goToGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame3, %function
goToGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #16
	ldr	r4, .L48
	mov	r2, #83886080
	ldr	r1, .L48+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1296
	mov	r2, #100663296
	ldr	r1, .L48+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L48+12
	ldr	r1, .L48+16
	mov	r0, #3
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L48+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L48+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	DMANow
	.word	bg3Pal
	.word	bg3Tiles
	.word	100720640
	.word	bg3Map
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame3, .-goToGame3
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L52+8
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L52+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1488
	mov	r2, #100663296
	ldr	r1, .L52+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L52+20
	ldr	r1, .L52+24
	mov	r0, #3
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L52+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L52+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L52+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	pauseSound
	.word	waitForVBlank
	.word	DMANow
	.word	pausedPal
	.word	pausedTiles
	.word	100720640
	.word	pausedMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L55
	ldr	r2, .L75+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L71
.L55:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L71:
	ldr	r3, .L75+8
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L72
	cmp	r3, #2
	beq	.L73
	cmp	r3, #3
	beq	.L74
	pop	{r4, lr}
	bx	lr
.L72:
	pop	{r4, lr}
	b	goToGame1
.L73:
	pop	{r4, lr}
	b	goToGame2
.L74:
	pop	{r4, lr}
	b	goToGame3
.L76:
	.align	2
.L75:
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	currLevel
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L79
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L79+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L79+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L79+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1216
	mov	r2, #100663296
	ldr	r1, .L79+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L79+24
	ldr	r1, .L79+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L79+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	winPal
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L89
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L89+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L89+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L89+12
	mov	r3, #1
	ldr	r2, .L89+16
	ldr	r1, .L89+20
	ldr	r0, .L89+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToStart
.L90:
	.align	2
.L89:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	235123
	.word	startSong
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+4
	ldr	r2, .L93+8
	ldr	r1, .L93+12
	ldr	r0, .L93+16
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+28
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L93+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L93+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2464
	mov	r2, #100663296
	ldr	r1, .L93+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L93+44
	ldr	r1, .L93+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #7168
	mov	r2, #7
	ldr	r3, .L93+52
	strh	r0, [r1, #8]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L94:
	.align	2
.L93:
	.word	stopSound
	.word	playSoundA
	.word	44100
	.word	334538
	.word	loseSound
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	gameoverPal
	.word	gameoverTiles
	.word	100720640
	.word	gameoverMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game1
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1, %function
game1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L96
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L104
.L96:
	ldr	r3, .L108+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L105
	cmp	r3, #2
	beq	.L106
	ldr	r3, .L108+20
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L107
	pop	{r4, lr}
	bx	lr
.L105:
	pop	{r4, lr}
	b	goToLose
.L104:
	pop	{r4, lr}
	b	goToPause
.L106:
	pop	{r4, lr}
	b	goToWin
.L107:
	pop	{r4, lr}
	b	goToGame2
.L109:
	.align	2
.L108:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	playerLife
	.word	currLevel
	.size	game1, .-game1
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	ldr	r2, .L123
	ldrh	r3, [r2]
	add	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	push	{r4, lr}
	strh	r3, [r2]	@ movhi
	strh	r3, [r1, #20]	@ movhi
	ldr	r2, .L123+4
	mov	lr, pc
	bx	r2
	ldr	r3, .L123+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L123+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L111
	ldr	r3, .L123+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L119
.L111:
	ldr	r3, .L123+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L120
	ldr	r3, .L123+24
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L121
	cmp	r3, #1
	beq	.L122
	pop	{r4, lr}
	bx	lr
.L120:
	pop	{r4, lr}
	b	goToLose
.L119:
	pop	{r4, lr}
	b	goToPause
.L121:
	pop	{r4, lr}
	b	goToGame3
.L122:
	pop	{r4, lr}
	b	goToGame1
.L124:
	.align	2
.L123:
	.word	hOff
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	playerLife
	.word	currLevel
	.size	game2, .-game2
	.align	2
	.global	game3
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3, %function
game3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L136
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L126
	ldr	r3, .L136+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L133
.L126:
	ldr	r3, .L136+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L134
	ldr	r3, .L136+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L135
	pop	{r4, lr}
	bx	lr
.L134:
	pop	{r4, lr}
	b	goToLose
.L133:
	pop	{r4, lr}
	b	goToPause
.L135:
	pop	{r4, lr}
	b	goToGame1
.L137:
	.align	2
.L136:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	playerLife
	.word	currLevel
	.size	game3, .-game3
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L154
	mov	lr, pc
	bx	r3
	ldr	r7, .L154+4
	ldr	r5, .L154+8
	ldr	r6, .L154+12
	ldr	fp, .L154+16
	ldr	r10, .L154+20
	ldr	r9, .L154+24
	ldr	r8, .L154+28
	ldr	r4, .L154+32
.L139:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldr	r2, [r6]
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L139
.L142:
	.word	.L141
	.word	.L143
	.word	.L144
	.word	.L145
	.word	.L146
	.word	.L147
	.word	.L148
	.word	.L149
.L149:
	tst	r1, #8
	beq	.L139
	tst	r3, #8
	bne	.L139
	ldr	r3, .L154+36
	mov	lr, pc
	bx	r3
	b	.L139
.L148:
	ldr	r3, .L154+40
	mov	lr, pc
	bx	r3
	b	.L139
.L147:
	ldr	r3, .L154+44
	mov	lr, pc
	bx	r3
	b	.L139
.L146:
	ldr	r3, .L154+48
	mov	lr, pc
	bx	r3
	b	.L139
.L145:
	mov	lr, pc
	bx	r8
	b	.L139
.L144:
	mov	lr, pc
	bx	r9
	b	.L139
.L143:
	mov	lr, pc
	bx	r10
	b	.L139
.L141:
	mov	lr, pc
	bx	fp
	b	.L139
.L155:
	.align	2
.L154:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	instruction
	.word	game1
	.word	game2
	.word	67109120
	.word	goToStart
	.word	win
	.word	pause
	.word	game3
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L161
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L161+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L162:
	.align	2
.L161:
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	seed,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
