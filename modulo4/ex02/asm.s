.section .text
.global sum_n
    sum_n:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %ecx
    movl $0, %eax
    cmpl $0, %ecx
    jle fim
    movl %ecx , %eax

    loop:
    subl $1 , %ecx
    cmpl $0,%ecx
    je fim
    addl %ecx, %eax

    jmp loop

    
    fim:
    #restore
    #popl %edi
    #popl %esi
    #popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
