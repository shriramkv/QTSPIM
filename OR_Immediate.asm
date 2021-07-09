# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 1
	ori $t0, $t1, 0
	li $v0, 10 
	syscall
	
	
	