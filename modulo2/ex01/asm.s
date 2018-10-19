  .global op1
  .global op2
  .global res
  .global sum
sum:
		#prologue
		pushl %ebp
		movl %esp,%ebp # the statc frame pointer for sum function
		movl op1, %ebx #place op1 in ebx
		movl op2, %eax #place op2 in eax
		addl %ebx,%eax #add ebx to eax. Result is in eax
#void sum(void)
# save previous stack frame pointer
movl %eax, res #copy result to res
	#epilogue
	movl %ebp,%esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp #restore the previous stack prom the pointer
	ret
