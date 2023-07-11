    	global  _ft_write
    	section .text
	
_ft_write:
		push rdi
		push rsi
		push rdx
		mov     rax, 0x2000004 			; write
	    syscall

		pop rdi
	    pop rsi
	    pop rdx

		ret
	