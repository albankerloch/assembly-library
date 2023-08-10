/**
 * @file ft_strlen.s
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */
 			global   _ft_strlen
    		section  .text

/**
* This function returns the length of the given string.
* @param const char* str
* @return its length
*/
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