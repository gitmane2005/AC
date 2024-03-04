.data
X: .float 1
Y: .float 1
n: .word 1

.text 
la a0, X
la a1, Y
lw a2, n
jal ra, prodint_VF
li a7, 10
ecall 

prodint_VF:
	fcvt.s.w ft7, zero
	#mv ft1, zero #guarda a mul de dois valores em t1
	#mv ft2, zero #guarda a soma das mul em t2
	
ciclo:	beqz a2, fim	
	flw ft0, 0(a0)
	flw ft1, 0(a1)
	fmadd.s ft7, ft0, ft1, ft7
	addi a2, a2, -1
	addi a0, a0, 4
	addi a1, a1, 4
	j ciclo

fim:	fcvt.d.s  fa0, ft7
	ret 
