.section .data
  .global num
  .global ptrvec

.section .text
  .global vec_sum_even

  vec_sum_even:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %eax # to clean eax
  movl ptrvec, %ebx # store pointer
  movl $0, %ecx # counter
  movl $0, %edx # clean

  vec_loop:
    cmpl %ecx, num # checking if vec ended
    je end

    pushl %eax
    pushl %esi

    movl (%ebx), %esi

    call test_even
    popl %esi

    movl %eax, %esi
    popl %eax

    cmpl $1, %esi
    je add
    jne loop_inc

  add:
    addl (%ebx), %eax
    jmp loop_inc

  loop_inc:
    addl $4, %ebx
    incl %ecx
    jmp vec_loop

  end:

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer

  ret
