.section .data
  .global op1
  .global op2
  .global op3
  .global op4
  .global res

.section .text
  .global operation # void operation(void)

operation:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  # moving integers to registers
  movl op1, %ecx
  movl op2, %ebx
  movl op3, %eax
  movl op4, %edx

  addl %edx, %eax
  addl %ebx, %ecx
  subl %ecx, %eax

  movl %eax, res

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
  ret
