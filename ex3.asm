
sumSquare:
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp) # guarda o valor n
	sw s1, 4(sp) # guarda a soma dos quadrados
	add a0, s1, x0
	add a1, s0, x0 
ciclo:	bge   zero, a0, fim
	jal  square
	addi s1, s1, s0
	addi s0, s0, -1
	add a0, s0, x0
	jal x0, ciclo
fim:	lw ra, 12(sp)
	lw s0, 8(sp)
	lw s1, 4(sp)
	addi sp, sp, 16
	jr ra 
square:
	mul a3 , a0, a0
	ret 
	