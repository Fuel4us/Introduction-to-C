.section .data
  .global ptrvec
  .global ptrdest
  .global ptrsrc
  .global num


.section .text
  .global sort_without_reps

  sort_without_reps:
    # prologue
    pushl %ebp 			# save previous stack frame pointer
    movl %esp, %ebp 		# the stack frame pointer for sum function

    movl num, %ecx
    movl ptrsrc, %esi
    pushl %esi
    call loop_1
    popl %esi
    movl num, %ecx
    movl $0, %eax
    movl ptrdest, %edi
    call loop_3
    jmp end


  loop_1:
    movl %esi, %edi
    add $4, %edi		
    movl $0, %edx

  loop_2:
    incl %edx
    cmp %ecx, %edx
    je end_loop_2
    movl (%edi), %eax
    cmpl (%esi), %eax
    jl less
    add $4, %edi
    jmp loop_2

  less:
    movl (%esi), %ebx
    movl %eax, (%esi)
    movl %ebx, (%edi)
    add $4, %edi
    jmp loop_2

  end_loop_2:
    movl $0, %edx
    addl $4, %esi
    loop loop_1
    ret

  loop_3:
    movl (%esi), %ebx
    movl %ebx, (%edi)
    incl %eax
    addl $4, %esi
    addl $4, %edi
    cmp (%esi), %ebx
    je remove
    loop loop_3
    ret

  remove:
    addl $4, %esi
    decl %ecx
    cmp (%esi), %ebx
    je remove
    loop loop_3


  end:
    # epilogue
    movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
    popl %ebp 			# restore the previous stack frame pointer
    ret
