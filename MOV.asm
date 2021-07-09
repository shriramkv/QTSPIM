# Declare main as a global function
	.globl main 
	.text 		
main:
	li $t2, 1
	move $t1, $t2
	move $t8, $t1
	
	li $v0, 10 # We exit, folks. 
	syscall # Exit
	
	
	