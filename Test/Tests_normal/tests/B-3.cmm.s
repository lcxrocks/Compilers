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
t89: .word 0
t90: .word 0
t91: .word 0
t92: .word 0
t93: .word 0
t94: .word 0
t95: .word 0
t96: .word 0
t97: .word 0
t98: .word 0
t99: .word 0
t100: .word 0
t101: .word 0
t102: .word 0
t103: .word 0
t104: .word 0
t105: .word 0
t106: .word 0
t107: .word 0
t108: .word 0
t109: .word 0
t110: .word 0
t111: .word 0
t112: .word 0
t113: .word 0
t114: .word 0
t115: .word 0
t116: .word 0
t117: .word 0
t118: .word 0
t119: .word 0
t120: .word 0
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

main:
	li $t0, 5
	sw $t0, v11
	sw $sp, v2
	addi $sp, $sp, -20
	sw $sp, v4
	addi $sp, $sp, -20
	li $t0, 0
	sw $t0, v1
label39:
	lw $t0, v1
	lw $t1, v11
	blt $t0, $t1, label40
	j label41
label40:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t1
	lw $t1, v2
	move $t0, $t1
	sw $t0, t3
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t4
	lw $t1, t3
	lw $t2, t4
	add $t0, $t1, $t2
	sw $t0, t2
	lw $t0, t2
	lw $t1, t1
	sw $t1, 0($t0)
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t5
	lw $t1, t5
	move $t0, $t1
	sw $t0, v1
	j label39
label41:
	li $t0, 1
	sw $t0, v7
label42:
	lw $t0, v7
	lw $t1, v11
	blt $t0, $t1, label43
	j label44
label43:
	li $t0, 0
	sw $t0, v1
label30:
	li $t1, 2
	lw $t2, v7
	mul $t0, $t1, $t2
	sw $t0, t113
	lw $t1, v11
	lw $t2, t113
	sub $t0, $t1, $t2
	sw $t0, t112
	lw $t0, v1
	lw $t1, t112
	ble $t0, $t1, label31
	j label32
label31:
	lw $t1, v1
	move $t0, $t1
	sw $t0, v6
	lw $t1, v6
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t49
	lw $t1, t49
	move $t0, $t1
	sw $t0, v8
	lw $t1, v6
	move $t0, $t1
	sw $t0, v3
	lw $t1, v8
	move $t0, $t1
	sw $t0, v9
	lw $t1, v9
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t50
	lw $t1, t50
	move $t0, $t1
	sw $t0, v10
	lw $t1, v9
	move $t0, $t1
	sw $t0, v5
label4:
	lw $t0, v3
	lw $t1, v8
	blt $t0, $t1, label7
	j label6
label7:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label5
	j label6
label5:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t23
	lw $t1, v3
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
	lw $t1, v2
	move $t0, $t1
	sw $t0, t27
	lw $t1, v5
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
	lw $t0, t25
	lw $t1, t29
	blt $t0, $t1, label1
	j label2
label1:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t7
	lw $t1, v3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t8
	lw $t1, t7
	lw $t2, t8
	add $t0, $t1, $t2
	sw $t0, t6
	lw $t1, v4
	move $t0, $t1
	sw $t0, t10
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t11
	lw $t1, t10
	lw $t2, t11
	add $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t6
	lw $t0, 0($t1)
	sw $t0, t12
	lw $t0, t9
	lw $t1, t12
	sw $t1, 0($t0)
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t13
	lw $t1, t13
	move $t0, $t1
	sw $t0, v3
	j label3
label2:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t15
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t16
	lw $t1, t15
	lw $t2, t16
	add $t0, $t1, $t2
	sw $t0, t14
	lw $t1, v4
	move $t0, $t1
	sw $t0, t18
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t19
	lw $t1, t18
	lw $t2, t19
	add $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t14
	lw $t0, 0($t1)
	sw $t0, t20
	lw $t0, t17
	lw $t1, t20
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t21
	lw $t1, t21
	move $t0, $t1
	sw $t0, v5
label3:
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t30
	lw $t1, t30
	move $t0, $t1
	sw $t0, v1
	j label4
label6:
label8:
	lw $t0, v3
	lw $t1, v8
	blt $t0, $t1, label9
	j label10
