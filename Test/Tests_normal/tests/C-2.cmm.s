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
v11: .word 0
v12: .word 0
v13: .word 0
v14: .word 0
v15: .word 0
v16: .word 0
v17: .word 0
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
t30: .word 0
t31: .word 0
t32: .word 0
t33: .word 0
t34: .word 0
t35: .word 0
t36: .word 0
t37: .word 0
t38: .word 0
t39: .word 0
t40: .word 0
t41: .word 0
t42: .word 0
t43: .word 0
t44: .word 0
t45: .word 0
t46: .word 0
t47: .word 0
t48: .word 0
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

lcx_bit_and:
	lw $t0, v1
	li $t1, 0
	beq $t0, $t1, label1
	j label2
label1:
	li $t0, 0
	move $v0, $t0
	jr $ra
	j label3
label2:
	lw $t0, v2
	move $v0, $t0
	jr $ra
label3:

lcx_bit_or:
	lw $t0, v3
	li $t1, 0
	beq $t0, $t1, label4
	j label5
label4:
	lw $t0, v4
	move $v0, $t0
	jr $ra
	j label6
label5:
	li $t0, 1
	move $v0, $t0
	jr $ra
label6:

lcx_bit_not:
	lw $t0, v5
	li $t1, 0
	beq $t0, $t1, label7
	j label8
label7:
	li $t0, 1
	move $v0, $t0
	jr $ra
	j label9
label8:
	li $t0, 0
	move $v0, $t0
	jr $ra
label9:

lcx_mod:
	lw $t1, v6
	lw $t2, v7
	div $t1, $t2
	mflo $t0
	sw $t0, t3
	lw $t1, t3
	lw $t2, v7
	mul $t0, $t1, $t2
	sw $t0, t2
	lw $t1, v6
	lw $t2, t2
	sub $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	move $v0, $t0
	jr $ra

lcx_and:
	li $t0, 32
	sw $t0, v15
	addi $sp, $sp, -128
	sw $sp, v11
	addi $sp, $sp, -128
	sw $sp, v12
	addi $sp, $sp, -128
	sw $sp, v13
	li $t0, 0
	sw $t0, v10
	li $t0, 0
	sw $t0, v14
	lw $t0, v8
	li $t1, 0
	ble $t0, $t1, label10
	j label12
label12:
	lw $t0, v9
	li $t1, 0
	ble $t0, $t1, label10
	j label11
label10:
	addi $sp, $sp, 384
	li $t0, 0
	move $v0, $t0
	jr $ra
label11:
label13:
	lw $t0, v10
	lw $t1, v15
	blt $t0, $t1, label14
	j label15
label14:
	lw $t1, v11
	move $t0, $t1
	sw $t0, t5
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t6
	lw $t1, t5
	lw $t2, t6
	add $t0, $t1, $t2
	sw $t0, t4
	lw $t0, t4
	li $t1, 0
	sw $t1, 0($t0)
	lw $t1, v12
	move $t0, $t1
	sw $t0, t8
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t8
	lw $t2, t9
	add $t0, $t1, $t2
	sw $t0, t7
	lw $t0, t7
	li $t1, 0
	sw $t1, 0($t0)
	lw $t1, v13
	move $t0, $t1
	sw $t0, t11
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t12
	lw $t1, t11
	lw $t2, t12
	add $t0, $t1, $t2
	sw $t0, t10
	lw $t0, t10
	li $t1, 0
	sw $t1, 0($t0)
	lw $t1, v10
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t13
	lw $t1, t13
	move $t0, $t1
	sw $t0, v10
	j label13
label15:
	li $t0, 0
	sw $t0, v10
label16:
	lw $t0, v10
	lw $t1, v15
	blt $t0, $t1, label17
	j label18
