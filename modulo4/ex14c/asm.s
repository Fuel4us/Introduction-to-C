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

.global mixed_sum     
   mixed_sum:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    pushl %ebx
    pushl %esi
    #pushl %edi


    movl 8(%ebp), %ecx
    movl 12(%ebp), %edx
    movl 16(%ebp), %ebx
    
    #pushl %eax
    pushl %ecx
    pushl %edx
    pushl %ebx
    pushl %edx
    pushl %ecx
    call join_bits   
    addl $12, %esp
    popl %edx
    popl %ecx
    #popl %eax

    movl %eax, %esi

    #pushl %eax
    pushl %ecx
    pushl %edx
    pushl %ebx
    pushl %ecx
    pushl %edx
    call join_bits   
    addl $12, %esp
    popl %edx
    popl %ecx
    #popl %eax
    
    addl %esi, %eax
    #restore
    #popl %edi
    popl %esi
    popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
