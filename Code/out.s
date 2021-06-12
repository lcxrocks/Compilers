.data
v1: .word 0
v2: .word 0
v3: .word 0
v4: .word 0
v5: .word 0
v6: .word 0
v7: .word 0
v8: .word 0
v9: .word 0
v10: .word 0
t1: .word 0
t2: .word 0
t3: .word 0
t4: .word 0
t5: .word 0
t6: .word 0
t7: .word 0
t8: .word 0
t9: .word 0
t10: .word 0
t11: .word 0
t12: .word 0
t13: .word 0
t14: .word 0
t15: .word 0
t16: .word 0
t17: .word 0
t18: .word 0
t19: .word 0
t20: .word 0
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text

read:
	li $v0, 4
	la $a0, _prompt
	syscall
	li $v0, 5
	syscall
	jr $ra

write:
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $0
	jr $ra

lcx_fact:
	lw $t0, v1
	li $t1, 0
	ble $t0, $t1, label1
	j label2
label1:
	li $t0, 1
	move $v0, $t0
	jr $ra
	j label3
label2:
	lw $t1, v1
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t3
	lw $t0, v1
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t3
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_fact
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -4($sp)
	addi $sp, $sp, 4
	sw $t0, v1
	move $t0, $v0
	sw $t0, t2
	lw $t1, t2
	lw $t2, v1
	mul $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	move $v0, $t0
	jr $ra
label3:

lcx_isqrt:
	li $t0, 0
	sw $t0, v3
label7:
	lw $t0, v3
	lw $t1, v2
	blt $t0, $t1, label8
	j label9
label8:
	lw $t1, v3
	lw $t2, v3
	mul $t0, $t1, $t2
	sw $t0, t4
	lw $t0, t4
	lw $t1, v2
	ble $t0, $t1, label6
	j label5
label6:
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t6
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t7
	lw $t1, t6
	lw $t2, t7
	mul $t0, $t1, $t2
	sw $t0, t5
	lw $t0, t5
	lw $t1, v2
	bgt $t0, $t1, label4
	j label5
label4:
	lw $t0, v3
	move $v0, $t0
	jr $ra
label5:
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t8
	lw $t1, t8
	move $t0, $t1
	sw $t0, v3
	j label7
label9:
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t9
	lw $t0, t9
	move $v0, $t0
	jr $ra

lcx_mod:
	lw $t0, v4
	li $t1, 0
	blt $t0, $t1, label10
	j label13
label13:
	lw $t0, v5
	li $t1, 0
	ble $t0, $t1, label10
	j label11
label10:
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t10
	lw $t0, t10
	move $v0, $t0
	jr $ra
	j label12
label11:
	lw $t1, v4
	lw $t2, v5
	div $t1, $t2
	mflo $t0
	sw $t0, t13
	lw $t1, t13
	lw $t2, v5
	mul $t0, $t1, $t2
	sw $t0, t12
	lw $t1, v4
	lw $t2, t12
	sub $t0, $t1, $t2
	sw $t0, t11
	lw $t0, t11
	move $v0, $t0
	jr $ra
label12:

lcx_is_prime:
	li $t0, 2
	sw $t0, v7
	lw $t0, v2
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v6
	sw $t0, v2
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_isqrt
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -4($sp)
	addi $sp, $sp, 4
	sw $t0, v2
	move $t0, $v0
	sw $t0, t16
	lw $t1, t16
	move $t0, $t1
	sw $t0, v8
label16:
	lw $t0, v7
	lw $t1, v8
	ble $t0, $t1, label17
	j label18
label17:
	lw $t0, v5
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v7
	sw $t0, v5
	lw $t0, v4
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v6
	sw $t0, v4
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -4($sp)
	addi $sp, $sp, 4
	sw $t0, v5
	lw $t0, -8($sp)
	addi $sp, $sp, 4
	sw $t0, v4
	move $t0, $v0
	sw $t0, t14
	lw $t0, t14
	li $t1, 0
	beq $t0, $t1, label14
	j label15
label14:
	li $t0, 0
	move $v0, $t0
	jr $ra
label15:
	lw $t1, v7
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t15
	move $t0, $t1
	sw $t0, v7
	j label16
label18:
	li $t0, 1
	move $v0, $t0
	jr $ra

main:
	li $t0, 2
	sw $t0, v9
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t19
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t19
	move $t0, $t1
	sw $t0, v10
label21:
	lw $t0, v1
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v10
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_fact
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -4($sp)
	addi $sp, $sp, 4
	sw $t0, v1
	move $t0, $v0
	sw $t0, t20
	lw $t0, v9
	lw $t1, t20
	blt $t0, $t1, label22
	j label23
label22:
	lw $t0, v6
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v9
	sw $t0, v6
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_is_prime
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -4($sp)
	addi $sp, $sp, 4
	sw $t0, v6
	move $t0, $v0
	sw $t0, t17
	lw $t0, t17
	li $t1, 0
	bne $t0, $t1, label19
	j label20
label19:
	lw $t0, v9
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	move $a0, $t0
	jal write
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
label20:
	lw $t1, v9
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t18
	lw $t1, t18
	move $t0, $t1
	sw $t0, v9
	j label21
label23:
	li $t0, 0
	move $v0, $t0
	jr $ra
