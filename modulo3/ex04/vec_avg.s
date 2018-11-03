.section .data
  .global vec_size
  .global sum

.section .text
  .global vec_avg

  vec_avg:

  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %edx

  movl sum, %eax
  movl vec_size, %ebx

  idivl %ebx



end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
