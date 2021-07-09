# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 02
	li $t2, 03
	mul $t0, $t1, $t2
	li $v0, 10 
	syscall
	# How do we exit the program? Simple, through the system calls. 
	# Many calls are there and we can pick appropriate one! 10 is the 
	# code for the exit and place it in $V0! you are all done! 
	
	
	
	