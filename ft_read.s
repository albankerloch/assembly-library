    	global  _ft_read
    	section .text
	
_ft_read:
		push rdi
		push rsi
		push rdx
		mov     rax, 0x2000003 			; read
	    syscall

		pop rdi
	    pop rsi
	    pop rdx
	
		ret
	