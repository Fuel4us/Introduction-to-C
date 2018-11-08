.section .data

.section .text
  .global cube

  cube:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $8(%ebp), %eax
  imull %eax, %eax
  imull %eax, %eax

  end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
