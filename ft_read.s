/**
 * @file ft_read.s
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */
    	global  _ft_read
    	section .text

/**
* This function reads data from a file descriptor
* @param int fd
* @param void buf[.count]
* @param size_t count
* @return On success, the number of bytes read is returned, otherwise -1
*/
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
	