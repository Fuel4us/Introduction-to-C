.section .data
  .global op1
  .global op2

.section .text
  .global sum2ints

sum2ints:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %eax
  movl $0, %ebx
  movl $0, %ecx
	movl $0, %edx

  movl op1, %eax
  movl op2, %ebx
  addl %ebx, %eax

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
