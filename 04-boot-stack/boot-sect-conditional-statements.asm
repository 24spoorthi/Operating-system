mov bx, 30

cmp bx, 4
jle mov_A
cmp bx, 40
jl mov_B
mov al, 'C'
jmp the_end

mov_A:
	mov al, 'A'

mov_B:
	mov al, 'B'

the_end:


mov ah, 0x0e
int 0x10

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55
