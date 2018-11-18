.section .text
.global test_equal
    test_equal:

    #prologue
    pushl %ebp
    movl %esp, %ebp

    #backup to stack
    #pushl %ebx
    pushl %esi
    pushl %edi

    movl 8(%ebp), %esi
    movl 12(%ebp), %edi
    movl $1, %eax
  
    loop:
    movb (%esi), %cl
    movb (%edi), %dl
    cmp $0, %cl # to see when the string ends
    je end  
    cmp $0, %dl
    je notEqual 
    cmpb %cl, %dl
    jne notEqual
    incl %esi
    incl %edi
    jmp loop

    end:
    cmp $0, %dl
    jne notEqual
    jmp fim

    

    notEqual:
    movl $0, %eax

    
    fim:
    #restore
    popl %edi
    popl %esi
    #popl %ebx

    #epilogue
    movl %ebp, %esp
    popl %ebp
    ret
