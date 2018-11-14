.section .data

.section .text
	.global calc

	calc:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl 8(%ebp), %edx
  movl 12(%ebp), %ecx
	movl 16(%ebp), %eax

	movl (%ecx),%edi

  subl %edi, %edx

  movl %eax, %esi # save register

  imull %eax, %edx
  subl $-2, %edx

  movl $0, %eax
  movl %edx, %eax

	popl %edi

  # cmpl $0, %esi
  # jl negate
  # jmp end

  # negate:
  # neg %eax

  end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
	ret
