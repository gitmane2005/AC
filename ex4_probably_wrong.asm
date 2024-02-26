.data
num: .word 7
.text
	la t0, num
	lw a0, 0(t0)
	jal ra, POLI
	li a7, 10
	ecall
POLI:
       addi sp, sp, -16
       sw ra, 12(sp)
       sw a0, 8(sp)
       mv t0, a0
       jal ra, QUAD
       mv t0, a0
       li a0,3
       mul s0, s0, a0
       add a0, t0, s0
       addi a0, a0, 1
       lw s0, 0(sp)
       lw ra, 4(sp)
       addi sp, sp, 8
       ret
QUAD:
       mul a0, a0, a0
       ret
