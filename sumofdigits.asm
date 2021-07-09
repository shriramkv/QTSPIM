	.text
	.globl main
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	move $t0,$v0
	
	li $t1,0
	li $t2,10
	
	while:
		div $t0,$t2
		mfhi $t3
		add $t1,$t1,$t3
		mflo $t0
		bgt $t0,0,while
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,10
	syscall
	
	
	.data
msg1: .asciiz "Enter number: "
msg2: .asciiz "Sum of digits: "
