.data
v1: .word 0
v2: .word 0
v3: .word 0
v4: .word 0
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

lcx_cal_bmi:
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

main:
	li $t0, 0
	sw $t0, v2
	li $t0, 10
	sw $t0, v4
	addi $sp, $sp, -200
	sw $sp, v3
label1:
	lw $t0, v2
	lw $t1, v4
	blt $t0, $t1, label2
	j label3
label2:
	lw $t1, v3
	move $t0, $t1
	sw $t0, t16
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t16
	lw $t2, t17
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t15
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t14
	lw $t0, t14
	lw $t1, v2
	sw $t1, 0($t0)
	li $t1, 20
	lw $t2, v2
	add $t0, $t1, $t2
	sw $t0, t18
	lw $t1, v3
	move $t0, $t1
	sw $t0, t21
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t22
	lw $t1, t21
	lw $t2, t22
	add $t0, $t1, $t2
	sw $t0, t20
	lw $t1, t20
	li $t2, 4
	add $t0, $t1, $t2
	sw $t0, t19
	lw $t0, t19
	lw $t1, t18
	sw $t1, 0($t0)
	li $t1, 2
	lw $t2, v2
	add $t0, $t1, $t2
	sw $t0, t23
	lw $t1, v3
	move $t0, $t1
	sw $t0, t26
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t27
	lw $t1, t26
	lw $t2, t27
	add $t0, $t1, $t2
	sw $t0, t25
	lw $t1, t25
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t24
	lw $t0, t24
	lw $t1, t23
	sw $t1, 0($t0)
	lw $t1, v2
	lw $t2, v2
	mul $t0, $t1, $t2
	sw $t0, t31
	lw $t1, t31
	lw $t2, v2
	mul $t0, $t1, $t2
	sw $t0, t30
	lw $t1, t30
	lw $t2, v2
	mul $t0, $t1, $t2
	sw $t0, t29
	li $t1, 90
	lw $t2, t29
	add $t0, $t1, $t2
	sw $t0, t28
	lw $t1, v3
	move $t0, $t1
	sw $t0, t34
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t35
	lw $t1, t34
	lw $t2, t35
	add $t0, $t1, $t2
	sw $t0, t33
	lw $t1, t33
	li $t2, 12
	add $t0, $t1, $t2
	sw $t0, t32
	lw $t0, t32
	lw $t1, t28
	sw $t1, 0($t0)
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t36
	lw $t1, t36
	move $t0, $t1
	sw $t0, v2
	j label1
label3:
	li $t0, 0
	sw $t0, v2
label4:
	lw $t0, v2
	lw $t1, v4
	blt $t0, $t1, label5
	j label6
label5:
	lw $t1, v3
	move $t0, $t1
	sw $t0, t38
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t39
	lw $t1, t38
	lw $t2, t39
	add $t0, $t1, $t2
	sw $t0, t37
	addi $sp, $sp, -80
	lw $t0, t47
	sw $t0, 76($sp)
	lw $t0, t46
	sw $t0, 72($sp)
	lw $t0, t45
	sw $t0, 68($sp)
	lw $t0, t41
	sw $t0, 64($sp)
	lw $t0, t40
	sw $t0, 60($sp)
	lw $t0, t39
	sw $t0, 56($sp)
	lw $t0, t36
	sw $t0, 52($sp)
	lw $t0, t35
	sw $t0, 48($sp)
	lw $t0, t28
	sw $t0, 44($sp)
	lw $t0, t29
	sw $t0, 40($sp)
	lw $t0, t30
	sw $t0, 36($sp)
	lw $t0, t31
	sw $t0, 32($sp)
	lw $t0, t27
	sw $t0, 28($sp)
	lw $t0, t23
	sw $t0, 24($sp)
	lw $t0, t22
	sw $t0, 20($sp)
	lw $t0, t18
	sw $t0, 16($sp)
	lw $t0, t17
	sw $t0, 12($sp)
	lw $t0, v3
	sw $t0, 8($sp)
	lw $t0, v4
	sw $t0, 4($sp)
	lw $t0, v2
	sw $t0, 0($sp)
	lw $t0, v1
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t37
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_cal_bmi
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v1
	lw $t0, 76($sp)
	sw $t0, t47
	lw $t0, 72($sp)
	sw $t0, t46
	lw $t0, 68($sp)
	sw $t0, t45
	lw $t0, 64($sp)
	sw $t0, t41
	lw $t0, 60($sp)
	sw $t0, t40
	lw $t0, 56($sp)
	sw $t0, t39
	lw $t0, 52($sp)
	sw $t0, t36
	lw $t0, 48($sp)
	sw $t0, t35
	lw $t0, 44($sp)
	sw $t0, t28
	lw $t0, 40($sp)
	sw $t0, t29
	lw $t0, 36($sp)
	sw $t0, t30
	lw $t0, 32($sp)
	sw $t0, t31
	lw $t0, 28($sp)
	sw $t0, t27
	lw $t0, 24($sp)
	sw $t0, t23
	lw $t0, 20($sp)
	sw $t0, t22
	lw $t0, 16($sp)
	sw $t0, t18
	lw $t0, 12($sp)
	sw $t0, t17
	lw $t0, 8($sp)
	sw $t0, v3
	lw $t0, 4($sp)
	sw $t0, v4
	lw $t0, 0($sp)
	sw $t0, v2
	addi $sp, $sp, 80
	move $t0, $v0
	sw $t0, t40
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t41
	lw $t1, t41
	move $t0, $t1
	sw $t0, v2
	j label4
label6:
	li $t0, 0
	sw $t0, v2
label7:
	lw $t0, v2
	lw $t1, v4
	blt $t0, $t1, label8
	j label9
label8:
	lw $t1, v3
	move $t0, $t1
	sw $t0, t44
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t45
	lw $t1, t44
	lw $t2, t45
	add $t0, $t1, $t2
	sw $t0, t43
	lw $t1, t43
	li $t2, 16
	add $t0, $t1, $t2
	sw $t0, t42
	lw $t1, t42
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
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t47
	lw $t1, t47
	move $t0, $t1
	sw $t0, v2
	j label7
label9:
	addi $sp, $sp, 200
	li $t0, 0
	move $v0, $t0
	jr $ra
