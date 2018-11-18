.section .bss           # section identifier (bss)

.comm	ptrvec,4          # declare pointer (4 bytes)
.global ptrvec            # declare ptr1 global so that it can be used in C
.comm   num,4
.global num
.comm   x,2
.global x	
.section .text          # section identifier (text)

.global vec_search        # declare function as global so that it can be used in C
vec_search:               # function start      
# prologue
    pushl %ebp          # save previous stack frame pointer
    movl %esp, %ebp     # the stack frame pointer for our function
# body        
    movl  ptrvec,%esi     
    movl  $0,%eax    
    movl  $0,%ecx  
    movl  num,%ebx
    movw  x,%dx 

array_loop: 
    movw  (%esi), %cx 
    cmpw %dx , %cx
    je loop_end
    incl %eax
    addl $2, %esi 
    cmpl %ebx , %eax
    je fim1
    jmp array_loop        
    
loop_end:           # loop end; note: return value (counter) in %eax 	
    movl %esi , %eax	
    jmp fim

fim1:
    movl $0 ,%eax
fim:
# epilogue
    movl %ebp, %esp     # restore the stack pointer ("clear" the stack)
    popl %ebp           # restore the stack frame pointer
    ret                 # return from the function   
