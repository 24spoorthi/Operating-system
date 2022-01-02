[org 0x7c00]

mov bx, HELLO
call print

call print_n1

mov bx, GOODBYE
call print

call print_n1

mov dx, 0x12fe
call print_hex

jmp $

%include"boot-print-hex.asm"

HELLO:
	db 'HELLO WORLD', 0

GOODBYE:
	db 'GOOD BYE', 0

times 510 - ($ - $$) db 0
dw 0xaa55
