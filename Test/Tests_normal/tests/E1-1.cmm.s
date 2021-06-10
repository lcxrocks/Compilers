.data
v1: .word 0
v2: .word 0
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
	sw $sp, v1
	addi $sp, $sp, -16
	li $t0, 0
	sw $t0, v2
	lw $t1, v1
	move $t0, $t1
	sw $t0, t2
	lw $t1, t2
	li $t2, 0
	add $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	li $t1, 0
	sw $t1, 0($t0)
	lw $t1, v1
	move $t0, $t1
	sw $t0, t4
	lw $t1, t4
	li $t2, 4
	add $t0, $t1, $t2
	sw $t0, t3
	lw $t0, t3
	li $t1, 20
	sw $t1, 0($t0)
	lw $t1, v1
	move $t0, $t1
	sw $t0, t6
	lw $t1, t6
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t5
	lw $t0, t5
	li $t1, 2
	sw $t1, 0($t0)
	lw $t1, v1
	move $t0, $t1
	sw $t0, t8
	lw $t1, t8
	li $t2, 12
	add $t0, $t1, $t2
	sw $t0, t7
	lw $t0, t7
	li $t1, 90
	sw $t1, 0($t0)
	lw $t1, v1
	move $t0, $t1
	sw $t0, t11
	lw $t1, t11
	li $t2, 12
	add $t0, $t1, $t2
	sw $t0, t10
	lw $t1, t10
	lw $t0, 0($t1)
	sw $t0, t12
	lw $t1, v1
	move $t0, $t1
	sw $t0, t15
	lw $t1, t15
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t14
	lw $t1, t14
	lw $t0, 0($t1)
	sw $t0, t16
	lw $t1, v1
	move $t0, $t1
	sw $t0, t18
	lw $t1, t18
	li $t2, 8
	add $t0, $t1, $t2
	sw $t0, t17
	lw $t1, t17
	lw $t0, 0($t1)
	sw $t0, t19
	lw $t1, t16
	lw $t2, t19
	mul $t0, $t1, $t2
	sw $t0, t13
	lw $t1, t12
	lw $t2, t13
	div $t1, $t2
	mflo $t0
	sw $t0, t9
	lw $t1, t9
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
	li $t0, 0
	move $v0, $t0
	jr $ra
