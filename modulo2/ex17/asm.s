.section .data
  .global A
  .global B

.section .text
  .global function

function:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  pop %eax
  pop %ebx
  pop %ecx
  pop %edx

  movl A, %eax
  subl B, %eax

  cmpl $0, %eax
  jge to_decrease_temp
  jmp to_increase_temp

to_increase_temp:

  movl $2, %ebx
  imull %ebx, %eax
  jmp end

to_decrease_temp:

  movl $3, %ebx
  imull %ebx, %eax
  jmp end

end:

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
