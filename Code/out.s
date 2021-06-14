.data
v1: .word 0
v2: .word 0
t1: .word 0
t2: .word 0
t3: .word 0
t4: .word 0
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

lcx_recursive:
	li $t0, 0
	sw $t0, v2
	lw $t0, v1
	li $t1, 1
	blt $t0, $t1, label1
	j label2
label1:
	li $t0, 0
	move $v0, $t0
	jr $ra
	j label3
label2:
	lw $t1, v1
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t1
	addi $sp, $sp, -20
	lw $t0, t3
	sw $t0, 16($sp)
	lw $t0, t2
	sw $t0, 12($sp)
	lw $t0, t1
	sw $t0, 8($sp)
	lw $t0, v2
	sw $t0, 4($sp)
	lw $t0, v1
	sw $t0, 0($sp)
	lw $t0, v1
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	lw $t0, t1
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_recursive
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v1
	lw $t0, 16($sp)
	sw $t0, t3
	lw $t0, 12($sp)
	sw $t0, t2
	lw $t0, 8($sp)
	sw $t0, t1
	lw $t0, 4($sp)
	sw $t0, v2
	lw $t0, 0($sp)
	sw $t0, v1
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, t2
label3:
	lw $t1, v1
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, t3
	lw $t1, t3
	move $t0, $t1
	sw $t0, v2
	lw $t0, v2
	move $v0, $t0
	jr $ra

main:
	addi $sp, $sp, -4
	lw $t0, t4
	sw $t0, 0($sp)
	lw $t0, v1
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	li $t0, 5
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal lcx_recursive
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	sw $t0, v1
	lw $t0, 0($sp)
	sw $t0, t4
	addi $sp, $sp, 4
	move $t0, $v0
	sw $t0, t4
	lw $t0, t4
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
