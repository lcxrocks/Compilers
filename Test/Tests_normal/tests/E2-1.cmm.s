.data
v1: .word 0
v2: .word 0
v3: .word 0
v4: .word 0
v5: .word 0
v6: .word 0
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
	sw $t0, v4
	addi $sp, $sp, -100
	sw $sp, v3
	addi $sp, $sp, -100
	sw $sp, v6
	li $t0, 0
	sw $t0, v1
label7:
	lw $t0, v1
	lw $t1, v4
	blt $t0, $t1, label8
	j label9
label8:
	li $t0, 0
	sw $t0, v2
label1:
	lw $t0, v2
	lw $t1, v4
	blt $t0, $t1, label2
	j label3
label2:
	lw $t1, v1
	lw $t2, v1
	mul $t0, $t1, $t2
	sw $t0, t2
	lw $t1, t2
	lw $t2, v2
	add $t0, $t1, $t2
	sw $t0, t1
	lw $t1, v3
	move $t0, $t1
	sw $t0, t5
	lw $t1, v1
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t6
	lw $t1, t5
	lw $t2, t6
	add $t0, $t1, $t2
	sw $t0, t4
	lw $t1, v2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t7
	lw $t1, t4
	lw $t2, t7
	add $t0, $t1, $t2
	sw $t0, t3
	lw $t0, t3
	lw $t1, t1
	sw $t1, 0($t0)
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t8
	lw $t1, t8
	move $t0, $t1
	sw $t0, v2
	j label1
label3:
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t9
	move $t0, $t1
	sw $t0, v1
	j label7
label9:
	li $t0, 0
	sw $t0, v1
label10:
	lw $t0, v1
	lw $t1, v4
	blt $t0, $t1, label11
	j label12
label11:
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
	sw $t0, t12
	lw $t1, v1
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t13
	lw $t1, t12
	lw $t2, t13
	add $t0, $t1, $t2
	sw $t0, t11
	lw $t1, v2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t14
	lw $t1, t11
	lw $t2, t14
	add $t0, $t1, $t2
	sw $t0, t10
	lw $t1, v3
	move $t0, $t1
	sw $t0, t17
	lw $t1, v2
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t18
	lw $t1, t17
	lw $t2, t18
	add $t0, $t1, $t2
	sw $t0, t16
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t19
	lw $t1, t16
	lw $t2, t19
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, t10
	lw $t0, 0($t1)
	sw $t0, t20
	lw $t0, t15
	lw $t1, t20
	sw $t1, 0($t0)
	lw $t1, v2
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t21
	lw $t1, t21
	move $t0, $t1
	sw $t0, v2
	j label4
label6:
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t22
	lw $t1, t22
	move $t0, $t1
	sw $t0, v1
	j label10
label12:
	li $t0, 0
	sw $t0, v5
	li $t0, 0
	sw $t0, v1
label13:
	lw $t0, v1
	lw $t1, v4
	blt $t0, $t1, label14
	j label15
label14:
	lw $t1, v3
	move $t0, $t1
	sw $t0, t26
	li $t1, 0
	li $t2, 20
	mul $t0, $t1, $t2
	sw $t0, t27
	lw $t1, t26
	lw $t2, t27
	add $t0, $t1, $t2
	sw $t0, t25
	lw $t1, v1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, t28
	lw $t1, t25
	lw $t2, t28
	add $t0, $t1, $t2
	sw $t0, t24
	lw $t1, t24
	lw $t0, 0($t1)
	sw $t0, t29
	lw $t1, v5
	lw $t2, t29
	add $t0, $t1, $t2
	sw $t0, t23
	lw $t1, t23
	move $t0, $t1
	sw $t0, v5
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t30
	lw $t1, t30
	move $t0, $t1
	sw $t0, v1
	j label13
label15:
	lw $t0, v5
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
