			global   _ft_strlen
	
    		section  .text
_ft_strlen:
			push 	rdi
			xor		rax, rax
			dec		rax

addcarac:
			inc		rax
			cmp 	byte [rdi + rax], 0
			jnz		addcarac

done:	
			pop 	rdi
	        ret