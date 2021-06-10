.data
v1: .word 0
v2: .word 0
v3: .word 0
v4: .word 0
v5: .word 0
v6: .word 0
v7: .word 0
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

cal_bmi:
	lw $t1, v1
	move $t0, $t1
	sw $t0, t3
	lw $t1, t3
	li $t2, 12
	add $t0, $t1, $t2
	sw $t0, t2
	lw $t1, t2
	lw $t0, 0($t1)
	sw $t0, t4
	lw $t1, v1
	move $t0, $t1
	sw $t0, t7
	lw $t1, t7
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t6
	lw $t1, t6
	lw $t0, 0($t1)
	sw $t0, t8
	lw $t1, v1
	move $t0, $t1
	sw $t0, t10
	lw $t1, t10
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t9
	lw $t0, 0($t1)
	sw $t0, t11
	lw $t1, t8
	lw $t2, t11
	mul $t0, $t1, $t2
	sw $t0, t5
	lw $t1, t4
	lw $t2, t5
	div $t1, $t2
	mflo $t0
	sw $t0, t1
	lw $t1, v1
	move $t0, $t1
	sw $t0, t13
	lw $t1, t13
	li $t2, 16
	add $t0, $t1, $t2
	sw $t0, t12
	lw $t0, t12
	lw $t1, t1
	sw $t1, 0($t0)
	li $t0, 0
	move $v0, $t0
	jr $ra

cal_avg_bmi:
	li $t0, 0
	sw $t0, v3
	li $t0, 0
	sw $t0, v4
label1:
	lw $t0, v3
	li $t1, 5
	blt $t0, $t1, label2
	j label3
label2:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t16
	lw $t1, t16
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, v3
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t15
	lw $t2, t17
	add $t0, $t1, $t2
	sw $t0, t14
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal cal_bmi
	lw $t0, t18
	move $t0, $v0
	sw $t0, t18
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, v2
	move $t0, $t1
	sw $t0, t23
	lw $t1, t23
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t22
	lw $t1, v3
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t22
	lw $t2, t24
	add $t0, $t1, $t2
	sw $t0, t21
	lw $t1, t21
	li $t2, 16
	add $t0, $t1, $t2
	sw $t0, t20
	lw $t1, t20
	lw $t0, 0($t1)
	sw $t0, t25
	lw $t1, v4
	lw $t2, t25
	add $t0, $t1, $t2
	sw $t0, t19
	lw $t1, t19
	move $t0, $t1
	sw $t0, v4
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t26
	lw $t1, t26
	move $t0, $t1
	sw $t0, v3
	j label1
label3:
	lw $t1, v4
	li $t2, 5
	div $t1, $t2
	mflo $t0
	sw $t0, t27
	lw $t1, v2
	move $t0, $t1
	sw $t0, t29
	lw $t1, t29
	li $t2, 100
	add $t0, $t1, $t2
	sw $t0, t28
	lw $t0, t28
	lw $t1, t27
	sw $t1, 0($t0)
	li $t0, 0
	move $v0, $t0
	jr $ra

main:
	sw $sp, v7
	addi $sp, $sp, -1040
	li $t0, 0
	sw $t0, v5
label7:
	lw $t0, v5
	li $t1, 10
	blt $t0, $t1, label8
	j label9
label8:
	li $t0, 0
	sw $t0, v6
label4:
	lw $t0, v6
	li $t1, 5
	blt $t0, $t1, label5
	j label6
