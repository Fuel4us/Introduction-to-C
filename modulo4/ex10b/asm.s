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
