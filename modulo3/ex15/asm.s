.section .bss           # section identifier (bss)

.comm	ptrvec,4          # declare pointer (4 bytes)
.global ptrvec            # declare ptr1 global so that it can be used in C
.comm   num,4
.global num	
.section .text          # section identifier (text)

.global array_sort       # declare function as global so that it can be used in C
array_sort:               # function start      
# prologue
    pushl %ebp          # save previous stack frame pointer
    movl %esp, %ebp     # the stack frame pointer for our function
# body        
    movl  ptrvec,%esi     
    movl  $0,%eax    
    movl  $0,%ecx 
    movl  %esi, %edi
array_loop: 
    movl  (%edi), %ecx 
    movl %eax, %ebx
    incl %eax
    movl %edi, %esi
    addl $4 , %edi
    cmpl num , %eax
    je fim
array_loop1:
    addl $4, %esi 
    incl %ebx
    movl (%esi), %edx
    cmpl %ecx, %edx
    jg greater
    cmpl num , %ebx
    je array_loop
    jmp array_loop1    

        
    
greater:
    movl %ecx, (%esi)
    subl $4 , %edi          	
    movl %edx, (%edi)
    addl $4 , %edi
    movl %edx , %ecx
    jmp array_loop1


fim:
# epilogue
    movl %ebp, %esp     # restore the stack pointer ("clear" the stack)
    popl %ebp           # restore the stack frame pointer
    ret                 # return from the function   
