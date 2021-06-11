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
v18: .word 0
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
t85: .word 0
t86: .word 0
t87: .word 0
t88: .word 0
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

lcx_merge:
	lw $t0, 4($sp)
	sw $t0, v1
	lw $t0, 8($sp)
	sw $t0, v2
	lw $t0, 12($sp)
	sw $t0, v3
	lw $t0, 16($sp)
	sw $t0, v4
	addi $sp, $sp, -40
	sw $sp, v6
	addi $sp, $sp, -40
	sw $sp, v8
	lw $t1, v2
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t64
	lw $t1, v3
	lw $t2, t64
	sub $t0, $t1, $t2
	sw $t0, t63
	lw $t1, t63
	move $t0, $t1
	sw $t0, v10
	lw $t1, v4
	lw $t2, v3
	sub $t0, $t1, $t2
	sw $t0, t65
	lw $t1, t65
	move $t0, $t1
	sw $t0, v11
	li $t0, 0
	sw $t0, v5
label4:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label5
	j label6
label5:
	lw $t1, v2
	lw $t2, v5
	add $t0, $t1, $t2
	sw $t0, t2
	lw $t1, v1
	move $t0, $t1
	sw $t0, t3
	lw $t1, t2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t4
	lw $t1, t3
	lw $t2, t4
	add $t0, $t1, $t2
	sw $t0, t1
	lw $t1, v6
	move $t0, $t1
	sw $t0, t6
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t7
	lw $t1, t6
	lw $t2, t7
	add $t0, $t1, $t2
	sw $t0, t5
	lw $t1, t1
	lw $t0, 0($t1)
	sw $t0, t8
	lw $t0, t5
	lw $t1, t8
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t9
	move $t0, $t1
	sw $t0, v5
	j label4
label6:
	li $t0, 0
	sw $t0, v7
label7:
	lw $t0, v7
	lw $t1, v11
	blt $t0, $t1, label8
	j label9
label8:
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t12
	lw $t1, t12
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t11
	lw $t1, v1
	move $t0, $t1
	sw $t0, t13
	lw $t1, t11
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t14
	lw $t1, t13
	lw $t2, t14
	add $t0, $t1, $t2
	sw $t0, t10
	lw $t1, v8
	move $t0, $t1
	sw $t0, t16
	lw $t1, v7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t16
	lw $t2, t17
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t10
	lw $t0, 0($t1)
	sw $t0, t18
	lw $t0, t15
	lw $t1, t18
	sw $t1, 0($t0)
	lw $t1, v7
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t19
	lw $t1, t19
	move $t0, $t1
	sw $t0, v7
	j label7
label9:
	li $t0, 0
	sw $t0, v5
	li $t0, 0
	sw $t0, v7
	lw $t1, v2
	move $t0, $t1
	sw $t0, v9
label10:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label13
	j label12
label13:
	lw $t0, v7
	lw $t1, v11
	blt $t0, $t1, label11
	j label12
label11:
	lw $t1, v6
	move $t0, $t1
	sw $t0, t37
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t38
	lw $t1, t37
	lw $t2, t38
	add $t0, $t1, $t2
	sw $t0, t36
	lw $t1, t36
	lw $t0, 0($t1)
	sw $t0, t39
	lw $t1, v8
	move $t0, $t1
	sw $t0, t41
	lw $t1, v7
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
	lw $t0, t39
	lw $t1, t43
	ble $t0, $t1, label1
	j label2
label1:
	lw $t1, v6
	move $t0, $t1
	sw $t0, t21
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t22
	lw $t1, t21
	lw $t2, t22
	add $t0, $t1, $t2
	sw $t0, t20
	lw $t1, v1
	move $t0, $t1
	sw $t0, t24
	lw $t1, v9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t25
	lw $t1, t24
	lw $t2, t25
	add $t0, $t1, $t2
	sw $t0, t23
	lw $t1, t20
	lw $t0, 0($t1)
	sw $t0, t26
	lw $t0, t23
	lw $t1, t26
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t27
	lw $t1, t27
	move $t0, $t1
	sw $t0, v5
	j label3
label2:
	lw $t1, v8
	move $t0, $t1
	sw $t0, t29
	lw $t1, v7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t30
	lw $t1, t29
	lw $t2, t30
	add $t0, $t1, $t2
	sw $t0, t28
	lw $t1, v1
	move $t0, $t1
	sw $t0, t32
	lw $t1, v9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t33
	lw $t1, t32
	lw $t2, t33
	add $t0, $t1, $t2
	sw $t0, t31
	lw $t1, t28
	lw $t0, 0($t1)
	sw $t0, t34
	lw $t0, t31
	lw $t1, t34
	sw $t1, 0($t0)
	lw $t1, v7
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t35
	lw $t1, t35
	move $t0, $t1
	sw $t0, v7
label3:
	lw $t1, v9
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t44
	lw $t1, t44
	move $t0, $t1
	sw $t0, v9
	j label10
label12:
label14:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label15
	j label16
