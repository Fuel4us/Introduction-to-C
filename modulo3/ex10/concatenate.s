.section .data

.global ptr1
.global ptr2
.global ptr3

.section .text

.global str_cat

str_cat:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function

	movl ptr1, %ebx
	movl ptr2, %eax
	movl ptr3, %ecx

	str1:
	movb (%ebx), %dl # move ptr1 to dl
	cmpb $0,%dl # check if string ends
	je str2

	movb %dl,(%ecx) # moves char to ptr3

	inc %ebx 	# increments next char
	inc %ecx 	# increments next char
	jmp str1

	str2:
	movb (%eax), %dl # will do same thing for str2 but!
	cmpb $0,%dl
	je end # BUT jumps to end because in the end of str2 it just ends

	movb %dl,(%ecx)

	inc %eax
	inc %ecx
	jmp str2

	end:
	movb $0,(%ecx) # ends the string right there so we can finish the string with minimum bytes occupied

	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
