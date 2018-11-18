.section .bss           # section identifier (bss)

.comm	ptrvec,4          # declare pointer (4 bytes)
.global ptrvec            # declare ptr1 global so that it can be used in C
.comm   num,4
.global num	
.section .text          # section identifier (text)

.global vec_greater20        # declare function as global so that it can be used in C
vec_greater20:               # function start      
# prologue
    pushl %ebp          # save previous stack frame pointer
    movl %esp, %ebp     # the stack frame pointer for our function
# body        
    movl  ptrvec,%esi     
    movl  $0,%eax    
    movl  $0,%ecx  
    movl  $0,%ebx
    movl  $20,%edx 

array_loop: 
    movl  (%esi), %ecx 
    addl $4, %esi 
    incl %ebx
    cmpl %edx, %ecx
    jg greater
    cmpl num , %ebx
    je fim
    jmp array_loop        
    
greater:           	
    incl %eax
    cmpl num , %ebx
    je fim
    jmp array_loop


fim:
# epilogue
    movl %ebp, %esp     # restore the stack pointer ("clear" the stack)
    popl %ebp           # restore the stack frame pointer
    ret                 # return from the function   
