.section .text
.global count_bits_zero
    count_bits_zero:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %ecx
    movl $0, %edx
    movl $32, %eax
    
    loop:
    SHR %ecx
    JC count
    cmpl $0, %ecx
    je fim
    jmp loop



    count:
    incl %edx
    jmp loop

    fim:
    subl %edx, %eax
    #restore
    #popl %edi
    #popl %esi
    #popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret

.global vec_count_bits_zero
  vec_count_bits_zero:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %ecx
    movl 12(%ebp), %edx
    movl $0, %ebx
    cmpl %edx, %ebx
    je fim1
    loop1:
    subl $1, %edx
    movl $0, %eax
    #pushl %eax
    pushl %ecx
    pushl %edx
    pushl (%ecx)
    call count_bits_zero
    addl $4, %esp
    popl %edx
    popl %ecx
    #popl %eax

    addl %eax,%ebx
    addl $4, %ecx
    cmpl $0 , %edx
    je fim1
    jmp loop1


    fim1:
    movl %ebx , %eax
    #restore
    #popl %edi
    #popl %esi
    popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret

