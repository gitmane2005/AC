.data 
v1: .word 10, 20, 30, 40, 50
v2: .word 2, 4, 6, 8, 234567
n: .word 5
.text
la a0, v1
la a2, v2
lw a1, n
jal ra, MAXMED
li a7, 10
ecall 

.text
MAXMED: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw a2, 8(sp)
	jal ra, MEDIA
	sw a0, 4(sp)
	lw a0, 8(sp)
	jal ra, MEDIA
	lw t0, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	bgt t0, a0, retorno
	ret
	
retorno:
	mv a0, t0
	ret





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
	addi sp, sp, 16
	ret
