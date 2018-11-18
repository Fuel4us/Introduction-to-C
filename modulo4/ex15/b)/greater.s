.section .data

.section .text
	.global greater_date

	greater_date:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		subl $8 , %esp
		pushl %ebx

		movl 8(%ebp) , %eax
		movl 12(%ebp) , %edx

		movl %eax, -4(%ebp)
		movl %edx, -8(%ebp)

		jmp year

	year:
		movl $0x0000FFFF , %ecx
		and %ecx , -4(%ebp)
		and %ecx , -8(%ebp)
		movl -4(%ebp), %ebx
		cmpl %ebx , -8(%ebp)
		jg second
		jl end
		je month

	month:
		movl $0xFF000000 , %ecx
		movl %eax, -4(%ebp)
		movl %edx , -8(%ebp)
		and %ecx , -4(%ebp)
		and %ecx , -8(%ebp)
		movl -4(%ebp), %ebx
		cmpl %ebx , -8(%ebp)
		ja second
		jb end
		jnb day

	day:
		movl $0x00FF0000 , %ecx
		movl %eax, -4(%ebp)
		movl %edx , -8(%ebp)
		and %ecx , -4(%ebp)
		and %ecx , -8(%ebp)
		movl -4(%ebp), %ebx
		cmpl %ebx , -8(%ebp)
		jg second
		jl end
		movl $0, %eax
		jmp end

	second:
		movl %edx, %eax
		jmp end

	end:
		popl %ebx
		# epilogue
	  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	  popl %ebp # restore the previous stack frame pointer
		ret
