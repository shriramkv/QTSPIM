# We are going to learn while/for loop now!
# Sum of first 10 natural numbers 
	.data
	.text
	.globl main
		main: 
		li $t0, 0  # Here, we set count = 0; 
		li $t1, 0  # Here, we set sum = 1; 
	while: #This is branch if greater than. 
		bgt $t0, 10, exit 
		add $t1, $t1, $t0	#sum = sum + count
		addi $t0, $t0, 1 	#count = count + 1 
		j while    # this will keep repeated. 
		
	exit:
		li	$v0,10		# exit
		syscall


#The question in C Programming:
#int count = 0;
#int sum = 0; 
#while (i<10)
#{
#   
#   sum = sum + count; 1, 3, 6, 10.... 
#   count = count + 1; 1,2,3,4,.. 9
#
#}
#for(count=1; count <= n; count++)
#{
#     sum = sum + count;
#}

