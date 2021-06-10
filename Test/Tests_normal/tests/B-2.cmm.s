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
	li $t0, 3
	sw $t0, v8
	sw $sp, v3
	addi $sp, $sp, -12
	li $t0, 100
	sw $t0, v4
	sw $sp, v5
	addi $sp, $sp, -404
	li $t0, 1
	sw $t0, v1
	li $t0, 0
	sw $t0, v2
	li $t0, 0
	sw $t0, v6
label8:
	lw $t0, v2
	lw $t1, v8
	blt $t0, $t1, label9
	j label10
label9:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t1
	lw $t1, v3
	move $t0, $t1
	sw $t0, t3
	lw $t1, v2
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
	lw $t1, v3
	move $t0, $t1
	sw $t0, t6
	lw $t1, v2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t7
	lw $t1, t6
	lw $t2, t7
	add $t0, $t1, $t2
	sw $t0, t5
	lw $t1, t5
	lw $t0, 0($t1)
	sw $t0, t8
	lw $t0, t8
	li $t1, 0
	ble $t0, $t1, label1
	j label2
label1:
	li $t0, 0
	sw $t0, v1
label2:
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t9
	move $t0, $t1
	sw $t0, v2
	j label8
label10:
	lw $t0, v1
	li $t1, 0
	beq $t0, $t1, label11
	j label12
label11:
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t10
	lw $t0, t10
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
label12:
	lw $t1, v5
	move $t0, $t1
	sw $t0, t48
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t49
	lw $t1, t48
	lw $t2, t49
	add $t0, $t1, $t2
	sw $t0, t47
	lw $t0, t47
	li $t1, 0
	sw $t1, 0($t0)
	li $t0, 1
	sw $t0, v2
label13:
	lw $t1, v4
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t50
	lw $t0, v2
	lw $t1, t50
	blt $t0, $t1, label14
	j label15
label14:
	lw $t1, v4
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t11
	lw $t1, v5
	move $t0, $t1
	sw $t0, t13
	lw $t1, v2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t14
	lw $t1, t13
	lw $t2, t14
	add $t0, $t1, $t2
	sw $t0, t12
	lw $t0, t12
	lw $t1, t11
	sw $t1, 0($t0)
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t15
	move $t0, $t1
	sw $t0, v2
	j label13
label15:
	li $t0, 0
	sw $t0, v2
label16:
	lw $t0, v2
	lw $t1, v8
	blt $t0, $t1, label17
	j label18
label17:
	lw $t1, v3
	move $t0, $t1
	sw $t0, t37
	lw $t1, v2
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
	lw $t1, t39
	move $t0, $t1
	sw $t0, v7
	lw $t1, v7
	move $t0, $t1
	sw $t0, v6
label5:
	lw $t1, v4
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t40
	lw $t0, v6
	lw $t1, t40
	blt $t0, $t1, label6
	j label7
label6:
	lw $t1, v6
	lw $t2, v7
	sub $t0, $t1, $t2
	sw $t0, t27
	lw $t1, v5
	move $t0, $t1
	sw $t0, t28
	lw $t1, t27
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t29
	lw $t1, t28
	lw $t2, t29
	add $t0, $t1, $t2
	sw $t0, t26
	lw $t1, t26
	lw $t0, 0($t1)
	sw $t0, t30
	lw $t1, t30
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t25
	lw $t1, v5
	move $t0, $t1
	sw $t0, t32
	lw $t1, v6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t33
	lw $t1, t32
	lw $t2, t33
	add $t0, $t1, $t2
	sw $t0, t31
	lw $t1, t31
	lw $t0, 0($t1)
	sw $t0, t34
	lw $t0, t25
	lw $t1, t34
	blt $t0, $t1, label3
	j label4
label3:
	lw $t1, v6
	lw $t2, v7
	sub $t0, $t1, $t2
	sw $t0, t18
	lw $t1, v5
	move $t0, $t1
	sw $t0, t19
	lw $t1, t18
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t20
	lw $t1, t19
	lw $t2, t20
	add $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t17
	lw $t0, 0($t1)
	sw $t0, t21
	lw $t1, t21
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t16
	lw $t1, v5
	move $t0, $t1
	sw $t0, t23
	lw $t1, v6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t23
	lw $t2, t24
	add $t0, $t1, $t2
	sw $t0, t22
	lw $t0, t22
	lw $t1, t16
	sw $t1, 0($t0)
label4:
	lw $t1, v6
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t35
	lw $t1, t35
	move $t0, $t1
	sw $t0, v6
	j label5
label7:
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t41
	lw $t1, t41
	move $t0, $t1
	sw $t0, v2
	j label16
label18:
	lw $t1, v5
	move $t0, $t1
	sw $t0, t52
	lw $t1, v4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t53
	lw $t1, t52
	lw $t2, t53
	add $t0, $t1, $t2
	sw $t0, t51
	lw $t1, t51
	lw $t0, 0($t1)
	sw $t0, t54
	lw $t0, t54
	lw $t1, v4
	bgt $t0, $t1, label19
	j label20
label19:
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t42
	lw $t0, t42
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
	j label21
label20:
	lw $t1, v5
	move $t0, $t1
	sw $t0, t44
	lw $t1, v4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t45
	lw $t1, t44
	lw $t2, t45
	add $t0, $t1, $t2
	sw $t0, t43
	lw $t1, t43
	lw $t0, 0($t1)
	sw $t0, t46
	lw $t0, t46
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
label21:
	li $t0, 0
	move $v0, $t0
	jr $ra
