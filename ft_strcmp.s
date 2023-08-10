/**
 * @file ft_strcmp.s
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */
 			global   _ft_strcmp
    		default  rel	
    		section  .text

/**
* This function compares two strings character by character.
* @param const char* str1
* @param const char* str2
* @return if the strings are equal, the function returns 0
*/
_ft_strcmp:
			push 	rdi
			push	rsi

cmpcarac:
			mov		al, byte [rdi]
			mov		cl, byte [rsi]
			mov     rdx, 0
	        mov     [sum], rdx
			add		[sum], al
			sub		[sum], cl
			cmp		al, cl
			jnz		done
			cmp 	byte [rdi], 0
			jz		done
			inc     rdi
			inc 	rsi
			jmp		cmpcarac

done:
			mov		rdx, 127
			cmp 	[sum], rdx
			jg 		negative
			mov		rax, [sum]
			cmp     [sum], rdx
			jng		final

negative:
			mov     rax, -1
			jmp		final

zero:
			mov     rax, 0
			jmp		final
	
final:
			mov     rsi, 0
            mov     [sum], rsi
			pop 	rdi
			pop		rsi
	        ret

	        section  .data
sum:	    dq       0