label9:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t32
	lw $t1, v3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t33
	lw $t1, t32
	lw $t2, t33
	add $t0, $t1, $t2
	sw $t0, t31
	lw $t1, v4
	move $t0, $t1
	sw $t0, t35
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t36
	lw $t1, t35
	lw $t2, t36
	add $t0, $t1, $t2
	sw $t0, t34
	lw $t1, t31
	lw $t0, 0($t1)
	sw $t0, t37
	lw $t0, t34
	lw $t1, t37
	sw $t1, 0($t0)
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t38
	lw $t1, t38
	move $t0, $t1
	sw $t0, v3
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t39
	lw $t1, t39
	move $t0, $t1
	sw $t0, v1
	j label8
label10:
label11:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label12
	j label13
label12:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t41
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t42
	lw $t1, t41
	lw $t2, t42
	add $t0, $t1, $t2
	sw $t0, t40
	lw $t1, v4
	move $t0, $t1
	sw $t0, t44
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t45
	lw $t1, t44
	lw $t2, t45
	add $t0, $t1, $t2
	sw $t0, t43
	lw $t1, t40
	lw $t0, 0($t1)
	sw $t0, t46
	lw $t0, t43
	lw $t1, t46
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t47
	lw $t1, t47
	move $t0, $t1
	sw $t0, v5
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t48
	lw $t1, t48
	move $t0, $t1
	sw $t0, v1
	j label11
label13:
	j label30
label32:
	lw $t1, v1
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t114
	lw $t0, t114
	lw $t1, v11
	blt $t0, $t1, label33
	j label34
label33:
	lw $t1, v1
	move $t0, $t1
	sw $t0, v6
	lw $t1, v6
	lw $t2, v7
	add $t0, $t1, $t2
	sw $t0, t95
	lw $t1, t95
	move $t0, $t1
	sw $t0, v8
	lw $t1, v6
	move $t0, $t1
	sw $t0, v3
	lw $t1, v8
	move $t0, $t1
	sw $t0, v9
	lw $t1, v11
	move $t0, $t1
	sw $t0, v10
	lw $t1, v9
	move $t0, $t1
	sw $t0, v5
label17:
	lw $t0, v3
	lw $t1, v8
	blt $t0, $t1, label20
	j label19
label20:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label18
	j label19
label18:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t70
	lw $t1, v3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t71
	lw $t1, t70
	lw $t2, t71
	add $t0, $t1, $t2
	sw $t0, t69
	lw $t1, t69
	lw $t0, 0($t1)
	sw $t0, t72
	lw $t1, v2
	move $t0, $t1
	sw $t0, t74
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t75
	lw $t1, t74
	lw $t2, t75
	add $t0, $t1, $t2
	sw $t0, t73
	lw $t1, t73
	lw $t0, 0($t1)
	sw $t0, t76
	lw $t0, t72
	lw $t1, t76
	blt $t0, $t1, label14
	j label15
label14:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t52
	lw $t1, v3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t53
	lw $t1, t52
	lw $t2, t53
	add $t0, $t1, $t2
	sw $t0, t51
	lw $t1, v4
	move $t0, $t1
	sw $t0, t55
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t56
	lw $t1, t55
	lw $t2, t56
	add $t0, $t1, $t2
	sw $t0, t54
	lw $t1, t51
	lw $t0, 0($t1)
	sw $t0, t57
	lw $t0, t54
	lw $t1, t57
	sw $t1, 0($t0)
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t58
	lw $t1, t58
	move $t0, $t1
	sw $t0, v3
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t59
	lw $t1, t59
	move $t0, $t1
	sw $t0, v1
	j label16
label15:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t61
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t62
	lw $t1, t61
	lw $t2, t62
	add $t0, $t1, $t2
	sw $t0, t60
	lw $t1, v4
	move $t0, $t1
	sw $t0, t64
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t65
	lw $t1, t64
	lw $t2, t65
	add $t0, $t1, $t2
	sw $t0, t63
	lw $t1, t60
	lw $t0, 0($t1)
	sw $t0, t66
	lw $t0, t63
	lw $t1, t66
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t67
	lw $t1, t67
	move $t0, $t1
	sw $t0, v5
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t68
	lw $t1, t68
	move $t0, $t1
	sw $t0, v1
