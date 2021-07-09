# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 1
	li $t2, 0
	and $t0, $t1, $t2
	li $v0, 10 
	syscall
	
	