.section .data
  .global numToShort
  .global byte1
  .global byte2
  .global short1
  .global short2

.section .text
  .global swapBytes
  .global concatBytes
  .global crossSumBytes

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

concatBytes:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movb byte1, %ah # moves byte1 to 2ºbyte less meaningfull
  movb byte2, %al # moves byte2 to 8 bits less meaningfull

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret

crossSumBytes:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movw short1, %ax # moves to register %ax of 16 bits
  movw short2, %bx # same for %bx
  addb %bl, %ah # adding what is stored in %bx on the 8 less meaningfull bits to the 2nd byte less meaningfull of %ax
  addb %bh, %al # reverse of what is up

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
