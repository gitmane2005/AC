.data 
v1: .word 1, 2, 3, 4, 5
v2: .word 2, 4, 6, 8, 30
n: .word 5

.text
la a0, v1
lw a1, n
jal ra, MEDIA
li a7, 10
ecall 

soma: 	add t1, zero, zero
	mv t0, a1
ciclo:	beqz t0, fim
	lw t2, 0(a0)
	add t1, t1, t2
	addi a0, a0, 4
	addi t0, t0, -1
	j ciclo
fim:	mv a0, t1
	ret 

MEDIA:
	addi sp, sp, -16
	sw ra, 12(sp)
	jal ra, soma
	div a0, a0, a1
	lw ra, 12(sp)
	ret
	