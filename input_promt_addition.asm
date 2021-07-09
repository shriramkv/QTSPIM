# Here you go, how to get the user input 
# Addition of two numbers getting user input
# Procedure - Print the enter message, collect data 1, print the enter msg, collect second data.
# Add them, prompt the result string, print sum, print newline and stop! 

	# Start .text segment (program code)
	.text
	.globl	main

main:
	# Print string msg1
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg1	# load the address of msg
	syscall

	# Get input A from user and save
	li	$v0,5		# read_int syscall code = 5
	syscall	
	move	$t0,$v0		# syscall results returned in $v0

	# Print string msg2
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg2	# load the address of msg2
	syscall

	# Get input B from user and save
	li	$v0,5		# read_int syscall code = 5
	syscall	
	move	$t1,$v0		# syscall results returned in $v0

	# Math!
	add	$t0, $t0, $t1	# A = A + B

	# Print string msg3
	li	$v0, 4
	la	$a0, msg3
	syscall

	# Print sum
	li	$v0,1		# print_int syscall code = 1
	move	$a0, $t0	# int to print must be loaded into $a0
	syscall

	# Print \n
	li	$v0,4		# print_string syscall code = 4
	la	$a0, newline
	syscall

	li	$v0,10		# exit
	syscall

	# Start .data segment (data!)
	.data
msg1:	.asciiz	"Hello User, Enter A:   "
msg2:	.asciiz	"Hello User, Enter B:   "
msg3:	.asciiz	"The sume is : A + B = "
newline:   .asciiz	"\n"