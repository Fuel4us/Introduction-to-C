.section .text
.global join_bits     
   join_bits:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    pushl %ebx
    pushl %esi
    #pushl %edi

    movl 8(%ebp), %eax
    movl 12(%ebp), %edx
    movl $31, %ecx
    movl 16(%ebp), %ebx
    subl %ebx, %ecx
    movl $-1 , %esi
    SHR %cl, %esi
    AND %esi, %eax
    NOT %esi
    AND %esi, %edx
    addl %edx, %eax
    #restore
    #popl %edi
    popl %esi
    popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
