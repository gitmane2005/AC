.data 
V: .float 0.11, 3.1, 10.1
n: .word 3
a: .float 0.0
b: .float 10.0

.text 
la a0, V
lw a1, n
la t0, a
flw fa0, 0(t0)
la t1, b
flw fa1, 0(t1)
jal ra, conta_intervalo
li a7, 10
ecall 


conta_intervalo:
	add t6, zero, zero
ciclo:	beqz a1, fim
	addi a1, a1, -1
	flw ft0, 0(a0)
	addi a0, a0, 4
	fle.s t0, fa0, ft0
	beqz t0, ciclo
	fle.s t0, ft0, fa1
	beqz t0, ciclo
	addi t6, t6, 1
	j ciclo
	
fim:	mv a0, t6
	ret
	