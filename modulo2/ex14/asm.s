.section .data
A:
	.int 0
  .global A

.section .text
  .global operation

operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl A, %eax
  movl $3, %ebx
  movl A, %ecx
  movl $0 , %edx

  mull %ebx

  addl $6, %eax
  
  divl %ebx

  addl $12, %eax

  subl %ecx,%eax

  subl $1, %eax

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret

