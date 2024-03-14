.data 
P: .word 1,1,1,1
n: .word 4
k: .word 6
.text 
la a0, P
lw a1, n
lw a2, k
jal altV
li a7, 10
ecall 


altV:	addi sp, sp, -16
	sw a0, 12(sp)
ciclo:	beqz a1, fim
	addi a1, a1, -1
	lw t0, 0(a0)
	mul t0, t0, a2
	sw t0, 0(a0)
	addi a0, a0, 4
	j ciclo
fim:	lw a0, 12(sp)
	addi sp, sp, 16
	ret