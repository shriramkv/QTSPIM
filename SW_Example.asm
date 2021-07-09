# Declare main as a global function
	.globl main 
	.text 		
main:
	li $t2, 0x04	 	# We know that's loading Immediate! 
	li $t8, 0x10010020
	lw $t3, value		# The value is the variable holding the value! 
	add $t4, $t2, $t3	# We can add now. Just simple exercise. (Result in t4 = 5)
	sub $t5, $t2, $t3	# We can Sub now. Just simple inclusion. (Result in t5 = 3)
	sw  $t5, 0($t8)		# Verify the location 0x10010000  
	
	li $v0, 10 # We exit, folks. 
	syscall # Exit


	# The .word directive gets the space allotted in memory for us. 
	# It can get a single 4-byte word (or multiple 4-byte words)
	# and assigns that memory location an initial value which we specify. 
	value:	.word 0x01
	
	
	