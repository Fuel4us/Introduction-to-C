.section .data
 .global num1
 .global num2

res:
 .global res

.section .text
 .global sum
 .global subtraction
 .global multiplication
 .global division
 .global modulos
 .global powers2
 .global powers3

sum:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function


  movl num1, %eax
  addl num2, %eax
  movl %eax, res

  jmp end

subtraction:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function


  movl num1, %eax
  subl num2, %eax

  movl %eax, res


  jmp end

multiplication:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function


  movl num1, %eax
  movl num2, %ebx
  imull %ebx

  movl %eax, res

  jmp end

division:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %ecx
  movl $0, %edx

  movl num1, %eax
  movl num2, %ebx
  idivl %ebx

  movl %eax, res

  jmp end

modulos:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl num1, %eax
  addl num2, %eax
  cmpl $0, %eax
  jle negate

  movl %eax, res

  jmp end

negate:
  neg %eax
  movl %eax, res

  jmp end

powers2:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl num1, %eax
  addl num2, %eax

  imull %eax, %eax
  movl %eax, res

  jmp end

powers3:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl num1, %eax
  addl num2, %eax

  imull %eax, %eax
  imull %eax, %eax
  movl %eax, res

  jmp end

end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
