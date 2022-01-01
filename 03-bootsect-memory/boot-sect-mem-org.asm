[org 0x7c00]	; setting global offest for all memory location, comment this line , "X" will be printed in attempt 3 and 4
		; with this line, "X" will be printed in ateempt 2 and 4

mov ah, 0x0e

mov al, "1"
int 0x10
mov al, the_secret
int 0x10

mov al, "2"
int 0x10
mov al, [the_secret]
int 0x10

mov al, "3"
int 0x10
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10


;In attempt 4, we are directly passing the address of "X", hence works all the time

mov al, "4"
int 0x10
mov al, [0x7c2d]
int 0x10

jmp $

the_secret:
	db "X"

times 510 - ($ - $$) db 0
dw 0xaa55
