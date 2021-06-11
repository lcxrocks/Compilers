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
t49: .word 0
t50: .word 0
t51: .word 0
t52: .word 0
t53: .word 0
t54: .word 0
t55: .word 0
t56: .word 0
t57: .word 0
t58: .word 0
t59: .word 0
t60: .word 0
t61: .word 0
t62: .word 0
t63: .word 0
t64: .word 0
t65: .word 0
t66: .word 0
t67: .word 0
t68: .word 0
t69: .word 0
t70: .word 0
t71: .word 0
t72: .word 0
t73: .word 0
t74: .word 0
t75: .word 0
t76: .word 0
t77: .word 0
t78: .word 0
t79: .word 0
t80: .word 0
t81: .word 0
t82: .word 0
t83: .word 0
t84: .word 0
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
	lw $t0, 4($sp)
	sw $t0, v1
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
	lw $t0, t3
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_fact
	move $t0, $v0
	sw $t0, t2
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t3
	lw $t1, v1
	lw $t2, t2
	mul $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	move $v0, $t0
	jr $ra
label3:

lcx_isqrt:
	lw $t0, 4($sp)
	sw $t0, v2
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
	lw $t0, 4($sp)
	sw $t0, v4
	lw $t0, 8($sp)
	sw $t0, v5
	lw $t1, v4
	lw $t2, v5
	div $t1, $t2
	mflo $t0
	sw $t0, t12
	lw $t1, t12
	lw $t2, v5
	mul $t0, $t1, $t2
	sw $t0, t11
	lw $t1, v4
	lw $t2, t11
	sub $t0, $t1, $t2
	sw $t0, t10
	lw $t0, t10
	move $v0, $t0
	jr $ra

main:
	li $t0, 1331
	sw $t0, v6
	li $t0, 1217
	sw $t0, v15
	li $t1, 0
	li $t2, 22121
	sub $t0, $t1, $t2
	sw $t0, t67
	lw $t1, t67
	move $t0, $t1
	sw $t0, v7
	li $t0, 5
	sw $t0, v12
	lw $t1, v15
	li $t2, 7
	mul $t0, $t1, $t2
	sw $t0, t70
	lw $t1, t70
	lw $t2, v6
	div $t1, $t2
	mflo $t0
	sw $t0, t69
	li $t1, 9
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t73
	li $t1, 1990
	lw $t2, t73
	add $t0, $t1, $t2
	sw $t0, t72
	lw $t1, v15
	li $t2, 23
	add $t0, $t1, $t2
	sw $t0, t74
	lw $t1, t72
	lw $t2, t74
	div $t1, $t2
	mflo $t0
	sw $t0, t71
	lw $t1, t69
	lw $t2, t71
	add $t0, $t1, $t2
	sw $t0, t68
	lw $t1, t68
	move $t0, $t1
	sw $t0, v8
	li $t1, 2000
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t77
	lw $t1, t77
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t76
	li $t1, 2
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t80
	lw $t1, v15
	lw $t2, t80
	add $t0, $t1, $t2
	sw $t0, t79
	lw $t1, t79
	li $t2, 3
	add $t0, $t1, $t2
	sw $t0, t78
	lw $t1, t76
	lw $t2, t78
	div $t1, $t2
	mflo $t0
	sw $t0, t75
	lw $t1, t75
	move $t0, $t1
	sw $t0, v9
	li $t0, 0
	sw $t0, v10
	li $t0, 0
	sw $t0, v14
	li $t0, 0
	sw $t0, v13
	addi $sp, $sp, -4000
	sw $sp, v11
label23:
	lw $t0, v15
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_isqrt
	move $t0, $v0
	sw $t0, t83
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v15
	lw $t0, t83
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_isqrt
	move $t0, $v0
	sw $t0, t82
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t83
	lw $t0, t82
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_fact
	move $t0, $v0
	sw $t0, t81
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t82
	lw $t0, v10
	lw $t1, t81
	blt $t0, $t1, label24
	j label25
label24:
	li $t0, 4
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v10
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t20
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v10
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v4
	lw $t0, t20
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_fact
	move $t0, $v0
	sw $t0, t19
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t20
	lw $t1, v11
	move $t0, $t1
	sw $t0, t22
	lw $t1, v10
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t23
	lw $t1, t22
	lw $t2, t23
	add $t0, $t1, $t2
	sw $t0, t21
	lw $t0, t21
	lw $t1, t19
	sw $t1, 0($t0)
	lw $t1, v10
	li $t2, 4
	div $t1, $t2
	mflo $t0
	sw $t0, t26
	lw $t1, t26
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t25
	lw $t1, v10
	lw $t2, t25
	add $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t24
	move $t0, $t1
	sw $t0, v6
	lw $t1, v10
	li $t2, 4
	div $t1, $t2
	mflo $t0
	sw $t0, t29
	lw $t1, t29
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t28
	lw $t1, v6
	lw $t2, t28
	add $t0, $t1, $t2
	sw $t0, t27
	lw $t1, t27
	move $t0, $t1
	sw $t0, v6
	lw $t1, v10
	li $t2, 4
	div $t1, $t2
	mflo $t0
	sw $t0, t32
	lw $t1, t32
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t31
	lw $t1, v6
	lw $t2, t31
	add $t0, $t1, $t2
	sw $t0, t30
	lw $t1, t30
	move $t0, $t1
	sw $t0, v6
	lw $t1, v10
	li $t2, 4
	div $t1, $t2
	mflo $t0
	sw $t0, t35
	lw $t1, t35
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t34
	lw $t1, v6
	lw $t2, t34
	add $t0, $t1, $t2
	sw $t0, t33
	lw $t1, t33
	move $t0, $t1
	sw $t0, v6
