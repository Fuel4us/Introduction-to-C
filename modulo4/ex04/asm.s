.section .text
.global sub_greater
    sub_greater:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    #pushl %esi
    #pushl %edi

    movl 8(%ebp), %eax
    movl 12(%ebp), %edx
    movl 16(%ebp), %ecx


    cmp %eax, %edx #se %edx for maior
    jg maior
    jmp menor #se %ebx for menor


    maior:
    movl %eax, (%ecx)
    jmp fim

    menor:
    movl %edx, (%ecx)

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
