.section .text
.global changes     
   changes:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %eax
    movl (%eax), %ecx
    movl (%eax), %edx
    SHR $8 , %edx
    AND $15, %edx
    cmpl $7, %edx
    jg greater
    jmp fim
    
    greater:
    XOR $3840 , %ecx
    movl %ecx, (%eax)


    fim:
    #restore
    #popl %edi
    #popl %esi
    #popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret

