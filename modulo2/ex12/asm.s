.section .data
A:
	.int 0
  .global A
B:
	.int 0
  .global B

.section .text
  .global operation

operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %eax
  movl $0, %ebx
 

  movl A, %eax
  movl B, %ebx


  mull %ebx
  mov $2, %ebx


  divl %ebx



  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret

