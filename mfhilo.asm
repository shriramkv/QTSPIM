# Declare main as a global function
	.globl main 
	.text 		
main:
	li $t1, 23
	li $t2, 10
	div $t1, $t2
	mfhi $t5
	mflo $t6

	li $v0, 10 # We exit, folks. 
	syscall # Exit