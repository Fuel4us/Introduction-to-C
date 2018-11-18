.section .bss           # section identifier (bss)

.comm	ptrvec,4          # declare pointer (4 bytes)
.global ptrvec            # declare ptr1 global so that it can be used in C
.comm   num,4
.global num	
.section .text          # section identifier (text)

.global keep_negatives        # declare function as global so that it can be used in C
keep_negatives:               # function start      
# prologue
    pushl %ebp          # save previous stack frame pointer
    movl %esp, %ebp     # the stack frame pointer for our function
# body        
    movl  ptrvec,%esi     
    movl  $0,%eax    
    movl  $0,%ecx  
    movl  $0,%ebx

array_loop: 
    movl  (%esi), %ecx 
    incl %ebx
    cmpl %eax, %ecx
    jg greater
    addl $4, %esi 
    cmpl num , %ebx
    je fim
    jmp array_loop        
    
greater:           	
    movl %ebx, (%esi)
    addl $4, %esi 
    cmpl num , %ebx
    je fim
    jmp array_loop


fim:
# epilogue
    movl %ebp, %esp     # restore the stack pointer ("clear" the stack)
    popl %ebp           # restore the stack frame pointer
    ret                 # return from the function   
