.section .data
A :
	.byte 0
B:
	.short 0
C:
	.int 0
D:
	.int 0

  .global A
  .global B
  .global C
  .global D

.section .text
  .global operation # void operation(void)

operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  # moving integers to registers
  movl $0, %ecx
  movl $0, %ebx


  movb A, %cl
  movw B, %bx
  movl C, %eax
  movl $0, %edx

  adcl %ecx, %eax
  sbbl D, %eax
  adcl %ebx, %eax

 

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
  ret

