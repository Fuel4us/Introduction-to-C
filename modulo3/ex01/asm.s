.section .data
  .comm ptr1,4
  .global ptr1

.section .text
  .global zero_count

zero_count:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  pushl %esi

  movl ptr1, %esi
  movl $0, %eax

  loop_start:

    movb (%esi), %bl # moves the string in ebx to bl
    cmp $0, %bl # to see when the string ends
    je end

    cmp $48, %bl # compares 0 with string using ASCII
    je counter


    jmp loop_end

  counter:

    incl %eax
    jmp loop_end


  loop_end:
    incl %esi
    jmp loop_start

end:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret

