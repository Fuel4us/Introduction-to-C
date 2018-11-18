.section .data
A:
	.int 5
  .global A

.section .text
  .global operation


operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $2, %ecx
  movl A, %eax
  movl $0 , %edx
 
  

  cmpl $0, %eax
  jg greater
  
  divl %ecx 
  cmpl $0, %edx
  je pairnegative
  movl $1 , %eax
  jmp fim
  pairnegative:
  movl $2 , %eax
  jmp fim
  

  greater:
  divl %ecx 
  cmpl $0, %edx
  je pair
  movl $4, %eax
  jmp fim
  pair:
  movl $3 , %eax
  jmp fim
  



  fim:
  

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
 
  ret

