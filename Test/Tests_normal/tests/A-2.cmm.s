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
v12: .word 0
v13: .word 0
v14: .word 0
v15: .word 0
v16: .word 0
t1: .word 0
t2: .word 0
t3: .word 0
t4: .word 0
t5: .word 0
t6: .word 0
t7: .word 0
t8: .word 0
t9: .word 0
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
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t2
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t2
	move $t0, $t1
	sw $t0, v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t3
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t3
	move $t0, $t1
	sw $t0, v7
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t4
	move $t0, $t1
	sw $t0, v3
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t5
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t5
	move $t0, $t1
	sw $t0, v5
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t6
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t6
	move $t0, $t1
	sw $t0, v9
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t7
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t7
	move $t0, $t1
	sw $t0, v15
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t8
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t8
	move $t0, $t1
	sw $t0, v11
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal read
	move $t0, $v0
	sw $t0, t9
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, t9
	move $t0, $t1
	sw $t0, v13
	lw $t0, v1
	lw $t1, v3
	beq $t0, $t1, label19
	j label24
label24:
	lw $t0, v7
	lw $t1, v5
	beq $t0, $t1, label19
	j label23
label23:
	lw $t0, v9
	lw $t1, v11
	beq $t0, $t1, label19
	j label22
label22:
	lw $t0, v15
	lw $t1, v13
	beq $t0, $t1, label19
	j label20
label19:
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, t1
	lw $t0, t1
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
	lw $t0, v1
	lw $t1, v3
	blt $t0, $t1, label1
	j label2
label1:
	lw $t1, v1
	move $t0, $t1
	sw $t0, v2
	lw $t1, v3
	move $t0, $t1
	sw $t0, v4
	j label3
label2:
	lw $t1, v3
	move $t0, $t1
	sw $t0, v2
	lw $t1, v1
	move $t0, $t1
	sw $t0, v4
label3:
	lw $t0, v7
	lw $t1, v5
	blt $t0, $t1, label4
	j label5
label4:
	lw $t1, v5
	move $t0, $t1
	sw $t0, v6
	lw $t1, v7
	move $t0, $t1
	sw $t0, v8
	j label6
label5:
	lw $t1, v7
	move $t0, $t1
	sw $t0, v6
	lw $t1, v5
	move $t0, $t1
	sw $t0, v8
label6:
	lw $t0, v9
	lw $t1, v11
	blt $t0, $t1, label7
	j label8
label7:
	lw $t1, v9
	move $t0, $t1
	sw $t0, v10
	lw $t1, v11
	move $t0, $t1
	sw $t0, v12
	j label9
label8:
	lw $t1, v11
	move $t0, $t1
	sw $t0, v10
	lw $t1, v9
	move $t0, $t1
	sw $t0, v12
label9:
	lw $t0, v15
	lw $t1, v13
	blt $t0, $t1, label10
	j label11
label10:
	lw $t1, v13
	move $t0, $t1
	sw $t0, v14
	lw $t1, v15
	move $t0, $t1
	sw $t0, v16
	j label12
label11:
	lw $t1, v15
	move $t0, $t1
	sw $t0, v14
	lw $t1, v13
	move $t0, $t1
	sw $t0, v16
label12:
	lw $t0, v10
	lw $t1, v4
	bge $t0, $t1, label13
	j label18
label18:
	lw $t0, v12
	lw $t1, v2
	ble $t0, $t1, label13
	j label17
label17:
	lw $t0, v16
	lw $t1, v6
	bge $t0, $t1, label13
	j label16
label16:
	lw $t0, v14
	lw $t1, v8
	ble $t0, $t1, label13
	j label14
label13:
	li $t0, 0
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
	j label15
label14:
	li $t0, 1
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
label15:
label21:
	li $t0, 0
	move $v0, $t0
	jr $ra
