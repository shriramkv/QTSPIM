	.text
	.globl main
main:
	li $v0,4 # print_string syscall code = 4
	la $a0,msg1
	syscall
	
	li $v0,5 #read_int syscall code = 5
	syscall
	move $t0,$v0
	
	mult $t0,$t0
	mflo $t1 # move the content from low register to t1. 
	
	li $v0,4 # print_string syscall code = 4
	la $a0,msg2
	syscall
	
	li $v0,1 # print_int syscall code = 1
	move $a0,$t1
	syscall
	
	li $v0,10 # exit
	syscall
	
	.data
msg1: .asciiz "Enter n "
msg2: .asciiz "Square of n "
