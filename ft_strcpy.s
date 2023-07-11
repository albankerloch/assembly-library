			global   _ft_strcpy
	
    		section  .text
_ft_strcpy:
			push 	rdi
			push 	rsi
			mov		r8, rdi

addcarac:
			mov		al, byte [rsi]
			mov		byte [rdi], al
			inc     rdi
			inc 	rsi
			cmp 	byte [rsi], 0
			jnz		addcarac

done:
			mov     byte [rdi], 0
			mov		rax, r8
			pop 	rdi
			pop		rsi
	        ret


