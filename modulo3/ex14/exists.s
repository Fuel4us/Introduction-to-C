.section .data
  .global ptrvec
  .global num
  .global x

.section .text
  .global exists

  exists:
    # prologue
    pushl %ebp 			# save previous stack frame pointer
    movl %esp, %ebp 	# the stack frame pointer for sum function

    movw x, %cx
    movl $0, %eax # final result
    movl $0, %edx # counter
    movl num, %ebx # saves the num of elements in array
    movl ptrvec, %esi

    jmp loop

  loop:

    cmpl %ebx, %edx # compares if it arrived to the end
    je end

    cmpw %cx, (%esi) # compares int x to the element of the array
    je found

    addl $1, %edx # it increments but changes the flag if needed
    addl $2, %esi # next short
    jmp loop

  found:

    movl $1, %eax
    jmp end

  end:
  	# epilogue
  	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
  	popl %ebp 			# restore the previous stack frame pointer
  	ret
