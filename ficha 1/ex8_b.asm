.data 
v1: .word 10, 20, 30, 40, 50
v2: .word 2, 4, 6, 8, 30
n: .word 5
.text
la a0, v1
la a1, v2
lw a2, n
jal ra, biggest
li a7, 10
ecall 

.text
MAXMED: 
	lw t2, 0(a2)
	mv t3, zero
	mv t4, zero




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
