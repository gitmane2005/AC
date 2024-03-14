.data 
P: .word 1,1,1,1
Q: .word 1,1,1,1
R: .word 
n: .word 4
.text 
la a0, P
la a1, Q
la a2, R
lw a3, n
jal somaV
lw a0, 0(a2)
li a7, 10
ecall 


somaV:	addi t0, x0, 0
ciclo:	beqz a3, fim
	addi a3, a3, -1
	lw t1, 0(a0)
	lw t2, 0(a1)
	add t1, t1, t2
	add t0, t0, t1
	addi a0, a0, 4
	addi a1, a1, 4
	j ciclo
fim:	sw t0, 0(a2)
	ret 