.section .data
  .global A
  .global B
  .global C
  .global D

.section .text
  .global operation

operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %eax
  movl $0, %ebx
  movl $0, %ecx
  movl $0, %edx

  movl A, %eax
  movl B, %ebx

  mull %ebx

  addl C, %eax

  movl $0, %ebx
  movl D, %ebx
  divl %ebx

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
