.data
v1: .asciz "aa a a"

.text
la a0, v1
li a1, 'a' #aspas simples dao logo o numero em binario deste caracter
jal ra, count_char
li a7, 10
ecall
count_char:
	lbu t0, 0(a0)
	mv t1, zero

ciclo:	beq t0, zero, fim
	addi a0, a0, 1
	beq t0, a1, sum
	lb t0, 0(a0)
	j ciclo

sum:	addi t1,t1, 1
	lb t0, 0(a0)
	j ciclo
	

fim:	mv a0, t1
	ret