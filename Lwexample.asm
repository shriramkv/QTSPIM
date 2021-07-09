# Declare main as a global function
	.globl main 
	.text 		
main:
	li $t2, 10		 	# We know that's loading Immediate! 
	lw $t3, value		# The value is the variable holding the value! 
	add $t4, $t2, $t3	# We can add now. Just simple exercise. (Result in t4 = 30)
	sub $t5, $t2, $t3	# We can Sub now. Just simple inclusion. (Result in t5 = -10)
	
	li $v0, 10 # We exit, folks. 
	syscall # Exit


	# The .word directive gets the space allotted in memory for us. 
	# It can get a single 4-byte word (or multiple 4-byte words)
	# and assigns that memory location an initial value which we specify. 
	value:	.word 20