label17:
	addi $sp, $sp, -128
	lw $t0, t44
	sw $t0, 124($sp)
	lw $t0, t38
	sw $t0, 120($sp)
	lw $t0, t43
	sw $t0, 116($sp)
	lw $t0, t42
	sw $t0, 112($sp)
	lw $t0, t39
	sw $t0, 108($sp)
	lw $t0, t45
	sw $t0, 104($sp)
	lw $t0, t37
	sw $t0, 100($sp)
	lw $t0, t36
	sw $t0, 96($sp)
	lw $t0, t25
	sw $t0, 92($sp)
	lw $t0, t33
	sw $t0, 88($sp)
	lw $t0, t32
	sw $t0, 84($sp)
	lw $t0, t29
	sw $t0, 80($sp)
	lw $t0, t28
	sw $t0, 76($sp)
	lw $t0, t24
	sw $t0, 72($sp)
	lw $t0, t23
	sw $t0, 68($sp)
	lw $t0, t22
	sw $t0, 64($sp)
	lw $t0, t21
	sw $t0, 60($sp)
	lw $t0, t18
	sw $t0, 56($sp)
	lw $t0, t17
	sw $t0, 52($sp)
	lw $t0, t14
	sw $t0, 48($sp)
	lw $t0, t13
	sw $t0, 44($sp)
	lw $t0, t12
	sw $t0, 40($sp)
	lw $t0, t9
	sw $t0, 36($sp)
	lw $t0, t6
	sw $t0, 32($sp)
	lw $t0, v14
	sw $t0, 28($sp)
	lw $t0, v10
	sw $t0, 24($sp)
	lw $t0, v13
	sw $t0, 20($sp)
	lw $t0, v12
	sw $t0, 16($sp)
	lw $t0, v11
	sw $t0, 12($sp)
	lw $t0, v15
	sw $t0, 8($sp)
	lw $t0, v9
	sw $t0, 4($sp)
	lw $t0, v8
	sw $t0, 0($sp)
	lw $t0, v7
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	li $t0, 2
	sw $t0, v7
	lw $t0, v6
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v8
	sw $t0, v6
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v7
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v6
	lw $t0, 124($sp)
	sw $t0, t44
	lw $t0, 120($sp)
	sw $t0, t38
	lw $t0, 116($sp)
	sw $t0, t43
	lw $t0, 112($sp)
	sw $t0, t42
	lw $t0, 108($sp)
	sw $t0, t39
	lw $t0, 104($sp)
	sw $t0, t45
	lw $t0, 100($sp)
	sw $t0, t37
	lw $t0, 96($sp)
	sw $t0, t36
	lw $t0, 92($sp)
	sw $t0, t25
	lw $t0, 88($sp)
	sw $t0, t33
	lw $t0, 84($sp)
	sw $t0, t32
	lw $t0, 80($sp)
	sw $t0, t29
	lw $t0, 76($sp)
	sw $t0, t28
	lw $t0, 72($sp)
	sw $t0, t24
	lw $t0, 68($sp)
	sw $t0, t23
	lw $t0, 64($sp)
	sw $t0, t22
	lw $t0, 60($sp)
	sw $t0, t21
	lw $t0, 56($sp)
	sw $t0, t18
	lw $t0, 52($sp)
	sw $t0, t17
	lw $t0, 48($sp)
	sw $t0, t14
	lw $t0, 44($sp)
	sw $t0, t13
	lw $t0, 40($sp)
	sw $t0, t12
	lw $t0, 36($sp)
	sw $t0, t9
	lw $t0, 32($sp)
	sw $t0, t6
	lw $t0, 28($sp)
	sw $t0, v14
	lw $t0, 24($sp)
	sw $t0, v10
	lw $t0, 20($sp)
	sw $t0, v13
	lw $t0, 16($sp)
	sw $t0, v12
	lw $t0, 12($sp)
	sw $t0, v11
	lw $t0, 8($sp)
	sw $t0, v15
	lw $t0, 4($sp)
	sw $t0, v9
	lw $t0, 0($sp)
	sw $t0, v8
	addi $sp, $sp, 128
	move $t0, $v0
	sw $t0, t14
	lw $t1, v11
	move $t0, $t1
	sw $t0, t16
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t16
	lw $t2, t17
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t0, t15
	lw $t1, t14
	sw $t1, 0($t0)
	addi $sp, $sp, -128
	lw $t0, t44
	sw $t0, 124($sp)
	lw $t0, t38
	sw $t0, 120($sp)
	lw $t0, t43
	sw $t0, 116($sp)
	lw $t0, t42
	sw $t0, 112($sp)
	lw $t0, t39
	sw $t0, 108($sp)
	lw $t0, t45
	sw $t0, 104($sp)
	lw $t0, t37
	sw $t0, 100($sp)
	lw $t0, t36
	sw $t0, 96($sp)
	lw $t0, t25
	sw $t0, 92($sp)
	lw $t0, t33
	sw $t0, 88($sp)
	lw $t0, t32
	sw $t0, 84($sp)
	lw $t0, t29
	sw $t0, 80($sp)
	lw $t0, t28
	sw $t0, 76($sp)
	lw $t0, t24
	sw $t0, 72($sp)
	lw $t0, t23
	sw $t0, 68($sp)
	lw $t0, t22
	sw $t0, 64($sp)
	lw $t0, t21
	sw $t0, 60($sp)
	lw $t0, t18
	sw $t0, 56($sp)
	lw $t0, t17
	sw $t0, 52($sp)
	lw $t0, t14
	sw $t0, 48($sp)
	lw $t0, t13
	sw $t0, 44($sp)
	lw $t0, t12
	sw $t0, 40($sp)
	lw $t0, t9
	sw $t0, 36($sp)
	lw $t0, t6
	sw $t0, 32($sp)
	lw $t0, v14
	sw $t0, 28($sp)
	lw $t0, v10
	sw $t0, 24($sp)
	lw $t0, v13
	sw $t0, 20($sp)
	lw $t0, v12
	sw $t0, 16($sp)
	lw $t0, v11
	sw $t0, 12($sp)
	lw $t0, v15
	sw $t0, 8($sp)
	lw $t0, v9
	sw $t0, 4($sp)
	lw $t0, v8
	sw $t0, 0($sp)
	lw $t0, v7
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	li $t0, 2
	sw $t0, v7
	lw $t0, v6
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v9
	sw $t0, v6
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v7
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v6
	lw $t0, 124($sp)
	sw $t0, t44
	lw $t0, 120($sp)
	sw $t0, t38
	lw $t0, 116($sp)
	sw $t0, t43
	lw $t0, 112($sp)
	sw $t0, t42
	lw $t0, 108($sp)
	sw $t0, t39
	lw $t0, 104($sp)
	sw $t0, t45
	lw $t0, 100($sp)
	sw $t0, t37
	lw $t0, 96($sp)
	sw $t0, t36
	lw $t0, 92($sp)
	sw $t0, t25
	lw $t0, 88($sp)
	sw $t0, t33
	lw $t0, 84($sp)
	sw $t0, t32
	lw $t0, 80($sp)
	sw $t0, t29
	lw $t0, 76($sp)
	sw $t0, t28
	lw $t0, 72($sp)
	sw $t0, t24
	lw $t0, 68($sp)
	sw $t0, t23
	lw $t0, 64($sp)
	sw $t0, t22
	lw $t0, 60($sp)
	sw $t0, t21
	lw $t0, 56($sp)
	sw $t0, t18
	lw $t0, 52($sp)
	sw $t0, t17
	lw $t0, 48($sp)
	sw $t0, t14
	lw $t0, 44($sp)
	sw $t0, t13
	lw $t0, 40($sp)
	sw $t0, t12
	lw $t0, 36($sp)
	sw $t0, t9
	lw $t0, 32($sp)
	sw $t0, t6
	lw $t0, 28($sp)
	sw $t0, v14
	lw $t0, 24($sp)
	sw $t0, v10
	lw $t0, 20($sp)
	sw $t0, v13
	lw $t0, 16($sp)
	sw $t0, v12
	lw $t0, 12($sp)
	sw $t0, v11
	lw $t0, 8($sp)
	sw $t0, v15
	lw $t0, 4($sp)
	sw $t0, v9
	lw $t0, 0($sp)
	sw $t0, v8
	addi $sp, $sp, 128
	move $t0, $v0
	sw $t0, t18
	lw $t1, v12
	move $t0, $t1
	sw $t0, t20
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t21
	lw $t1, t20
	lw $t2, t21
	add $t0, $t1, $t2
	sw $t0, t19
	lw $t0, t19
	lw $t1, t18
	sw $t1, 0($t0)
	lw $t1, v8
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t22
	lw $t1, t22
	move $t0, $t1
	sw $t0, v8
	lw $t1, v9
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t23
	lw $t1, t23
	move $t0, $t1
	sw $t0, v9
	lw $t1, v10
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t24
	move $t0, $t1
	sw $t0, v10
	j label16
