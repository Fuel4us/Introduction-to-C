.section .data

.global ptrvec
.global num

.section .text

.global vec_zero

vec_zero:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	movl $0, %eax
	movl ptrvec, %ebx
	movl num, %ecx

	vec_loop:
	movw (%ebx), %dx
	cmpw $100, %dx 	# if bigger or equals to 100
	jge convert
	addl $2, %ebx 		# goes to next element
	loop vec_loop 		# loops num
	jmp end

	convert:
	movw $0, (%ebx) 	# prtvec = 0
	incl %eax 			# increments counter
	addl $2, %ebx 		# next short element
	loop vec_loop 		

end:
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
