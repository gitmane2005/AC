.data
test: .word -1 #because .word type as 4bytes or 32 bits it works as well giving the output of 31

.text 
la t0, test
lw a0, 0(t0)
jal ra, leftest_bit #return is stored in a0
li a7, 10
ecall 

leftest_bit:
	mv t0, zero
	addi t1, x0, -1
	mv t2, zero
	
cilco:	beq a0, x0, fim
	andi t0, a0, 1
	srli a0, a0, 1
	addi t1, t1, 1
	beqz  t0, cilco
	addi t2, t1, 0
	j cilco

	
fim:	mv a0, t2
	ret