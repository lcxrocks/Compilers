.data
v1: .word 0
v2: .word 0
v3: .word 0
v4: .word 0
v5: .word 0
v6: .word 0
v7: .word 0
v8: .word 0
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
t21: .word 0
t22: .word 0
t23: .word 0
t24: .word 0
t25: .word 0
t26: .word 0
t27: .word 0
t28: .word 0
t29: .word 0
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

lcx_mod:
	lw $t0, 4($sp)
	sw $t0, v1
	lw $t0, 8($sp)
	sw $t0, v2
	lw $t1, v1
	lw $t2, v2
	div $t1, $t2
	mflo $t0
	sw $t0, t3
	lw $t1, t3
	lw $t2, v2
	mul $t0, $t1, $t2
	sw $t0, t2
	lw $t1, v1
	lw $t2, t2
	sub $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	move $v0, $t0
	jr $ra

lcx_quick_power_mod:
	lw $t0, 4($sp)
	sw $t0, v3
	lw $t0, 8($sp)
	sw $t0, v4
	lw $t0, 12($sp)
	sw $t0, v5
	li $t0, 1
	sw $t0, v6
	lw $t0, v3
	li $t1, 0
	ble $t0, $t1, label6
	j label10
label10:
	lw $t0, v4
	li $t1, 0
	ble $t0, $t1, label6
	j label9
label9:
	lw $t0, v5
	li $t1, 0
	ble $t0, $t1, label6
	j label7
label6:
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t4
	lw $t0, t4
	move $v0, $t0
	jr $ra
	j label8
label7:
	lw $t0, v5
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v3
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t11
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v3
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v5
	lw $t1, t11
	move $t0, $t1
	sw $t0, v3
label3:
	lw $t0, v4
	li $t1, 0
	bne $t0, $t1, label4
	j label5
label4:
	li $t0, 2
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v4
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t7
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v2
	lw $t0, t7
	li $t1, 1
	beq $t0, $t1, label1
	j label2
label1:
	lw $t1, v6
	lw $t2, v3
	mul $t0, $t1, $t2
	sw $t0, t6
	lw $t0, v5
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t6
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t5
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t6
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v5
	lw $t1, t5
	move $t0, $t1
	sw $t0, v6
label2:
	lw $t1, v4
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t8
	lw $t1, t8
	move $t0, $t1
	sw $t0, v4
	lw $t1, v3
	lw $t2, v3
	mul $t0, $t1, $t2
	sw $t0, t10
	lw $t0, v5
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t10
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t9
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t10
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v5
	lw $t1, t9
	move $t0, $t1
	sw $t0, v3
	j label3
label5:
	lw $t0, v6
	move $v0, $t0
	jr $ra
label8:

main:
	addi $sp, $sp, -12
	sw $sp, v8
	li $t0, 0
	sw $t0, v7
label11:
	lw $t0, v7
	li $t1, 3
	blt $t0, $t1, label12
	j label13
label12:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t12
	lw $t1, v8
	move $t0, $t1
	sw $t0, t14
	lw $t1, v7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t14
	lw $t2, t15
	add $t0, $t1, $t2
	sw $t0, t13
	lw $t0, t13
	lw $t1, t12
	sw $t1, 0($t0)
	lw $t1, v7
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t16
	lw $t1, t16
	move $t0, $t1
	sw $t0, v7
	j label11
label13:
	lw $t1, v8
	move $t0, $t1
	sw $t0, t19
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t20
	lw $t1, t19
	lw $t2, t20
	add $t0, $t1, $t2
	sw $t0, t18
	lw $t1, t18
	lw $t0, 0($t1)
	sw $t0, t21
	lw $t1, v8
	move $t0, $t1
	sw $t0, t23
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t23
	lw $t2, t24
	add $t0, $t1, $t2
	sw $t0, t22
	lw $t1, t22
	lw $t0, 0($t1)
	sw $t0, t25
	lw $t1, v8
	move $t0, $t1
	sw $t0, t27
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t28
	lw $t1, t27
	lw $t2, t28
	add $t0, $t1, $t2
	sw $t0, t26
	lw $t1, t26
	lw $t0, 0($t1)
	sw $t0, t29
	lw $t0, t29
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t25
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t21
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_quick_power_mod
	move $t0, $v0
	sw $t0, t17
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t21
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t25
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t29
	lw $t0, t17
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
	li $t0, 0
	move $v0, $t0
	jr $ra
