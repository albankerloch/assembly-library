/**
 * @file ft_strcpy.s
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */
 			global   _ft_strcpy	
    		section  .text

/**
* This function copies the string pointed by source (including the null character) to the destination
* @param char* destination
* @param const char* source
* @return the copied string
*/
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