label18:
	li $t0, 0
	sw $t0, v10
label19:
	lw $t0, v10
	lw $t1, v15
	blt $t0, $t1, label20
	j label21
label20:
	lw $t1, v11
	move $t0, $t1
	sw $t0, t27
	lw $t1, v10
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
	lw $t1, v12
	move $t0, $t1
	sw $t0, t31
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t32
	lw $t1, t31
	lw $t2, t32
	add $t0, $t1, $t2
	sw $t0, t30
	lw $t1, t30
	lw $t0, 0($t1)
	sw $t0, t33
	addi $sp, $sp, -128
	lw $t0, t44
	sw $t0, 124($sp)
	lw $t0, t38
	sw $t0, 120($sp)
	lw $t0, t43
	sw $t0, 116($sp)
	lw $t0, t42
	sw $t0, 112($sp)
	lw $t0, t39
	sw $t0, 108($sp)
	lw $t0, t45
	sw $t0, 104($sp)
	lw $t0, t37
	sw $t0, 100($sp)
	lw $t0, t36
	sw $t0, 96($sp)
	lw $t0, t25
	sw $t0, 92($sp)
	lw $t0, t33
	sw $t0, 88($sp)
	lw $t0, t32
	sw $t0, 84($sp)
	lw $t0, t29
	sw $t0, 80($sp)
	lw $t0, t28
	sw $t0, 76($sp)
	lw $t0, t24
	sw $t0, 72($sp)
	lw $t0, t23
	sw $t0, 68($sp)
	lw $t0, t22
	sw $t0, 64($sp)
	lw $t0, t21
	sw $t0, 60($sp)
	lw $t0, t18
	sw $t0, 56($sp)
	lw $t0, t17
	sw $t0, 52($sp)
	lw $t0, t14
	sw $t0, 48($sp)
	lw $t0, t13
	sw $t0, 44($sp)
	lw $t0, t12
	sw $t0, 40($sp)
	lw $t0, t9
	sw $t0, 36($sp)
	lw $t0, t6
	sw $t0, 32($sp)
	lw $t0, v14
	sw $t0, 28($sp)
	lw $t0, v10
	sw $t0, 24($sp)
	lw $t0, v13
	sw $t0, 20($sp)
	lw $t0, v12
	sw $t0, 16($sp)
	lw $t0, v11
	sw $t0, 12($sp)
	lw $t0, v15
	sw $t0, 8($sp)
	lw $t0, v9
	sw $t0, 4($sp)
	lw $t0, v8
	sw $t0, 0($sp)
	lw $t0, v2
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t33
	sw $t0, v2
	lw $t0, v1
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t29
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_bit_and
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v2
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v1
	lw $t0, 124($sp)
	sw $t0, t44
	lw $t0, 120($sp)
	sw $t0, t38
	lw $t0, 116($sp)
	sw $t0, t43
	lw $t0, 112($sp)
	sw $t0, t42
	lw $t0, 108($sp)
	sw $t0, t39
	lw $t0, 104($sp)
	sw $t0, t45
	lw $t0, 100($sp)
	sw $t0, t37
	lw $t0, 96($sp)
	sw $t0, t36
	lw $t0, 92($sp)
	sw $t0, t25
	lw $t0, 88($sp)
	sw $t0, t33
	lw $t0, 84($sp)
	sw $t0, t32
	lw $t0, 80($sp)
	sw $t0, t29
	lw $t0, 76($sp)
	sw $t0, t28
	lw $t0, 72($sp)
	sw $t0, t24
	lw $t0, 68($sp)
	sw $t0, t23
	lw $t0, 64($sp)
	sw $t0, t22
	lw $t0, 60($sp)
	sw $t0, t21
	lw $t0, 56($sp)
	sw $t0, t18
	lw $t0, 52($sp)
	sw $t0, t17
	lw $t0, 48($sp)
	sw $t0, t14
	lw $t0, 44($sp)
	sw $t0, t13
	lw $t0, 40($sp)
	sw $t0, t12
	lw $t0, 36($sp)
	sw $t0, t9
	lw $t0, 32($sp)
	sw $t0, t6
	lw $t0, 28($sp)
	sw $t0, v14
	lw $t0, 24($sp)
	sw $t0, v10
	lw $t0, 20($sp)
	sw $t0, v13
	lw $t0, 16($sp)
	sw $t0, v12
	lw $t0, 12($sp)
	sw $t0, v11
	lw $t0, 8($sp)
	sw $t0, v15
	lw $t0, 4($sp)
	sw $t0, v9
	lw $t0, 0($sp)
	sw $t0, v8
	addi $sp, $sp, 128
	move $t0, $v0
	sw $t0, t25
	lw $t1, v13
	move $t0, $t1
	sw $t0, t35
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t36
	lw $t1, t35
	lw $t2, t36
	add $t0, $t1, $t2
	sw $t0, t34
	lw $t0, t34
	lw $t1, t25
	sw $t1, 0($t0)
	lw $t1, v10
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t37
	lw $t1, t37
	move $t0, $t1
	sw $t0, v10
	j label19
