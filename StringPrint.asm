# Here, we can understand how to 
	# .text assembler directive
	.text

	# Declare main as a global function
	.globl	main
	
main:
	# Run the print_string syscall which has code 4 - this is mandatory for printing the text. 
	# this will get the string printed and the same will appear on the Console. 
	li	$v0,4		# Code for syscall is 4 and v0 has to be used. 
	la	$a0, msg	# Pointer to string, We have to use the a0 here! 
	syscall
	li	$v0,10		# Code for syscall: exit
	syscall

	.data  # All the data structures go into the data section. 

	# The .asciiz assembler directive creates an ASCII string in memory terminated by
	# the null character. Note that strings are surrounded by double-quotes
msg:	.asciiz	"Shriram YouTube!\n"