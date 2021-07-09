# Let us understand how to code for the IF loop. 
	.data
	.text
	.globl main
		main: 
		li $t0, 1 # Here, we set count = 2; 
		li $t1, 2  # Here, we set sum = 4; 
	#This is branch if greater than. 
		bgt $t0, $t1, division 
		add $t0, $t0, $t1
	division:
		div $t0, $t1
	exit:
		li	$v0,10		# exit
		syscall
		
#The question in C Programming:
#int count = 2;
#int sum = 4; 
#if sum > count
#{
#   output = count/sum;
#   
#} 
#else
#	output = count + sum

