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
	li $t0, 0
	sw $t0, v1
	li $t0, 5
	sw $t0, v2
	lw $t1, v2
	lw $t2, v2
	mul $t0, $t1, $t2
	sw $t0, t2
	lw $t1, v2
	li $t2, 2
	add $t0, $t1, $t2
	sw $t0, t3
	lw $t1, t2
	lw $t2, t3
	mul $t0, $t1, $t2
	sw $t0, t1
	lw $t1, t1
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
	lw $t1, v3
	lw $t2, v2
	div $t1, $t2
	mflo $t0
	sw $t0, t5
	lw $t1, t5
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t4
	lw $t1, t4
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
	lw $t1, v2
	lw $t2, v3
	add $t0, $t1, $t2
	sw $t0, t8
	lw $t1, v4
	li $t2, 3
	mul $t0, $t1, $t2
	sw $t0, t9
	lw $t1, t8
	lw $t2, t9
	sub $t0, $t1, $t2
	sw $t0, t7
	lw $t1, v3
	lw $t2, v2
	div $t1, $t2
	mflo $t0
	sw $t0, t11
	lw $t1, t11
	li $t2, 4
	sub $t0, $t1, $t2
	sw $t0, t10
	lw $t1, t7
	lw $t2, t10
	add $t0, $t1, $t2
	sw $t0, t6
	lw $t1, t6
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
	li $t0, 0
	move $v0, $t0
	jr $ra