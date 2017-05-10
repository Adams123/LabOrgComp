jmp main

main:
	loadn r2, #0
	loadn r0, #'A'
	loadn r1, #'z'
	loadn r4, #255
	inc r1

volta:
	cmp r0, r1
	jeq fim
	outchar r0, r2
	inc r2
	inc r0
	jmp volta
	
fim:
	loadn r2, #1000
a:
	inchar r3
	call delay
	cmp r3, r4
	jeq a

	outchar r3, r2
	jmp a
	halt

delay:
	push r0
	push r1
	loadn r0, #0
	loadn r1, #255
volta_d:
	cmp r0, r1
	jeq fim_d
	inc r0
	jmp volta_d

fim_d:
	pop r1
	pop r0
	rts


