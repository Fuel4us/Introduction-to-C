.section .text
.global activate_bit     
   activate_bit:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    pushl %ebx
    pushl %esi
    #pushl %edi

    movl 8(%ebp), %ecx
    movl 12(%ebp), %edx
    movl $0, %ebx
    movl $0, %eax
    movl (%ecx), %esi
    cmpl %edx, %ebx
    je change

    loop:
    addl $1, %ebx
    ROR %esi
    cmpl %edx, %ebx
    je change
    cmpl $32, %ebx
    je fim
    jmp loop



    change:
    pushl %esi
    OR $1, %esi
    cmpl (%esp) , %esi
    je loop
    movl $1 , %eax
    jmp loop

    fim:
    movl %esi, (%ecx)
    #restore
    #popl %edi
    popl %esi
    popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
