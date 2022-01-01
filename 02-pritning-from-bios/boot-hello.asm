mov ah, 0x0e	; tele-typewriter mode
mov al, 'H'
int 0x10
mov al, 'E'
int 0x10
mov al, 'L'
int 0x10
int 0x10
mov al, 'O'
int 0x10

jmp $	; jumps to current address in an infinte loop

; padding our magic number

times 510 - ($ - $$) db 0
dw 0xaa55
