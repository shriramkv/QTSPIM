# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 0
	li $t2, 0
	or $t0, $t1, $t2
	li $v0, 10 
	syscall
	