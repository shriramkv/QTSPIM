# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 1
	andi $t0, $t1, 1
	li $v0, 10 
	syscall