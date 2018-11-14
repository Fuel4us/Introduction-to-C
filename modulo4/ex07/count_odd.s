.section .data

.section .text
	.global count_odd

	count_odd:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

	pushl %esi
	pushl %ebx
	pushl %edi

	movl $0 , %esi
	movl $0 , %ebx
	movl $2 , %edi
	movl 8(%ebp) , %ecx
	jmp loop

  loop:
	cmpl 12(%ebp), %ebx
	je end
	movl (%ecx), %eax
	movl $0, %edx
	shrl %eax
	jc odd

  increment:
	addl $2, %ecx
	incl %ebx
	jmp loop

  odd:
	incl %esi
	jmp increment

  end:
	movl %esi , %eax
	popl %edi
	popl %ebx
	popl %esi

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
	ret
