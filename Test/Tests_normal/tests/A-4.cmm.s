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
	addi $sp, $sp, -44
	sw $sp, v2
	li $t0, 11
	sw $t0, v4
	lw $t1, v2
	move $t0, $t1
	sw $t0, t27
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t28
	lw $t1, t27
	lw $t2, t28
	add $t0, $t1, $t2
	sw $t0, t26
	lw $t0, t26
	li $t1, 1
	sw $t1, 0($t0)
	lw $t1, v2
	move $t0, $t1
	sw $t0, t30
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t31
	lw $t1, t30
	lw $t2, t31
	add $t0, $t1, $t2
	sw $t0, t29
	lw $t0, t29
	li $t1, 1
	sw $t1, 0($t0)
	li $t0, 2
	sw $t0, v1
label4:
	lw $t0, v1
	lw $t1, v4
	blt $t0, $t1, label5
	j label6
label5:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t2
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t3
	lw $t1, t2
	lw $t2, t3
	add $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	li $t1, 0
	sw $t1, 0($t0)
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t4
	lw $t1, t4
	move $t0, $t1
	sw $t0, v1
	j label4
label6:
	li $t0, 2
	sw $t0, v1
label7:
	lw $t0, v1
	lw $t1, v4
	blt $t0, $t1, label8
	j label9
label8:
	li $t0, 0
	sw $t0, v3
label1:
	lw $t0, v3
	lw $t1, v1
	blt $t0, $t1, label2
	j label3
label2:
	lw $t1, v2
	move $t0, $t1
	sw $t0, t7
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t8
	lw $t1, t7
	lw $t2, t8
	add $t0, $t1, $t2
	sw $t0, t6
	lw $t1, t6
	lw $t0, 0($t1)
	sw $t0, t9
	lw $t1, v2
	move $t0, $t1
	sw $t0, t12
	lw $t1, v3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t13
	lw $t1, t12
	lw $t2, t13
	add $t0, $t1, $t2
	sw $t0, t11
	lw $t1, t11
	lw $t0, 0($t1)
	sw $t0, t14
	lw $t1, v1
	lw $t2, v3
	sub $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t17
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t16
	lw $t1, v2
	move $t0, $t1
	sw $t0, t18
	lw $t1, t16
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t19
	lw $t1, t18
	lw $t2, t19
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t15
	lw $t0, 0($t1)
	sw $t0, t20
	lw $t1, t14
	lw $t2, t20
	mul $t0, $t1, $t2
	sw $t0, t10
	lw $t1, t9
	lw $t2, t10
	add $t0, $t1, $t2
	sw $t0, t5
	lw $t1, v2
	move $t0, $t1
	sw $t0, t22
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t23
	lw $t1, t22
	lw $t2, t23
	add $t0, $t1, $t2
	sw $t0, t21
	lw $t0, t21
	lw $t1, t5
	sw $t1, 0($t0)
	lw $t1, v3
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t24
	move $t0, $t1
	sw $t0, v3
	j label1
label3:
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t25
	lw $t1, t25
	move $t0, $t1
	sw $t0, v1
	j label7
label9:
	lw $t1, v4
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t33
	lw $t1, v2
	move $t0, $t1
	sw $t0, t34
	lw $t1, t33
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t35
	lw $t1, t34
	lw $t2, t35
	add $t0, $t1, $t2
	sw $t0, t32
	lw $t1, t32
	lw $t0, 0($t1)
	sw $t0, t36
	lw $t0, t36
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
