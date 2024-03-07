.data
V: .word 10, 3, 38, 8493, 3, 2, 2,2,2,2,2,2
n: .word 12
lim: .word 122

.text 
la a0, V
lw a1, n
lw a2, lim
jal conta_inf
li a7, 10
ecall 

conta_inf:
	addi t0, x0, 0
ciclo:	beqz a1, fim
	lw t1, 0(a0)
	addi a0, a0, 4
	addi a1, a1, -1
	ble a2, t1, ciclo
	addi t0, t0, 1
	j ciclo

fim:	mv a0, t0
	ret 