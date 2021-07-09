.text    
.globl main 

main:
	li $t1, 5 # Loading Reg t1 with 5
	li $t2, 3 # Loading Reg t2 with 3
		 
	bne $t1, $t2, end # Can we compare? t1 with t2. 
	addi $t3, $t2, 10
	
end: # On being not equal, jump!!
	li $v0, 10 
	syscall
	
	
	