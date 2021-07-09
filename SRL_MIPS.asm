# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 8
	srl $t0, $t1, 3
	li $v0, 10 
	syscall
# SRL is equal to divide by 2 for one bit move. 
# 8 4 2 1 

