# Declare main as a global function
	.globl main 
	.text 		
main:
	li $t1, 2  # t1 loaded with 2 
	
	slti $t3, $t1, 3  # Here, if t1 < 3, t3 will be set to 1. else to 0. 
		
	li $v0, 10 # We exit, folks. 
	syscall # Exit
	
