.text    
.globl main 

main:
	li $t1, 5 # Loading Reg t1 with 5
	li $t2, 5 # Loading Reg t2 with 3
		 
	beq $t1, $t2, end # Can we compare? t1 with t2. 
	addi $t3, $t2, 5 # if not equal add immediately with 5. 

end: # On being equal, jump!!
	li $v0, 10 
	syscall
	
	