.section .data
  .global even

.section .text
  .global test_even

  test_even:

    # prologue
    pushl %ebp # save previous stack frame pointer
    movl %esp, %ebp # the stack frame pointer for sum function

    movl $0, %ecx
    movl $0, %edx
    movl $0, %eax

    movl even, %eax
    movl $2, %ebx
    idivl %ebx

    cmp $0, %edx
    je equals

    movl $0, %eax
    jmp end

    equals:

    movl $1, %eax
    jmp end

	end:

    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer

    ret
