	.text
	.globl main

main:
	li $v0,4 # print_string syscall code = 4
	la $a0,msg1
	syscall
	
	li $v0,5 #read_int syscall code = 5
	syscall
	move $t0,$v0
	
	li $t1,2
	div $t0,$t1 # Remainder stored in special register hi and Quotient stored in special register lo

	mfhi $t1
	
	beq $t1,0,even
	
	odd:
		li $v0,4 # print_string syscall code = 4
		la $a0,msgodd
		syscall
		
		li $v0,10 # Exit. 
		syscall
		
	even:
		li $v0,4 # print_string syscall code = 4
		la $a0,msgeven
		syscall
		
		li $v0,10
		syscall
		
	.data
msg1: .asciiz "Enter number \n"
msgeven: .asciiz "Number is even"
msgodd: .asciiz "Number is odd"