label10:
	lw $t1, v12
	lw $t2, v12
	mul $t0, $t1, $t2
	sw $t0, t37
	lw $t1, t37
	lw $t2, v12
	mul $t0, $t1, $t2
	sw $t0, t36
	lw $t0, v7
	lw $t1, t36
	blt $t0, $t1, label11
	j label12
label11:
	li $t0, 10
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v6
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t18
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v6
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v10
	lw $t1, t18
	li $t2, 10
	add $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t17
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t16
	lw $t1, t16
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t15
	lw $t2, v8
	add $t0, $t1, $t2
	sw $t0, t14
	lw $t1, t14
	lw $t2, v9
	sub $t0, $t1, $t2
	sw $t0, t13
	lw $t1, t13
	move $t0, $t1
	sw $t0, v7
	j label10
label12:
	lw $t0, v7
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_isqrt
	move $t0, $v0
	sw $t0, t41
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v7
	li $t0, 10
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t41
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_mod
	move $t0, $v0
	sw $t0, t40
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t41
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v10
	lw $t0, t40
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_fact
	move $t0, $v0
	sw $t0, t39
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t40
	lw $t1, v7
	lw $t2, t39
	add $t0, $t1, $t2
	sw $t0, t38
	lw $t1, t38
	move $t0, $t1
	sw $t0, v7
	lw $t1, v10
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t42
	lw $t1, t42
	move $t0, $t1
	sw $t0, v10
	j label23
label25:
	li $t0, 0
	sw $t0, v10
label26:
	lw $t0, v10
	li $t1, 10
	blt $t0, $t1, label27
	j label28
label27:
	li $t0, 0
	sw $t0, v14
label20:
	lw $t0, v14
	li $t1, 10
	blt $t0, $t1, label21
	j label22
label21:
	lw $t0, v10
	li $t1, 0
	beq $t0, $t1, label16
	j label14
label16:
	lw $t0, v14
	li $t1, 0
	beq $t0, $t1, label13
	j label14
label13:
	li $t0, 1
	sw $t0, v13
	j label15
label14:
	li $t0, 0
	sw $t0, v13
label15:
label17:
	lw $t0, v13
	li $t1, 10
	blt $t0, $t1, label18
	j label19
label18:
	lw $t1, v10
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t49
	lw $t1, t49
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t48
	lw $t1, v14
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t50
	lw $t1, t48
	lw $t2, t50
	add $t0, $t1, $t2
	sw $t0, t47
	lw $t1, t47
	lw $t2, v13
	add $t0, $t1, $t2
	sw $t0, t46
	lw $t1, v11
	move $t0, $t1
	sw $t0, t51
	lw $t1, t46
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t52
	lw $t1, t51
	lw $t2, t52
	add $t0, $t1, $t2
	sw $t0, t45
	lw $t1, t45
	lw $t0, 0($t1)
	sw $t0, t53
	lw $t1, v12
	lw $t2, t53
	add $t0, $t1, $t2
	sw $t0, t44
	lw $t1, v10
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t59
	lw $t1, t59
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t58
	lw $t1, v14
	li $t2, 10
	mul $t0, $t1, $t2
	sw $t0, t60
	lw $t1, t58
	lw $t2, t60
	add $t0, $t1, $t2
	sw $t0, t57
	lw $t1, t57
	lw $t2, v13
	add $t0, $t1, $t2
	sw $t0, t56
	lw $t1, t56
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t55
	lw $t1, v11
	move $t0, $t1
	sw $t0, t61
	lw $t1, t55
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t62
	lw $t1, t61
	lw $t2, t62
	add $t0, $t1, $t2
	sw $t0, t54
	lw $t1, t54
	lw $t0, 0($t1)
	sw $t0, t63
	lw $t1, t44
	lw $t2, t63
	sub $t0, $t1, $t2
	sw $t0, t43
	lw $t1, t43
	move $t0, $t1
	sw $t0, v12
	lw $t1, v13
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t64
	lw $t1, t64
	move $t0, $t1
	sw $t0, v13
	j label17
label19:
	lw $t1, v14
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t65
	lw $t1, t65
	move $t0, $t1
	sw $t0, v14
	j label20
label22:
	lw $t1, v10
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t66
	lw $t1, t66
	move $t0, $t1
	sw $t0, v10
	j label26
label28:
	lw $t1, v12
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t84
	lw $t1, t84
	move $t0, $t1
	sw $t0, v10
	lw $t0, v10
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
