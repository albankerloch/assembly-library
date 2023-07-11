			global	_ft_strdup
			extern	_malloc
	
			section	.text
_ft_strdup:
			push	rdi
			mov     r8, rdi
			xor     rcx, rcx
	
addsum:
			inc		rcx
	        inc     r8
	        cmp     byte [r8], 0
	        jnz     addsum

mallo:
	        mov     rdi, rcx
			call	_malloc
			pop		rdi
			xor		rcx, rcx

addcarac:
			mov		dl, byte [rdi + rcx]
			mov		byte [rax + rcx], dl
			inc		rcx
			cmp     dl, 0
	        jnz     addcarac

return:
	        mov     byte [rax + rcx], 0
			ret
