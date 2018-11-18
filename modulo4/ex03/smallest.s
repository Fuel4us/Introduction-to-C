.section .data

.section .text
  .global smallest

  smallest:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl 8(%ebp), %esi
  movl 12(%ebp), %ebx
  movl 16(%ebp), %ecx

  cmpl %esi, %ebx
  jge first

  cmpl %ebx, %ecx
  jge second

  jmp third

  first:
  cmpl %esi, %ecx
  jge return1
  jmp third

  second:
  movl %ebx, %eax
  jmp end

  third:
  movl %ecx, %eax
  jmp end

  return1:
  movl %esi, %eax
  jmp end

  end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
