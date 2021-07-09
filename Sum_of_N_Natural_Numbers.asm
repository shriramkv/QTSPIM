# Here, we are going to add the first N natural numbers. 
# User shall be prompted for the inputs. 
# Simple routine to demo a loop
# Compute the sum of N integers: 1 + 2 + 3 + ... + N
	.text
	.globl	main
main:
	# Print msg1
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg1	
	syscall

	# Get N from user and save
	li	$v0,5		# read_int syscall code = 5
	syscall	
	move	$t0,$v0		# syscall results returned in $v0

	# Initialize registers
	li	$t1, 0		# initialize counter (i)
	li	$t2, 0		# initialize sum

	# Main loop body
loop:	addi	$t1, $t1, 1	# i = i + 1
	add	$t2, $t2, $t1	# sum = sum + i
	beq	$t0, $t1, exit	# if i = N, continue
	j	loop

	# Exit routine - print msg2
exit:	li	$v0, 4		# print_string syscall code = 4
	la	$a0, msg2
	syscall

	# Print sum
	li	$v0,1		# print_int syscall code = 4
	move	$a0, $t2
	syscall

	# Print newline
	li	$v0,4		# print_string syscall code = 4
	la	$a0, lf
	syscall
	li	$v0,10		# exit
	syscall

	# Start .data segment (data!)
	.data
msg1:	.asciiz	"Please enter the input (N)?  "
msg2:	.asciiz	"Sum = "
lf:     .asciiz	"\n"