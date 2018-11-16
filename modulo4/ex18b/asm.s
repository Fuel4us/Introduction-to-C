.section .text
.global sum_multiples_x
 sum_multiples_x:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %ecx
    movl 12(%ebp), %edx
    SHR $8 , %edx #dl has the 8 less significant bits
    movl $0, %eax
    movb (%ecx), %al
    movl $0, %ebx

    check:
    cmpb $0, %al
    je fim1
    

    loop1:
    divb %dl
    cmpb $0, %ah #ah is the remainder of 8 bit division
    je add
    incl %ecx
    movl $0, %eax
    movb (%ecx), %al
    jmp check
    
    
    add:
    addb (%ecx), %bl
    incl %ecx
    movl $0, %eax
    movb (%ecx), %al
    jmp check


    fim1:
    movl %ebx, %eax
    #restore
    #popl %edi
    #popl %esi
    popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
