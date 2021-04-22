.global lab1
.syntax unified
#define A #2
#define B #4
#define C #3
lab1:
	push {lr}
	mov r0, A
	mov r1, B
	ADD r0, r0, r1
	mov r1, #2
	SDIV r0, r0, r1
	mov r1, #1
	mov r2, C

	.fact:
		MUL r1, r2
		SUBS r2, #1
		bne .fact
	ADD r0, r0, r1
	mov r1, #0
	mov r2, #0
	pop {pc}
