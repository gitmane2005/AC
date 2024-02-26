.data
V1: .byte 1, 3, 4, 2

.text
la a0, V1 # a0 tem o endereço de v1
li a1, 4 # a1 tem o numero de elemtentos de v1
jal ra, max
li a7, 10
ecall

max:	beq a1, zero, fim
	lb t0, 0(a0)

ciclo:	addi a1, a1, -1
	beq a1, zero, fim
	addi a0, a0, 1
	lb t1, 0(a0)
	ble t1, t0, ciclo
	mv t0, t1
	j ciclo

fim:	mv a0, t0
	ret
	