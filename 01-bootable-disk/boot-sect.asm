; A simple boot sector code


loop:
	jmp loop

times 510-($-$$) db 0
dw 0xaa55 ; last two bytes for the magic number
