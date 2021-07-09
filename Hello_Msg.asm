		.text
        .globl main
main:   li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string
               
# print_int	Print integer number (32 bit) $a0 = integer to be printed
msg:   .asciiz "Its easy to program"