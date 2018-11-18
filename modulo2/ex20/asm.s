.section .data
i:
    .int 0
  .global i


j:
    .int 0
  .global j

h:
    .int 0
  .global h

g:
    .int 0
  .global g

r:
    .int 0
  .global r


.section .text
  .global fs
  .global f2s
  .global f3s
  .global f4s


fs:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl i, %ecx
  movl j, %ebx
  
  cmpl %ecx,%ebx
  je equal
  movl %ecx, %eax
  addl %ebx, %eax
  subl $1, %eax
  jmp fim

  equal:
  movl %ecx, %eax
  subl %ebx, %eax
  addl $1, %eax

  

  fim:


  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
 
  ret

f2s:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl i, %ecx
  movl j, %ebx
  
  cmpl %ebx,%ecx
  jg greater
  addl $1, %ebx
  jmp fim1

  greater:
  subl $1, %ecx

  

  fim1:

  movl %ebx, %eax
  mull %ecx

  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
 
  ret



f3s:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl $0, %ecx
  movl $0, %eax
  movl $0, %ebx
  movl $0, %edx
  movl j, %ecx
  movl i, %eax
  cmp %ecx, %eax
  je IGreatEqualJ
  jg IGreatEqualJ
  addl %ecx, %eax
  movl %eax, %ecx
  addl $2, %ecx
  addl %ecx, %eax
  jmp fim4

  IGreatEqualJ:
   movl %eax, %ebx
   imull %ecx, %eax
   movl %ebx, %ecx
   movl %eax, %ebx
   movl $1, %eax 
   addl %ecx, %eax
   movl %ebx, %ecx
    jmp fim4

  fim4:
    divl %ecx 
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
  ret


f4s:
  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

  movl i , %ebx
  addl j, %ebx
  cmpl $10, %ebx
  jl less
  movl j, %eax
  mull %eax
  movl $3 , %edx
  divl %edx

  jmp fim3


  less:
  movl i, %eax
  mull %eax
  movl $4 , %edx
  mull %edx

 fim3:
  # epilogue
  movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
  popl %ebp # restore the previous stack frame pointer
 
  ret
