.text    
.globl main 

main:
	li $t1, 0x10010020 # This address is load into the register
	jr	$t1     	   # Let us see if the jump can be done to 0x10010020
	li $t2, 0x04	   # Lets load some data - 0x04 into t2. 
	sw  $t2, 0($t1)	   # Move the t2 content ===> 0x10010020
	
end: # On being equal, jump!!
	li $v0, 10 
	syscall
	