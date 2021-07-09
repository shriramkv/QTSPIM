.text    
.globl main 

main:
	li $t1, 5 # Loading Reg t1 with 5
	li $t2, 5 # Loading Reg t2 with 3
		 
	j	jump_here

jump_here:
	li $t4, 5
	li $t5, 6 
	
end: # On being equal, jump!!
	li $v0, 10 
	syscall
