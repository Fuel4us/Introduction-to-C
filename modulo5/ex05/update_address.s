.section .text
	.global update_address

update_address:
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function

	movl 8(%ebp), %edi		# estrutura
	movl 12(%ebp), %esi		# new address

  addl $3, %edi
  movl %esi, (%edi)

end:
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret 					# retorna o eax
