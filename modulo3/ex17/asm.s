.comm ptrgrades,4
.global ptrgrades

.comm ptrfreq,4
.global ptrfreq

.comm num,4
.global num

.global frequencies
frequencies:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function
  
  movl $0, %ebx
  movl $0, %esi
  movl $0, %edi
  movl ptrgrades, %edi
  movl ptrfreq, %ebx
  
  loop:
    movl $0, %edx
    cmpl num, %esi
    je fim
    movb (%edi), %dl
    imull $4, %edx
    addl %edx, %ebx
    addl $1, (%ebx)
    subl %edx, %ebx
    addl $1, %edi
	incl %esi
  jmp loop
  
  fim:
  movl (%ebx), %ecx
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
  ret