label16:
	j label17
label19:
label21:
	lw $t0, v3
	lw $t1, v8
	blt $t0, $t1, label22
	j label23
label22:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t78
	lw $t1, v3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t79
	lw $t1, t78
	lw $t2, t79
	add $t0, $t1, $t2
	sw $t0, t77
	lw $t1, v4
	move $t0, $t1
	sw $t0, t81
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t82
	lw $t1, t81
	lw $t2, t82
	add $t0, $t1, $t2
	sw $t0, t80
	lw $t1, t77
	lw $t0, 0($t1)
	sw $t0, t83
	lw $t0, t80
	lw $t1, t83
	sw $t1, 0($t0)
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t84
	lw $t1, t84
	move $t0, $t1
	sw $t0, v3
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t85
	lw $t1, t85
	move $t0, $t1
	sw $t0, v1
	j label21
label23:
label24:
	lw $t0, v5
	lw $t1, v10
	blt $t0, $t1, label25
	j label26
label25:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t87
	lw $t1, v5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t88
	lw $t1, t87
	lw $t2, t88
	add $t0, $t1, $t2
	sw $t0, t86
	lw $t1, v4
	move $t0, $t1
	sw $t0, t90
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t91
	lw $t1, t90
	lw $t2, t91
	add $t0, $t1, $t2
	sw $t0, t89
	lw $t1, t86
	lw $t0, 0($t1)
	sw $t0, t92
	lw $t0, t89
	lw $t1, t92
	sw $t1, 0($t0)
	lw $t1, v5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t93
	lw $t1, t93
	move $t0, $t1
	sw $t0, v5
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t94
	lw $t1, t94
	move $t0, $t1
	sw $t0, v1
	j label24
label26:
	j label35
label34:
label27:
	lw $t0, v1
	lw $t1, v11
	blt $t0, $t1, label28
	j label29
label28:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t97
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t98
	lw $t1, t97
	lw $t2, t98
	add $t0, $t1, $t2
	sw $t0, t96
	lw $t1, v4
	move $t0, $t1
	sw $t0, t100
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t101
	lw $t1, t100
	lw $t2, t101
	add $t0, $t1, $t2
	sw $t0, t99
	lw $t1, t96
	lw $t0, 0($t1)
	sw $t0, t102
	lw $t0, t99
	lw $t1, t102
	sw $t1, 0($t0)
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t103
	lw $t1, t103
	move $t0, $t1
	sw $t0, v1
	j label27
label29:
label35:
	li $t0, 0
	sw $t0, v1
label36:
	lw $t0, v1
	lw $t1, v11
	blt $t0, $t1, label37
	j label38
label37:
	lw $t1, v4
	move $t0, $t1
	sw $t0, t105
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t106
	lw $t1, t105
	lw $t2, t106
	add $t0, $t1, $t2
	sw $t0, t104
	lw $t1, v2
	move $t0, $t1
	sw $t0, t108
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t109
	lw $t1, t108
	lw $t2, t109
	add $t0, $t1, $t2
	sw $t0, t107
	lw $t1, t104
	lw $t0, 0($t1)
	sw $t0, t110
	lw $t0, t107
	lw $t1, t110
	sw $t1, 0($t0)
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t111
	lw $t1, t111
	move $t0, $t1
	sw $t0, v1
	j label36
label38:
	lw $t1, v7
	li $t2, 2
	mul $t0, $t1, $t2
	sw $t0, t115
	lw $t1, t115
	move $t0, $t1
	sw $t0, v7
	j label42
label44:
	li $t0, 0
	sw $t0, v1
label45:
	lw $t0, v1
	lw $t1, v11
	blt $t0, $t1, label46
	j label47
label46:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t117
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t118
	lw $t1, t117
	lw $t2, t118
	add $t0, $t1, $t2
	sw $t0, t116
	lw $t1, t116
	lw $t0, 0($t1)
	sw $t0, t119
	lw $t0, t119
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
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t120
	lw $t1, t120
	move $t0, $t1
	sw $t0, v1
	j label45
label47:
	li $t0, 0
	move $v0, $t0
	jr $ra