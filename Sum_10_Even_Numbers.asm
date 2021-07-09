# We are going to learn while loop now!
# First ten Even Numbers to be added.
	.data
	.text
	.globl main
		main: 
		li $t0, 0  # Here, we set count = 0; 
		li $t1, 0  # Here, we set sum = 0; 
	while: #This is branch if greater than. 
		bgt $t0, 20, exit 
		add $t1, $t1, $t0	#sum = sum + count
		addi $t0, $t0, 2 	#count = count + 1 
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
#   count = count + 2; 1,2,3,4,.. 9
#
#}
#for(count=0; count <= n; count+2)
#{
#     sum = sum + count;
#}