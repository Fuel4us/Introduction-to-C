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


  addl %ebx, %eax
  jc carry
  jo overflow
  movl $0,%eax
  jmp fim
  
  overflow:
  movl $2,%eax
  jmp fim

  carry:
  movl $1,%eax
  

  
  fim:

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  
  ret