label5:
	lw $t1, v5
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t31
	lw $t1, t31
	lw $t2, v6
	add $t0, $t1, $t2
	sw $t0, t30
	lw $t1, v7
	move $t0, $t1
	sw $t0, t36
	lw $t1, v5
	li $t2, 104
	mul $t0, $t1, $t2
	sw $t0, t37
	lw $t1, t36
	lw $t2, t37
	add $t0, $t1, $t2
	sw $t0, t35
	lw $t1, t35
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t34
	lw $t1, v6
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t38
	lw $t1, t34
	lw $t2, t38
	add $t0, $t1, $t2
	sw $t0, t33
	lw $t1, t33
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t32
	lw $t0, t32
	lw $t1, t30
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t41
	lw $t1, t41
	li $t2, 20
	add $t0, $t1, $t2
	sw $t0, t40
	lw $t1, t40
	lw $t2, v6
	add $t0, $t1, $t2
	sw $t0, t39
	lw $t1, v7
	move $t0, $t1
	sw $t0, t46
	lw $t1, v5
	li $t2, 104
	mul $t0, $t1, $t2
	sw $t0, t47
	lw $t1, t46
	lw $t2, t47
	add $t0, $t1, $t2
	sw $t0, t45
	lw $t1, t45
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t44
	lw $t1, v6
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t48
	lw $t1, t44
	lw $t2, t48
	add $t0, $t1, $t2
	sw $t0, t43
	lw $t1, t43
	li $t2, 4
	add $t0, $t1, $t2
	sw $t0, t42
	lw $t0, t42
	lw $t1, t39
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t51
	lw $t1, t51
	li $t2, 2
	add $t0, $t1, $t2
	sw $t0, t50
	lw $t1, t50
	lw $t2, v6
	add $t0, $t1, $t2
	sw $t0, t49
	lw $t1, v7
	move $t0, $t1
	sw $t0, t56
	lw $t1, v5
	li $t2, 104
	mul $t0, $t1, $t2
	sw $t0, t57
	lw $t1, t56
	lw $t2, t57
	add $t0, $t1, $t2
	sw $t0, t55
	lw $t1, t55
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t54
	lw $t1, v6
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t58
	lw $t1, t54
	lw $t2, t58
	add $t0, $t1, $t2
	sw $t0, t53
	lw $t1, t53
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t52
	lw $t0, t52
	lw $t1, t49
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 2
	div $t1, $t2
	mflo $t0
	sw $t0, t61
	lw $t1, t61
	li $t2, 90
	add $t0, $t1, $t2
	sw $t0, t60
	lw $t1, v6
	lw $t2, v6
	mul $t0, $t1, $t2
	sw $t0, t64
	lw $t1, t64
	lw $t2, v6
	mul $t0, $t1, $t2
	sw $t0, t63
	lw $t1, t63
	lw $t2, v6
	mul $t0, $t1, $t2
	sw $t0, t62
	lw $t1, t60
	lw $t2, t62
	add $t0, $t1, $t2
	sw $t0, t59
	lw $t1, v7
	move $t0, $t1
	sw $t0, t69
	lw $t1, v5
	li $t2, 104
	mul $t0, $t1, $t2
	sw $t0, t70
	lw $t1, t69
	lw $t2, t70
	add $t0, $t1, $t2
	sw $t0, t68
	lw $t1, t68
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t67
	lw $t1, v6
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t71
	lw $t1, t67
	lw $t2, t71
	add $t0, $t1, $t2
	sw $t0, t66
	lw $t1, t66
	li $t2, 12
	add $t0, $t1, $t2
	sw $t0, t65
	lw $t0, t65
	lw $t1, t59
	sw $t1, 0($t0)
	lw $t1, v6
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t72
	lw $t1, t72
	move $t0, $t1
	sw $t0, v6
	j label4
label6:
	lw $t1, v7
	move $t0, $t1
	sw $t0, t74
	lw $t1, v5
	li $t2, 104
	mul $t0, $t1, $t2
	sw $t0, t75
	lw $t1, t74
	lw $t2, t75
	add $t0, $t1, $t2
	sw $t0, t73
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal cal_avg_bmi
	lw $t0, t76
	move $t0, $v0
	sw $t0, t76
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t77
	lw $t1, t77
	move $t0, $t1
	sw $t0, v5
	j label7
label9:
	li $t0, 0
	sw $t0, v5
label10:
	lw $t0, v5
	li $t1, 10
	blt $t0, $t1, label11
	j label12
label11:
	lw $t1, v7
	move $t0, $t1
	sw $t0, t80
	lw $t1, v5
	li $t2, 104
	mul $t0, $t1, $t2
	sw $t0, t81
	lw $t1, t80
	lw $t2, t81
	add $t0, $t1, $t2
	sw $t0, t79
	lw $t1, t79
	li $t2, 100
	add $t0, $t1, $t2
	sw $t0, t78
	lw $t1, t78
	lw $t0, 0($t1)
	sw $t0, t82
	lw $t0, t82
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
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t83
	lw $t1, t83
	move $t0, $t1
	sw $t0, v5
	j label10
label12:
	li $t0, 0
	move $v0, $t0
	jr $ra
