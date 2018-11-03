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
	cmpw $100, %dx 	# se for maior ou igual que 100
	jge convert
	addl $2, %ebx 		# passa para o proximo elemento
	loop vec_loop 		# faz em loop o numero de vezes de num(ecx)
	jmp end

	convert:
	movw $0, (%ebx) 	# passa o elemento de ptrvec a zero
	incl %eax 			# incrementa o numero de vezes que anula ptrvec
	addl $2, %ebx 		# passa para o elemento seguinte
	loop vec_loop 		# faz em loop o numero de vezes de num(ecx)

end:
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
