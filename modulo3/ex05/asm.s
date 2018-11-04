.section .bss           # section identifier (bss)

.comm	ptrvec,4          # declare pointer (4 bytes)
.global ptrvec            # declare ptr1 global so that it can be used in C
	
.section .text          # section identifier (text)

.global vec_add2        # declare function as global so that it can be used in C
vec_add2:               # function start      
# prologue
    pushl %ebp          # save previous stack frame pointer
    movl %esp, %ebp     # the stack frame pointer for our function
# body        
    movl  ptrvec,%esi     
    movl  $0,%eax       
    movl  (%esi), %ebx

array_loop:  
    addl $4, %esi  
    incl %eax
    addl $2, (%esi)     
    cmpl %eax, %ebx
    je loop_end
    jmp array_loop        
    
loop_end:           # loop end; note: return value (counter) in %eax 		
# epilogue
    movl %ebp, %esp     # restore the stack pointer ("clear" the stack)
    popl %ebp           # restore the stack frame pointer
    ret                 # return from the function   
