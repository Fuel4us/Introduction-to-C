.section .data
  .global vec_size
  .global ptrvec

.section .text
  .global vec_sum

  vec_sum:

  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %eax
  movl $0, %ebx

  movl ptrvec, %edi
  jmp sum

  sum:

  cmp vec_size, %ebx
  je end

  addl (%edi), %eax
  incl %ebx
  addl $4, %edi # jumps 4 to go to the next space
  jmp sum

end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
