.data
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

lcx_rec:
	addi $sp, $sp, -12
	li $t0, 0
	sw $t0, -12($fp)
label1:
	lw $t0, -12($fp)
	li $t1, 5
	blt $t0, $t1, label2
	j label3
label2:
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -16($fp)
	lw $t1, -12($fp)
	li $t2, 1
	add $t0, $t1, $t2
	sw $t0, -20($fp)
	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -12($fp)
	j label1
label3:
	lw $t0, -12($fp)
	addi $t4, $fp, -8
	move $sp, $t4
	move $v0, $t0
	jr $ra

main:
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	addi $sp, $sp, -4
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_rec
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	move $t0, $v0
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	move $a0, $t0
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	addi $t4, $fp, -8
	move $sp, $t4
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	move $v0, $t0
	jr $ra
