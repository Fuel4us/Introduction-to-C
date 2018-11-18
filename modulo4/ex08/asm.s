
.section .text
.global calculate
    calculate:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    #pushl %esi
    #pushl %edi
    subl $8, %esp
    movl 8(%ebp), %ecx
    movl 12(%ebp), %eax
    movl %ecx, -4(%ebp)
    addl %eax,-4(%ebp)
    mull %ecx
    movl %eax, -8(%ebp)
    
    pushl %eax
    pushl %ecx
    pushl %edx
    pushl -4(%ebp)
    pushl 12(%ebp)
    pushl 8(%ebp)
    pushl $43
    call print_result
    addl $16, %esp
    popl %edx
    popl %ecx
    popl %eax

    pushl %eax
    pushl %ecx
    pushl %edx
    pushl -8(%ebp)
    pushl 12(%ebp)
    pushl 8(%ebp)
    pushl $42
    call print_result
    addl $16, %esp
    popl %edx
    popl %ecx
    popl %eax

    movl -4(%ebp), %eax
    subl -8(%ebp), %eax
    #restore
    #popl %edi
    #popl %esi
    #popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
