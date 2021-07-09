# Start .text segment (program code)
	.text
	.globl	main
	
main:
	li $t1, 1
	sll $t0, $t1, 3
	li $v0, 10 
	syscall
# SLL is equal to multiplying by 2 for one bit move. 
# 8 4 2 1 

