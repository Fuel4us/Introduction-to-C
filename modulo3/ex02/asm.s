.section .data
  .comm ptr1,4
  .comm ptr2,4
  .global ptr1
  .global ptr2

.section .text
  .global str_copy_p

str_copy_p:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  pushl %esi
  pushl %edi

  movl ptr1, %esi
  movl ptr2, %edi

  loop_start:

    movb (%esi), %bl # moves the string in ebx to bl
    cmp $0, %bl # to see when the string ends
    je end

    cmp $48, %bl # compares 0 with string using ASCII
    je change_numbers

    movb (%esi), %cl
    movb %cl, (%edi)
    jmp loop_end

  change_numbers:

    movb $56, %al
    movb %al, (%edi)
    jmp loop_end

  loop_end:
    incl %esi
    incl %edi
    jmp loop_start

end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
