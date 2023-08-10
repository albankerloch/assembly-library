/**
 * @file ft_strlen.s
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */
     	global  _ft_write
    	section .text

/**
* This function write data to a file descriptor
* @param int fd
* @param void buf[.count]
* @param size_t count
* @return On success, the number of bytes written is returned, otherwise -1
*/
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
	