/**
 * @file ft_strdup.s
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */
 			global	_ft_strdup
			extern	_malloc	
			section	.text

/**
* This function duplicates a string into an allocated memory string
* @param const char* source
* @return a pointer to the duplicated null-terminated byte string
*/
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
