.section .data

.section .text
	.global dec_square

	dec_square:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

	movl 8(%ebp) , %ecx
	movl 12(%ebp) , %eax

	subl $1, (%ecx)

	movl %eax, %ecx
	imul %ecx

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
	ret
