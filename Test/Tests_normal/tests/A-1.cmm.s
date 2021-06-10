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
	li $t0, 1
	sw $t0, v1
	li $t0, 11
	sw $t0, v2
	li $t0, 39
	sw $t0, v3
	li $t0, 0
	sw $t0, v4
	li $t1, 0
	lw $t2, v1
	sub $t0, $t1, $t2
	sw $t0, t3
	lw $t1, t3
	lw $t2, v3
	add $t0, $t1, $t2
	sw $t0, t2
	li $t1, 17
	lw $t2, v1
	mul $t0, $t1, $t2
	sw $t0, t5
	li $t1, 0
	lw $t2, t5
	sub $t0, $t1, $t2
	sw $t0, t4
	lw $t1, t2
	lw $t2, t4
	add $t0, $t1, $t2
	sw $t0, t1
	lw $t1, t1
	move $t0, $t1
	sw $t0, v1
	lw $t0, v1
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
	li $t1, 11
	lw $t2, v2
	mul $t0, $t1, $t2
	sw $t0, t7
	lw $t1, v1
	lw $t2, v1
	mul $t0, $t1, $t2
	sw $t0, t10
	lw $t1, v3
	lw $t2, t10
	add $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t9
	lw $t2, v1
	mul $t0, $t1, $t2
	sw $t0, t8
	lw $t1, t7
	lw $t2, t8
	sub $t0, $t1, $t2
	sw $t0, t6
	lw $t1, t6
	move $t0, $t1
	sw $t0, v2
	lw $t0, v2
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
	lw $t2, v2
	div $t1, $t2
	mflo $t0
	sw $t0, t13
	lw $t1, v1
	lw $t2, t13
	mul $t0, $t1, $t2
	sw $t0, t12
	lw $t1, t12
	lw $t2, v3
	add $t0, $t1, $t2
	sw $t0, t11
	lw $t1, t11
	move $t0, $t1
	sw $t0, v3
	lw $t0, v3
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
	li $t1, 4
	lw $t2, v1
	mul $t0, $t1, $t2
	sw $t0, t16
	lw $t1, v2
	li $t2, 17
	div $t1, $t2
	mflo $t0
	sw $t0, t17
	lw $t1, t16
	lw $t2, t17
	add $t0, $t1, $t2
	sw $t0, t15
	lw $t1, v1
	lw $t2, v3
	mul $t0, $t1, $t2
	sw $t0, t18
	lw $t1, t15
	lw $t2, t18
	add $t0, $t1, $t2
	sw $t0, t14
	lw $t1, t14
	move $t0, $t1
	sw $t0, v4
	lw $t0, v4
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
