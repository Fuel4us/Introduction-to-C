.section .data
  .global code
  .global current_salary

.section .text
  .global salaryRaise

salaryRaise:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl currentSalary, %eax

  # manager
  movl $10, %ebx
  cmpl code, %ebx
  je manager

  # engineer
  movl $11, %ebx
  cmpl code, %ebx
  je engineer

  # technician
  movl $12, %ebx
  cmpl code, %ebx
  je technician

  # others
  jmp others

manager:
  addl $300, %eax
  jmp end

engineer:
  addl $250, %eax
  jmp end

technician:
  add $150, %eax
  jmp end

others:
  add $100, %eax
  jmp end

end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
