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


.global changes_vec
  changes_vec:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %ecx
    movl 12(%ebp), %edx
    cmpl $0, %edx
    jle fim1

    loop1:
    subl $1, %edx
    
    pushl %eax
    pushl %ecx
    pushl %edx
    pushl %ecx
    call changes
    addl $4, %esp
    popl %edx
    popl %ecx
    popl %eax

    addl $4, %ecx
    cmpl $0 , %edx
    je fim1
    jmp loop1


    fim1:
    #restore
    #popl %edi
    #popl %esi
    #popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
