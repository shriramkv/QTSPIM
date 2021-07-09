# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 100
	li $v0, 10 
	syscall
	