.section .data
  .global A
  .global B

.section .text
  .global isMultiple

isMultiple:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %edx

  movl A, %eax
  movl B, %ebx

  divl %ebx # does eax/ebx. Remainder in edx and result in eax
  cmpl $0, %edx
  je jump_if_equal

  movl $0, %eax
  jmp end

jump_if_equal:
  movl $1, %eax
  jmp end

end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