label15:
	lw $t1, v6
	move $t0, $t1
	sw $t0, t46
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t47
	lw $t1, t46
	lw $t2, t47
	add $t0, $t1, $t2
	sw $t0, t45
	lw $t1, v1
	move $t0, $t1
	sw $t0, t49
	lw $t1, v9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t50
	lw $t1, t49
	lw $t2, t50
	add $t0, $t1, $t2
	sw $t0, t48
	lw $t1, t45
	lw $t0, 0($t1)
	sw $t0, t51
	lw $t0, t48
	lw $t1, t51
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t52
	lw $t1, t52
	move $t0, $t1
	sw $t0, v5
	lw $t1, v9
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t53
	lw $t1, t53
	move $t0, $t1
	sw $t0, v9
	j label14
label16:
label17:
	lw $t0, v7
	lw $t1, v11
	blt $t0, $t1, label18
	j label19
label18:
	lw $t1, v8
	move $t0, $t1
	sw $t0, t55
	lw $t1, v7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t56
	lw $t1, t55
	lw $t2, t56
	add $t0, $t1, $t2
	sw $t0, t54
	lw $t1, v1
	move $t0, $t1
	sw $t0, t58
	lw $t1, v9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t59
	lw $t1, t58
	lw $t2, t59
	add $t0, $t1, $t2
	sw $t0, t57
	lw $t1, t54
	lw $t0, 0($t1)
	sw $t0, t60
	lw $t0, t57
	lw $t1, t60
	sw $t1, 0($t0)
	lw $t1, v7
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t61
	lw $t1, t61
	move $t0, $t1
	sw $t0, v7
	lw $t1, v9
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t62
	lw $t1, t62
	move $t0, $t1
	sw $t0, v9
	j label17
label19:
	li $t0, 0
	move $v0, $t0
	jr $ra

lcx_merge_sort:
	lw $t0, 4($sp)
	sw $t0, v12
	lw $t0, 8($sp)
	sw $t0, v13
	lw $t0, 12($sp)
	sw $t0, v14
	li $t0, 0
	sw $t0, v15
	lw $t0, v13
	lw $t1, v14
	bge $t0, $t1, label20
	j label21
label20:
	li $t0, 0
	move $v0, $t0
	jr $ra
label21:
	lw $t1, v14
	lw $t2, v13
	sub $t0, $t1, $t2
	sw $t0, t68
	lw $t1, t68
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t67
	lw $t1, v13
	lw $t2, t67
	add $t0, $t1, $t2
	sw $t0, t66
	lw $t1, t66
	move $t0, $t1
	sw $t0, v15
	lw $t1, v12
	move $t0, $t1
	sw $t0, t69
	lw $t0, v15
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v13
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t69
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_merge_sort
	move $t0, $v0
	sw $t0, t70
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t69
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v13
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v15
	lw $t1, v12
	move $t0, $t1
	sw $t0, t71
	lw $t1, v15
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t72
	lw $t0, v14
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t72
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t71
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_merge_sort
	move $t0, $v0
	sw $t0, t73
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t71
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t72
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v14
	lw $t1, v12
	move $t0, $t1
	sw $t0, t74
	lw $t0, v14
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v15
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v13
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t74
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_merge
	move $t0, $v0
	sw $t0, t75
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t74
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v13
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v15
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v14
	li $t0, 0
	move $v0, $t0
	jr $ra

main:
	li $t0, 6
	sw $t0, v18
	addi $sp, $sp, -24
	sw $sp, v17
	li $t0, 0
	sw $t0, v16
label22:
	lw $t0, v16
	lw $t1, v18
	blt $t0, $t1, label23
	j label24
label23:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t76
	lw $t1, v17
	move $t0, $t1
	sw $t0, t78
	lw $t1, v16
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t79
	lw $t1, t78
	lw $t2, t79
	add $t0, $t1, $t2
	sw $t0, t77
	lw $t0, t77
	lw $t1, t76
	sw $t1, 0($t0)
	lw $t1, v16
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t80
	lw $t1, t80
	move $t0, $t1
	sw $t0, v16
	j label22
label24:
	lw $t1, v17
	move $t0, $t1
	sw $t0, t86
	lw $t1, v18
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t87
	lw $t0, t87
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	li $t0, 0
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t86
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_merge_sort
	move $t0, $v0
	sw $t0, t88
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t86
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v0
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t87
	li $t0, 0
	sw $t0, v16
label25:
	lw $t0, v16
	lw $t1, v18
	blt $t0, $t1, label26
	j label27
label26:
	lw $t1, v17
	move $t0, $t1
	sw $t0, t82
	lw $t1, v16
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t83
	lw $t1, t82
	lw $t2, t83
	add $t0, $t1, $t2
	sw $t0, t81
	lw $t1, t81
	lw $t0, 0($t1)
	sw $t0, t84
	lw $t0, t84
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
	lw $t1, v16
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t85
	lw $t1, t85
	move $t0, $t1
	sw $t0, v16
	j label25
label27:
	li $t0, 0
	move $v0, $t0
	jr $ra
