.section .data
        .comm ptr1,4
	.global ptr1

.section .text
	.global decrypt
	decrypt:

  # prologue
  pushl %ebp # save previous stack frame pointer
  movl %esp, %ebp # the stack frame pointer for sum function

		movl $0, %eax
		movl ptr1 , %ebx
                movl $0, %ecx
		

	loop:
		movb (%ebx) , %cl
		cmpb $0 , %cl
		je end

		cmpb $32, %cl
		je increment

    cmpb $97, %cl # if its 'a'
    je increment

		subb $2, (%ebx)
		addl $1, %eax
		jmp increment

	increment:
		incl %ebx
		jmp loop

	end:

    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer

    ret
