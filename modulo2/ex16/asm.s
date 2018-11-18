.section .data
A:
	.int 5
  .global A

.section .text
  .global operation


B:
	.int 5
C:
	.int 5

operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $1 , %eax
  movl $1, %esi
  movl $0, %ebx
  movl A, %ecx
 

  myloop:
  mull %esi
  mull %esi
  mull B
  mull B
  divl C
  addl %eax, %ebx
  cmpl %esi,%ecx
  je fim
  addl $1,%esi
  movl $1 , %eax
  jmp myloop
  
  

  fim:
  movl %ebx ,%eax

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
 
  ret

