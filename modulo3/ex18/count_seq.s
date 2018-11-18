.section .data
  .global ptrvec
  .global num

.section .text
  .global count_seq


  count_seq:
    # prologue
    pushl %ebp 				# save previous stack frame pointer
    movl %esp, %ebp 		# the stack frame pointer for sum function

    movl $0, %eax
    movl ptrvec, %esi
    movl num, %ecx
    subl $2, %ecx
    call loop
    jmp end

  loop:
    movl (%esi), %ebx
    addl $4, %esi
    cmpl (%esi), %ebx
    jl seq
    jmp loop
    ret

  seq:
    movl (%esi), %ebx
    addl $4, %esi
    cmpl (%esi), %ebx
    jl lastSeq
    subl $4, %esi
    jmp loop
    ret

  lastSeq:
    incl %eax
    subl $4, %esi
    jmp loop
    ret

    end:
    # epilogue
    movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
    popl %ebp 				# restore the previous stack frame pointer
    ret
