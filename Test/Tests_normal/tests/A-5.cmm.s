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

add:
	lw $t1, v1
	lw $t2, v2
	add $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
	move $v0, $t0
	jr $ra

sub:
	lw $t1, v3
	lw $t2, v4
	sub $t0, $t1, $t2
	sw $t0, t2
	lw $t0, t2
	move $v0, $t0
	jr $ra

mul:
	lw $t1, v5
	lw $t2, v6
	mul $t0, $t1, $t2
	sw $t0, t3
	lw $t0, t3
	move $v0, $t0
	jr $ra

main:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t4
	lw $t1, t4
	move $t0, $t1
	sw $t0, v7
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t5
	lw $t1, t5
	move $t0, $t1
	sw $t0, v8
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t6
	lw $t1, t6
	move $t0, $t1
	sw $t0, v9
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t7
	lw $t1, t7
	move $t0, $t1
	sw $t0, v10
	lw $t0, v8
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v7
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal sub
	lw $t0, t10
	move $t0, $v0
	sw $t0, t10
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v7
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v8
	lw $t0, t11
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t10
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal sub
	lw $t0, t11
	move $t0, $v0
	sw $t0, t11
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t10
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t11
	lw $t0, v10
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, v9
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal mul
	lw $t0, t9
	move $t0, $v0
	sw $t0, t9
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v9
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v10
	lw $t0, t12
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t9
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal add
	lw $t0, t12
	move $t0, $v0
	sw $t0, t12
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t9
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, t12
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal add
	lw $t0, t8
	move $t0, $v0
	sw $t0, t8
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t8
	move $t0, $t1
	sw $t0, v11
	lw $t0, v11
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
