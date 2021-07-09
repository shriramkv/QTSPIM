# Declare main as a global function
	.globl main 
	.text 		
main:
	li $t1, 2  # t1 loaded with 2 
	li $t2, 3  # t2 loaded with 3. 
	
	slt $t3, $t1, $t2  # Here, if t1 < t2, t3 will be set to 1. else to 0. 
		
	li $v0, 10 # We exit, folks. 
	syscall # Exit
	
# set on less than	slt $1,$2,$3	if($2<$3)$1=1;
# else $1=0	Test if less than.
# If true, set $1 to 1. Otherwise, set $1 to 0 

