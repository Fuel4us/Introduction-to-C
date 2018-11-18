.section .data
  .global ptrvec
  .global ptrvecAux
  .global num
  .global x

.section .text
  .global exists
  .global vec_diff

  exists:
    # prologue
    pushl %ebp 			# save previous stack frame pointer
    movl %esp, %ebp 	# the stack frame pointer for sum function

    pushl %ebx # saves ebx on the stack
    pushl %edi
    pushl %esi

    movl $0, %eax # number of changes
    movl $0, %edx # checked elements
    movl $0, %edi # to check if it exists

    movl ptrvec, %ebx
    movl ptrvecAux, %esi
    movl num, %ecx

    jmp loop

  loop:

    cmpl num, %edx # to see if array ended
    je end

    movw (%ebx), %cx # value that needs to be checked
    movw %cx, x

    pushl %edx
    pushl %eax

    call exists

    movl %eax, %edi # after calling exists() saves on edi

    popl %eax # gets eax previously pushed
    popl %edx
    popl %ecx

    cmpl $0, %edi # checks if it exists or not
    je increment # if not increments

    movl (%ebx), %edi # saves the value of vec[i] in edi
    movl %edi, (%esi) # saves it in auxiliar array

    addl $2, %esi # next short in auxVec
    addl $1, %eax # adds 1 to result

    jmp increment

  increment:

    addl $2, %ebx # next short on vec1
    addl $1, %edx # next value to be checked

  end:

    popl %esi
    popl %edi
    popl %ebx

  	# epilogue
  	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
  	popl %ebp 			# restore the previous stack frame pointer
  	ret