label21:
	lw $t1, v15
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t45
	lw $t1, t45
	move $t0, $t1
	sw $t0, v10
label22:
	lw $t0, v10
	li $t1, 0
	bge $t0, $t1, label23
	j label24
label23:
	lw $t1, v14
	li $t2, 2
	mul $t0, $t1, $t2
	sw $t0, t39
	lw $t1, v13
	move $t0, $t1
	sw $t0, t41
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t42
	lw $t1, t41
	lw $t2, t42
	add $t0, $t1, $t2
	sw $t0, t40
	lw $t1, t40
	lw $t0, 0($t1)
	sw $t0, t43
	lw $t1, t39
	lw $t2, t43
	add $t0, $t1, $t2
	sw $t0, t38
	lw $t1, t38
	move $t0, $t1
	sw $t0, v14
	lw $t1, v10
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t44
	lw $t1, t44
	move $t0, $t1
	sw $t0, v10
	j label22
label24:
	addi $sp, $sp, 384
	lw $t0, v14
	move $v0, $t0
	jr $ra

main:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t46
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t46
	move $t0, $t1
	sw $t0, v16
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t47
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t47
	move $t0, $t1
	sw $t0, v17
	addi $sp, $sp, -20
	lw $t0, t48
	sw $t0, 16($sp)
	lw $t0, v17
	sw $t0, 12($sp)
	lw $t0, t47
	sw $t0, 8($sp)
	lw $t0, v16
	sw $t0, 4($sp)
	lw $t0, t46
	sw $t0, 0($sp)
	lw $t0, v9
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v17
	sw $t0, v9
	lw $t0, v8
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v16
	sw $t0, v8
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_and
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v9
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v8
	lw $t0, 16($sp)
	sw $t0, t48
	lw $t0, 12($sp)
	sw $t0, v17
	lw $t0, 8($sp)
	sw $t0, t47
	lw $t0, 4($sp)
	sw $t0, v16
	lw $t0, 0($sp)
	sw $t0, t46
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, t48
	lw $t0, t48
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
