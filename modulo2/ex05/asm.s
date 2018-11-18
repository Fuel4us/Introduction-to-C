.section .data
  .global numToShort

.section .text
  .global swapBytes

swapBytes:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movw numToShort, %cx # place numToShort in ax
  movb %ch, %al # place the 2nd byte (inf) in %al to further return %ax
  movb %cl, %ah # place the 8bits (inf) in %ah which is the first position

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
  ret
