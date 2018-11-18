.section .data

.section .text
  .global activate_bits

  activate_bits:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl 8(%ebp), %eax
  movl 12(%ebp), %ebx
	movl 16(%ebp), %ecx

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
