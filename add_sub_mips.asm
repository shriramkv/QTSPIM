# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t0, 25
	li $t1, 10 
	add $t2, $t0, $t1
	li $v0, 10 
	syscall
	# How do we exit the program? Simple, through the system calls. 
	# Many calls are there and we can pick appropriate one! 10 is the 
	# code for the exit and place it in $V0! you are all done! 
	