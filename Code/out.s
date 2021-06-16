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

lcx_id_TL928:
	addi $sp, $sp, -60
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	li $t1, 0
	bgt $t0, $t1, label10
	j label11
label10:
	li $t0, 1
	sw $t0, -28($fp)
label11:
	lw $t0, -28($fp)
	li $t1, 0
	bne $t0, $t1, label9
	j label7
label9:
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -16($fp)
	li $t1, 0
	bgt $t0, $t1, label12
	j label13
label12:
	li $t0, 1
	sw $t0, -32($fp)
label13:
	lw $t0, -32($fp)
	li $t1, 0
	bne $t0, $t1, label8
	j label7
label8:
	li $t0, 0
	sw $t0, -36($fp)
	li $t1, 2147483647
	lw $t2, -16($fp)
	sub $t0, $t1, $t2
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	lw $t1, -40($fp)
	bgt $t0, $t1, label14
	j label15
label14:
	li $t0, 1
	sw $t0, -36($fp)
label15:
	lw $t0, -36($fp)
	li $t1, 0
	bne $t0, $t1, label6
	j label7
label6:
	li $t0, 1
	sw $t0, -24($fp)
label7:
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label3
	j label5
label5:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	li $t1, 0
	blt $t0, $t1, label20
	j label21
label20:
	li $t0, 1
	sw $t0, -48($fp)
label21:
	lw $t0, -48($fp)
	li $t1, 0
	bne $t0, $t1, label19
	j label17
label19:
	li $t0, 0
	sw $t0, -52($fp)
	lw $t0, -16($fp)
	li $t1, 0
	blt $t0, $t1, label22
	j label23
label22:
	li $t0, 1
	sw $t0, -52($fp)
label23:
	lw $t0, -52($fp)
	li $t1, 0
	bne $t0, $t1, label18
	j label17
label18:
	li $t0, 0
	sw $t0, -56($fp)
	li $t1, 0
	li $t2, -2147483648
	sub $t0, $t1, $t2
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	lw $t2, -16($fp)
	sub $t0, $t1, $t2
	sw $t0, -64($fp)
	lw $t0, -12($fp)
	lw $t1, -64($fp)
	blt $t0, $t1, label24
	j label25
label24:
	li $t0, 1
	sw $t0, -56($fp)
label25:
	lw $t0, -56($fp)
	li $t1, 0
	bne $t0, $t1, label16
	j label17
label16:
	li $t0, 1
	sw $t0, -44($fp)
label17:
	lw $t0, -44($fp)
	li $t1, 0
	bne $t0, $t1, label3
	j label4
label3:
	li $t0, 1
	sw $t0, -20($fp)
label4:
	lw $t0, -20($fp)
	li $t1, 0
	bne $t0, $t1, label1
	j label2
label1:
	lw $t0, -12($fp)
	addi $sp, $sp, 60
	move $v0, $t0
	jr $ra
label2:
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	add $t0, $t1, $t2
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, 60
	move $v0, $t0
	jr $ra

lcx_id_upvaXtN:
	addi $sp, $sp, -56
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	li $t1, 0
	bgt $t0, $t1, label33
	j label34
label33:
	li $t0, 1
	sw $t0, -24($fp)
label34:
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label32
	j label30
label32:
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -16($fp)
	li $t1, 0
	blt $t0, $t1, label35
	j label36
label35:
	li $t0, 1
	sw $t0, -28($fp)
label36:
	lw $t0, -28($fp)
	li $t1, 0
	bne $t0, $t1, label31
	j label30
label31:
	li $t0, 0
	sw $t0, -32($fp)
	li $t1, 2147483647
	lw $t2, -16($fp)
	add $t0, $t1, $t2
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	lw $t1, -36($fp)
	bgt $t0, $t1, label37
	j label38
label37:
	li $t0, 1
	sw $t0, -32($fp)
label38:
	lw $t0, -32($fp)
	li $t1, 0
	bne $t0, $t1, label29
	j label30
label29:
	li $t0, 1
	sw $t0, -20($fp)
label30:
	lw $t0, -20($fp)
	li $t1, 0
	bne $t0, $t1, label26
	j label28
label28:
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	li $t1, 0
	blt $t0, $t1, label43
	j label44
label43:
	li $t0, 1
	sw $t0, -44($fp)
label44:
	lw $t0, -44($fp)
	li $t1, 0
	bne $t0, $t1, label42
	j label40
label42:
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -16($fp)
	li $t1, 0
	bgt $t0, $t1, label45
	j label46
label45:
	li $t0, 1
	sw $t0, -48($fp)
label46:
	lw $t0, -48($fp)
	li $t1, 0
	bne $t0, $t1, label41
	j label40
label41:
	li $t0, 0
	sw $t0, -52($fp)
	li $t1, 0
	li $t2, -2147483648
	sub $t0, $t1, $t2
	sw $t0, -56($fp)
	lw $t1, -56($fp)
	lw $t2, -16($fp)
	add $t0, $t1, $t2
	sw $t0, -60($fp)
	lw $t0, -12($fp)
	lw $t1, -60($fp)
	blt $t0, $t1, label47
	j label48
label47:
	li $t0, 1
	sw $t0, -52($fp)
label48:
	lw $t0, -52($fp)
	li $t1, 0
	bne $t0, $t1, label39
	j label40
label39:
	li $t0, 1
	sw $t0, -40($fp)
label40:
	lw $t0, -40($fp)
	li $t1, 0
	bne $t0, $t1, label26
	j label27
label26:
	lw $t0, -12($fp)
	addi $sp, $sp, 56
	move $v0, $t0
	jr $ra
label27:
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	sub $t0, $t1, $t2
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, 56
	move $v0, $t0
	jr $ra

lcx_id_Vtza2M:
	addi $sp, $sp, -108
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	li $t1, 0
	bgt $t0, $t1, label60
	j label61
label60:
	li $t0, 1
	sw $t0, -28($fp)
label61:
	lw $t0, -28($fp)
	li $t1, 0
	bne $t0, $t1, label59
	j label57
label59:
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -16($fp)
	li $t1, 0
	bgt $t0, $t1, label62
	j label63
label62:
	li $t0, 1
	sw $t0, -32($fp)
label63:
	lw $t0, -32($fp)
	li $t1, 0
	bne $t0, $t1, label58
	j label57
label58:
	li $t0, 0
	sw $t0, -36($fp)
	li $t1, 2147483647
	lw $t2, -16($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	lw $t1, -40($fp)
	bgt $t0, $t1, label64
	j label65
label64:
	li $t0, 1
	sw $t0, -36($fp)
label65:
	lw $t0, -36($fp)
	li $t1, 0
	bne $t0, $t1, label56
	j label57
label56:
	li $t0, 1
	sw $t0, -24($fp)
label57:
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label51
	j label55
label55:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	li $t1, 0
	bgt $t0, $t1, label70
	j label71
label70:
	li $t0, 1
	sw $t0, -48($fp)
label71:
	lw $t0, -48($fp)
	li $t1, 0
	bne $t0, $t1, label69
	j label67
label69:
	li $t0, 0
	sw $t0, -52($fp)
	lw $t0, -16($fp)
	li $t1, 0
	ble $t0, $t1, label72
	j label73
label72:
	li $t0, 1
	sw $t0, -52($fp)
label73:
	lw $t0, -52($fp)
	li $t1, 0
	bne $t0, $t1, label68
	j label67
label68:
	li $t0, 0
	sw $t0, -56($fp)
	li $t1, 0
	li $t2, -2147483648
	sub $t0, $t1, $t2
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	lw $t2, -12($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -64($fp)
	lw $t0, -16($fp)
	lw $t1, -64($fp)
	blt $t0, $t1, label74
	j label75
label74:
	li $t0, 1
	sw $t0, -56($fp)
label75:
	lw $t0, -56($fp)
	li $t1, 0
	bne $t0, $t1, label66
	j label67
label66:
	li $t0, 1
	sw $t0, -44($fp)
label67:
	lw $t0, -44($fp)
	li $t1, 0
	bne $t0, $t1, label51
	j label54
label54:
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, -12($fp)
	li $t1, 0
	ble $t0, $t1, label80
	j label81
label80:
	li $t0, 1
	sw $t0, -72($fp)
label81:
	lw $t0, -72($fp)
	li $t1, 0
	bne $t0, $t1, label79
	j label77
label79:
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, -16($fp)
	li $t1, 0
	bgt $t0, $t1, label82
	j label83
label82:
	li $t0, 1
	sw $t0, -76($fp)
label83:
	lw $t0, -76($fp)
	li $t1, 0
	bne $t0, $t1, label78
	j label77
label78:
	li $t0, 0
	sw $t0, -80($fp)
	li $t1, 0
	li $t2, -2147483648
	sub $t0, $t1, $t2
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	lw $t2, -16($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -88($fp)
	lw $t0, -12($fp)
	lw $t1, -88($fp)
	blt $t0, $t1, label84
	j label85
label84:
	li $t0, 1
	sw $t0, -80($fp)
label85:
	lw $t0, -80($fp)
	li $t1, 0
	bne $t0, $t1, label76
	j label77
label76:
	li $t0, 1
	sw $t0, -68($fp)
label77:
	lw $t0, -68($fp)
	li $t1, 0
	bne $t0, $t1, label51
	j label53
label53:
	li $t0, 0
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	lw $t0, -12($fp)
	li $t1, 0
	ble $t0, $t1, label91
	j label92
label91:
	li $t0, 1
	sw $t0, -96($fp)
label92:
	lw $t0, -96($fp)
	li $t1, 0
	bne $t0, $t1, label90
	j label87
label90:
	li $t0, 0
	sw $t0, -100($fp)
	lw $t0, -16($fp)
	li $t1, 0
	ble $t0, $t1, label93
	j label94
label93:
	li $t0, 1
	sw $t0, -100($fp)
label94:
	lw $t0, -100($fp)
	li $t1, 0
	bne $t0, $t1, label89
	j label87
label89:
	li $t0, 0
	sw $t0, -104($fp)
	lw $t0, -12($fp)
	li $t1, 0
	bne $t0, $t1, label95
	j label96
label95:
	li $t0, 1
	sw $t0, -104($fp)
label96:
	lw $t0, -104($fp)
	li $t1, 0
	bne $t0, $t1, label88
	j label87
label88:
	li $t0, 0
	sw $t0, -108($fp)
	li $t1, 2147483647
	lw $t2, -12($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -112($fp)
	lw $t0, -16($fp)
	lw $t1, -112($fp)
	blt $t0, $t1, label97
	j label98
label97:
	li $t0, 1
	sw $t0, -108($fp)
label98:
	lw $t0, -108($fp)
	li $t1, 0
	bne $t0, $t1, label86
	j label87
label86:
	li $t0, 1
	sw $t0, -92($fp)
label87:
	lw $t0, -92($fp)
	li $t1, 0
	bne $t0, $t1, label51
	j label52
label51:
	li $t0, 1
	sw $t0, -20($fp)
label52:
	lw $t0, -20($fp)
	li $t1, 0
	bne $t0, $t1, label49
	j label50
label49:
	lw $t0, -12($fp)
	addi $sp, $sp, 108
	move $v0, $t0
	jr $ra
label50:
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	mul $t0, $t1, $t2
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	addi $sp, $sp, 108
	move $v0, $t0
	jr $ra

lcx_id_mU9mo:
	addi $sp, $sp, -40
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -16($fp)
	li $t1, 0
	beq $t0, $t1, label104
	j label105
label104:
	li $t0, 1
	sw $t0, -24($fp)
label105:
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label101
	j label103
label103:
	li $t0, 0
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t1, 0
	li $t2, -2147483648
	sub $t0, $t1, $t2
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	lw $t1, -36($fp)
	beq $t0, $t1, label109
	j label110
label109:
	li $t0, 1
	sw $t0, -32($fp)
label110:
	lw $t0, -32($fp)
	li $t1, 0
	bne $t0, $t1, label108
	j label107
label108:
	li $t0, 0
	sw $t0, -40($fp)
	li $t1, 0
	li $t2, 1
	sub $t0, $t1, $t2
	sw $t0, -44($fp)
	lw $t0, -16($fp)
	lw $t1, -44($fp)
	beq $t0, $t1, label111
	j label112
label111:
	li $t0, 1
	sw $t0, -40($fp)
label112:
	lw $t0, -40($fp)
	li $t1, 0
	bne $t0, $t1, label106
	j label107
label106:
	li $t0, 1
	sw $t0, -28($fp)
label107:
	lw $t0, -28($fp)
	li $t1, 0
	bne $t0, $t1, label101
	j label102
label101:
	li $t0, 1
	sw $t0, -20($fp)
label102:
	lw $t0, -20($fp)
	li $t1, 0
	bne $t0, $t1, label99
	j label100
label99:
	lw $t0, -12($fp)
	addi $sp, $sp, 40
	move $v0, $t0
	jr $ra
label100:
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	addi $sp, $sp, 40
	move $v0, $t0
	jr $ra

lcx_id_n:
	addi $sp, $sp, -8
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	li $t1, 0
	blt $t0, $t1, label113
	j label115
label115:
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	bge $t0, $t1, label113
	j label114
label113:
	li $t0, 0
	addi $sp, $sp, 8
	move $v0, $t0
	jr $ra
label114:
	lw $t0, -12($fp)
	addi $sp, $sp, 8
	move $v0, $t0
	jr $ra

lcx_id_O7:
	addi $sp, $sp, -880
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	lw $t0, 12($fp)
	sw $t0, -24($fp)
	lw $t0, 16($fp)
	sw $t0, -28($fp)
	addi $sp, $sp, -32
	move $t0, $sp
	sw $t0, -32($fp)
	addi $sp, $sp, -4
	move $t0, $sp
	sw $t0, -36($fp)
	addi $sp, $sp, -16
	move $t0, $sp
	sw $t0, -40($fp)
	addi $sp, $sp, -28
	move $t0, $sp
	sw $t0, -44($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -48($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -52($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	add $t0, $t1, $t2
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	li $t1, 31194
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -60($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -64($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	add $t0, $t1, $t2
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	li $t1, 12091
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -72($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -76($fp)
	lw $t1, -72($fp)
	lw $t2, -76($fp)
	add $t0, $t1, $t2
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	li $t1, 45407
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -84($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -88($fp)
	lw $t1, -84($fp)
	lw $t2, -88($fp)
	add $t0, $t1, $t2
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	li $t1, 33714
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -96($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -100($fp)
	lw $t1, -96($fp)
	lw $t2, -100($fp)
	add $t0, $t1, $t2
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	li $t1, 50053
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -108($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -112($fp)
	lw $t1, -108($fp)
	lw $t2, -112($fp)
	add $t0, $t1, $t2
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	li $t1, 14380
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -120($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -124($fp)
	lw $t1, -120($fp)
	lw $t2, -124($fp)
	add $t0, $t1, $t2
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	li $t1, 46295
	sw $t1, 0($t0)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -132($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -136($fp)
	lw $t1, -132($fp)
	lw $t2, -136($fp)
	add $t0, $t1, $t2
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	li $t1, 17928
	sw $t1, 0($t0)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -144($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -148($fp)
	lw $t1, -144($fp)
	lw $t2, -148($fp)
	add $t0, $t1, $t2
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	li $t1, 44723
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -156($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -160($fp)
	lw $t1, -156($fp)
	lw $t2, -160($fp)
	add $t0, $t1, $t2
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	li $t1, 60260
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -168($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -172($fp)
	lw $t1, -168($fp)
	lw $t2, -172($fp)
	add $t0, $t1, $t2
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	li $t1, 27072
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -180($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -184($fp)
	lw $t1, -180($fp)
	lw $t2, -184($fp)
	add $t0, $t1, $t2
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	li $t1, 37762
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -192($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	add $t0, $t1, $t2
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	li $t1, 57356
	sw $t1, 0($t0)
	li $t0, 61629
	sw $t0, -204($fp)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -208($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -212($fp)
	lw $t1, -208($fp)
	lw $t2, -212($fp)
	add $t0, $t1, $t2
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	li $t1, 1638
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -220($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -224($fp)
	lw $t1, -220($fp)
	lw $t2, -224($fp)
	add $t0, $t1, $t2
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	li $t1, 42787
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -232($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -236($fp)
	lw $t1, -232($fp)
	lw $t2, -236($fp)
	add $t0, $t1, $t2
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	li $t1, 30329
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -244($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -248($fp)
	lw $t1, -244($fp)
	lw $t2, -248($fp)
	add $t0, $t1, $t2
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	li $t1, 49287
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -256($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -260($fp)
	lw $t1, -256($fp)
	lw $t2, -260($fp)
	add $t0, $t1, $t2
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	li $t1, 14358
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -268($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -272($fp)
	lw $t1, -268($fp)
	lw $t2, -272($fp)
	add $t0, $t1, $t2
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	li $t1, 15121
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -280($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -284($fp)
	lw $t1, -280($fp)
	lw $t2, -284($fp)
	add $t0, $t1, $t2
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	li $t1, 8263
	sw $t1, 0($t0)
	li $t0, 17503
	sw $t0, -292($fp)
	li $t0, 48737
	sw $t0, -296($fp)
	li $t0, 62755
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	lw $t0, -204($fp)
	li $t1, 2682
	bne $t0, $t1, label120
	j label121
label120:
	li $t0, 1
	sw $t0, -308($fp)
label121:
	lw $t0, -308($fp)
	li $t1, 742
	bne $t0, $t1, label118
	j label119
label118:
	li $t0, 1
	sw $t0, -304($fp)
label119:
	li $t1, 0
	li $t2, 45547
	sub $t0, $t1, $t2
	sw $t0, -312($fp)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -316($fp)
	lw $t1, -16($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -320($fp)
	lw $t1, -316($fp)
	lw $t2, -320($fp)
	add $t0, $t1, $t2
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	lw $t0, 0($t1)
	sw $t0, -328($fp)
	lw $t1, -328($fp)
	lw $t2, -292($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -332($fp)
	li $t1, 0
	lw $t2, -28($fp)
	sub $t0, $t1, $t2
	sw $t0, -336($fp)
	li $t1, 0
	lw $t2, -336($fp)
	sub $t0, $t1, $t2
	sw $t0, -340($fp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -344($fp)
	li $t1, 0
	lw $t2, -344($fp)
	sub $t0, $t1, $t2
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	li $t1, 0
	bne $t0, $t1, label117
	j label116
label116:
label117:
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -352($fp)
	lw $t1, -28($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -356($fp)
	lw $t1, -352($fp)
	lw $t2, -356($fp)
	add $t0, $t1, $t2
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	li $t1, 0
	lw $t2, -204($fp)
	sub $t0, $t1, $t2
	sw $t0, -368($fp)
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 26189
	li $t1, 0
	bne $t0, $t1, label130
	j label128
label130:
	li $t0, 62687
	li $t1, 0
	bne $t0, $t1, label129
	j label128
label129:
	lw $t0, -16($fp)
	li $t1, 0
	bne $t0, $t1, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -372($fp)
label128:
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -20($fp)
	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 0
	sw $t0, -384($fp)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -388($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -392($fp)
	lw $t1, -388($fp)
	lw $t2, -392($fp)
	add $t0, $t1, $t2
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	lw $t0, 0($t1)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	li $t1, 0
	bne $t0, $t1, label135
	j label134
label135:
	lw $t0, -12($fp)
	li $t1, 0
	bne $t0, $t1, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -384($fp)
label134:
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -404($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -408($fp)
	lw $t1, -404($fp)
	lw $t2, -408($fp)
	add $t0, $t1, $t2
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	lw $t0, 0($t1)
	sw $t0, -416($fp)
	li $t1, 0
	lw $t2, -416($fp)
	sub $t0, $t1, $t2
	sw $t0, -420($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -424($fp)
	lw $t1, -24($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -428($fp)
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	add $t0, $t1, $t2
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	lw $t0, 0($t1)
	sw $t0, -436($fp)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -440($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -444($fp)
	lw $t1, -440($fp)
	lw $t2, -444($fp)
	add $t0, $t1, $t2
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	lw $t0, 0($t1)
	sw $t0, -452($fp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	li $t1, 64785
	bne $t0, $t1, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -380($fp)
label132:
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	lw $t1, -296($fp)
	lw $t2, -24($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	li $t1, 0
	bne $t0, $t1, label141
	j label140
label141:
	li $t0, 42820
	li $t1, 0
	bne $t0, $t1, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -464($fp)
label140:
	li $t1, 17178
	li $t2, 38323
	div $t1, $t2
	mflo $t0
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	lw $t2, -12($fp)
	sub $t0, $t1, $t2
	sw $t0, -476($fp)
	li $t0, 0
	sw $t0, -480($fp)
	li $t0, 37544
	li $t1, 0
	bne $t0, $t1, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -480($fp)
label143:
	lw $t1, -480($fp)
	lw $t2, -16($fp)
	add $t0, $t1, $t2
	sw $t0, -484($fp)
	lw $t1, -292($fp)
	li $t2, 44250
	div $t1, $t2
	mflo $t0
	sw $t0, -488($fp)
	lw $t1, -488($fp)
	lw $t2, -24($fp)
	sub $t0, $t1, $t2
	sw $t0, -492($fp)
	li $t1, 10549
	li $t2, 29364
	add $t0, $t1, $t2
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 40344
	sub $t0, $t1, $t2
	sw $t0, -500($fp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -504($fp)
	li $t0, 0
	sw $t0, -508($fp)
	lw $t0, -24($fp)
	li $t1, 12188
	blt $t0, $t1, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -508($fp)
label145:
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, -24($fp)
	li $t1, 6615
	ble $t0, $t1, label148
	j label147
label148:
	li $t0, 5137
	li $t1, 0
	bne $t0, $t1, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -512($fp)
label147:
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 59136
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	li $t1, 0
	bne $t0, $t1, label138
	j label137
label138:
	li $t0, 61475
	li $t1, 0
	bne $t0, $t1, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -460($fp)
label137:
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	li $t1, 0
	bne $t0, $t1, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -364($fp)
label126:
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -524($fp)
label150:
	lw $t1, -364($fp)
	lw $t2, -524($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	li $t1, 0
	bne $t0, $t1, label124
	j label123
label124:
	li $t0, 0
	sw $t0, -532($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -536($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -540($fp)
	lw $t1, -536($fp)
	lw $t2, -540($fp)
	add $t0, $t1, $t2
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	lw $t0, 0($t1)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	li $t1, 0
	bne $t0, $t1, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -532($fp)
label152:
	lw $t1, -532($fp)
	lw $t2, -292($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	li $t1, 0
	bne $t0, $t1, label122
	j label123
label122:
label123:
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -556($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -560($fp)
	lw $t1, -556($fp)
	lw $t2, -560($fp)
	add $t0, $t1, $t2
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	lw $t0, 0($t1)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -572($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -576($fp)
	lw $t1, -572($fp)
	lw $t2, -576($fp)
	add $t0, $t1, $t2
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	lw $t0, 0($t1)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -588($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	add $t0, $t1, $t2
	sw $t0, -596($fp)
	lw $t1, -596($fp)
	lw $t0, 0($t1)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -604($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -608($fp)
	lw $t1, -604($fp)
	lw $t2, -608($fp)
	add $t0, $t1, $t2
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	lw $t0, 0($t1)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -620($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -624($fp)
	lw $t1, -620($fp)
	lw $t2, -624($fp)
	add $t0, $t1, $t2
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	lw $t0, 0($t1)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -636($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -640($fp)
	lw $t1, -636($fp)
	lw $t2, -640($fp)
	add $t0, $t1, $t2
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	lw $t0, 0($t1)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -652($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -656($fp)
	lw $t1, -652($fp)
	lw $t2, -656($fp)
	add $t0, $t1, $t2
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	lw $t0, 0($t1)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -668($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -672($fp)
	lw $t1, -668($fp)
	lw $t2, -672($fp)
	add $t0, $t1, $t2
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	lw $t0, 0($t1)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -684($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -688($fp)
	lw $t1, -684($fp)
	lw $t2, -688($fp)
	add $t0, $t1, $t2
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	lw $t0, 0($t1)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -700($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -704($fp)
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	add $t0, $t1, $t2
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	lw $t0, 0($t1)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -716($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -720($fp)
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	add $t0, $t1, $t2
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	lw $t0, 0($t1)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -732($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -736($fp)
	lw $t1, -732($fp)
	lw $t2, -736($fp)
	add $t0, $t1, $t2
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	lw $t0, 0($t1)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -748($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -752($fp)
	lw $t1, -748($fp)
	lw $t2, -752($fp)
	add $t0, $t1, $t2
	sw $t0, -756($fp)
	lw $t1, -756($fp)
	lw $t0, 0($t1)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -764($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -768($fp)
	lw $t1, -764($fp)
	lw $t2, -768($fp)
	add $t0, $t1, $t2
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	lw $t0, 0($t1)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -780($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -784($fp)
	lw $t1, -780($fp)
	lw $t2, -784($fp)
	add $t0, $t1, $t2
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	lw $t0, 0($t1)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -796($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	add $t0, $t1, $t2
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	lw $t0, 0($t1)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -812($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	add $t0, $t1, $t2
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	lw $t0, 0($t1)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -828($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	add $t0, $t1, $t2
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	lw $t0, 0($t1)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -844($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -848($fp)
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	add $t0, $t1, $t2
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	lw $t0, 0($t1)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -860($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -864($fp)
	lw $t1, -860($fp)
	lw $t2, -864($fp)
	add $t0, $t1, $t2
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	lw $t0, 0($t1)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -876($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -880($fp)
	lw $t1, -876($fp)
	lw $t2, -880($fp)
	add $t0, $t1, $t2
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	lw $t0, 0($t1)
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	move $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, 960
	move $v0, $t0
	jr $ra

lcx_id_jTyF:
	addi $sp, $sp, -6748
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	addi $sp, $sp, -16
	move $t0, $sp
	sw $t0, -24($fp)
	addi $sp, $sp, -20
	move $t0, $sp
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	move $t0, $sp
	sw $t0, -32($fp)
	addi $sp, $sp, -12
	move $t0, $sp
	sw $t0, -36($fp)
	addi $sp, $sp, -12
	move $t0, $sp
	sw $t0, -40($fp)
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -44($fp)
	addi $sp, $sp, -28
	move $t0, $sp
	sw $t0, -48($fp)
	addi $sp, $sp, -8
	move $t0, $sp
	sw $t0, -52($fp)
	addi $sp, $sp, -20
	move $t0, $sp
	sw $t0, -56($fp)
	li $t0, 3459
	sw $t0, -60($fp)
	li $t0, 1421
	sw $t0, -64($fp)
	li $t0, 41159
	sw $t0, -68($fp)
	li $t0, 4202
	sw $t0, -72($fp)
	li $t0, 46969
	sw $t0, -76($fp)
	li $t0, 1812
	sw $t0, -80($fp)
	li $t0, 1353
	sw $t0, -84($fp)
	li $t0, 49609
	sw $t0, -88($fp)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -92($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -96($fp)
	lw $t1, -92($fp)
	lw $t2, -96($fp)
	add $t0, $t1, $t2
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	li $t1, 1161
	sw $t1, 0($t0)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -104($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -108($fp)
	lw $t1, -104($fp)
	lw $t2, -108($fp)
	add $t0, $t1, $t2
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	li $t1, 29699
	sw $t1, 0($t0)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -116($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -120($fp)
	lw $t1, -116($fp)
	lw $t2, -120($fp)
	add $t0, $t1, $t2
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	li $t1, 64341
	sw $t1, 0($t0)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -128($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -132($fp)
	lw $t1, -128($fp)
	lw $t2, -132($fp)
	add $t0, $t1, $t2
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	li $t1, 45916
	sw $t1, 0($t0)
	li $t0, 26224
	sw $t0, -140($fp)
	li $t0, 63591
	sw $t0, -144($fp)
	li $t0, 39516
	sw $t0, -148($fp)
	li $t0, 3508
	sw $t0, -152($fp)
	li $t0, 15233
	sw $t0, -156($fp)
	li $t0, 12304
	sw $t0, -160($fp)
	li $t0, 41052
	sw $t0, -164($fp)
	li $t0, 59483
	sw $t0, -168($fp)
	li $t0, 22853
	sw $t0, -172($fp)
	li $t0, 4880
	sw $t0, -176($fp)
	li $t0, 34291
	sw $t0, -180($fp)
	li $t0, 35041
	sw $t0, -184($fp)
	li $t0, 11495
	sw $t0, -188($fp)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -192($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	add $t0, $t1, $t2
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	li $t1, 39428
	sw $t1, 0($t0)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -204($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -208($fp)
	lw $t1, -204($fp)
	lw $t2, -208($fp)
	add $t0, $t1, $t2
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	li $t1, 30980
	sw $t1, 0($t0)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -216($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	add $t0, $t1, $t2
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	li $t1, 32469
	sw $t1, 0($t0)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -228($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -232($fp)
	lw $t1, -228($fp)
	lw $t2, -232($fp)
	add $t0, $t1, $t2
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	li $t1, 59687
	sw $t1, 0($t0)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -240($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -244($fp)
	lw $t1, -240($fp)
	lw $t2, -244($fp)
	add $t0, $t1, $t2
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	li $t1, 35182
	sw $t1, 0($t0)
	li $t0, 5411
	sw $t0, -252($fp)
	li $t0, 63146
	sw $t0, -256($fp)
	li $t0, 36604
	sw $t0, -260($fp)
	li $t0, 46570
	sw $t0, -264($fp)
	li $t0, 1812
	sw $t0, -268($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -272($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -276($fp)
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	add $t0, $t1, $t2
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	li $t1, 18037
	sw $t1, 0($t0)
	li $t0, 48383
	sw $t0, -284($fp)
	li $t0, 3166
	sw $t0, -288($fp)
	li $t0, 2110
	sw $t0, -292($fp)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -296($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	add $t0, $t1, $t2
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	li $t1, 49544
	sw $t1, 0($t0)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -308($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -312($fp)
	lw $t1, -308($fp)
	lw $t2, -312($fp)
	add $t0, $t1, $t2
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	li $t1, 32865
	sw $t1, 0($t0)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -320($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	add $t0, $t1, $t2
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	li $t1, 916
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -332($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -336($fp)
	lw $t1, -332($fp)
	lw $t2, -336($fp)
	add $t0, $t1, $t2
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	li $t1, 29924
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -344($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -348($fp)
	lw $t1, -344($fp)
	lw $t2, -348($fp)
	add $t0, $t1, $t2
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	li $t1, 59089
	sw $t1, 0($t0)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -356($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -360($fp)
	lw $t1, -356($fp)
	lw $t2, -360($fp)
	add $t0, $t1, $t2
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	li $t1, 64507
	sw $t1, 0($t0)
	li $t0, 3905
	sw $t0, -368($fp)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -372($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -376($fp)
	lw $t1, -372($fp)
	lw $t2, -376($fp)
	add $t0, $t1, $t2
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	li $t1, 62597
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -384($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -388($fp)
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	add $t0, $t1, $t2
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	li $t1, 14204
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -396($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -400($fp)
	lw $t1, -396($fp)
	lw $t2, -400($fp)
	add $t0, $t1, $t2
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	li $t1, 16209
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -408($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -412($fp)
	lw $t1, -408($fp)
	lw $t2, -412($fp)
	add $t0, $t1, $t2
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	li $t1, 38113
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -420($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -424($fp)
	lw $t1, -420($fp)
	lw $t2, -424($fp)
	add $t0, $t1, $t2
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	li $t1, 8151
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -432($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -436($fp)
	lw $t1, -432($fp)
	lw $t2, -436($fp)
	add $t0, $t1, $t2
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	li $t1, 39062
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -444($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -448($fp)
	lw $t1, -444($fp)
	lw $t2, -448($fp)
	add $t0, $t1, $t2
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	li $t1, 42993
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -456($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -460($fp)
	lw $t1, -456($fp)
	lw $t2, -460($fp)
	add $t0, $t1, $t2
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	li $t1, 42443
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -468($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -472($fp)
	lw $t1, -468($fp)
	lw $t2, -472($fp)
	add $t0, $t1, $t2
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	li $t1, 8568
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -480($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -484($fp)
	lw $t1, -480($fp)
	lw $t2, -484($fp)
	add $t0, $t1, $t2
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	li $t1, 54489
	sw $t1, 0($t0)
	li $t0, 16335
	sw $t0, -492($fp)
	li $t0, 39548
	sw $t0, -496($fp)
	li $t0, 21422
	sw $t0, -500($fp)
	li $t0, 10486
	sw $t0, -504($fp)
	li $t0, 9195
	sw $t0, -508($fp)
	li $t0, 26833
	sw $t0, -512($fp)
	li $t0, 8097
	sw $t0, -516($fp)
	li $t0, 45799
	sw $t0, -520($fp)
	li $t0, 7868
	sw $t0, -524($fp)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -528($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -532($fp)
	lw $t1, -528($fp)
	lw $t2, -532($fp)
	add $t0, $t1, $t2
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	li $t1, 9909
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -540($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	add $t0, $t1, $t2
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	li $t1, 63836
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -552($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -556($fp)
	lw $t1, -552($fp)
	lw $t2, -556($fp)
	add $t0, $t1, $t2
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	li $t1, 56251
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -564($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -568($fp)
	lw $t1, -564($fp)
	lw $t2, -568($fp)
	add $t0, $t1, $t2
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	li $t1, 13075
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -576($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -580($fp)
	lw $t1, -576($fp)
	lw $t2, -580($fp)
	add $t0, $t1, $t2
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	li $t1, 410
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -588($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	add $t0, $t1, $t2
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	li $t1, 40259
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -600($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	add $t0, $t1, $t2
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	li $t1, 45941
	sw $t1, 0($t0)
	li $t0, 1326
	sw $t0, -612($fp)
	li $t0, 4647
	sw $t0, -616($fp)
	li $t0, 39494
	sw $t0, -620($fp)
	li $t0, 297
	sw $t0, -624($fp)
	li $t0, 8552
	sw $t0, -628($fp)
	li $t0, 36556
	sw $t0, -632($fp)
	li $t0, 14501
	sw $t0, -636($fp)
	li $t0, 24761
	sw $t0, -640($fp)
	li $t0, 9133
	sw $t0, -644($fp)
	li $t0, 22653
	sw $t0, -648($fp)
	li $t0, 63824
	sw $t0, -652($fp)
	li $t0, 52127
	sw $t0, -656($fp)
	li $t0, 65096
	sw $t0, -660($fp)
	li $t0, 6856
	sw $t0, -664($fp)
	li $t0, 41080
	sw $t0, -668($fp)
	li $t0, 15895
	sw $t0, -672($fp)
	li $t0, 46404
	sw $t0, -676($fp)
	lw $t1, -52($fp)
	move $t0, $t1
	sw $t0, -680($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -684($fp)
	lw $t1, -680($fp)
	lw $t2, -684($fp)
	add $t0, $t1, $t2
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	li $t1, 62502
	sw $t1, 0($t0)
	lw $t1, -52($fp)
	move $t0, $t1
	sw $t0, -692($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -696($fp)
	lw $t1, -692($fp)
	lw $t2, -696($fp)
	add $t0, $t1, $t2
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	li $t1, 26382
	sw $t1, 0($t0)
	li $t0, 55599
	sw $t0, -704($fp)
	li $t0, 23800
	sw $t0, -708($fp)
	li $t0, 34479
	sw $t0, -712($fp)
	li $t0, 35862
	sw $t0, -716($fp)
	li $t0, 31668
	sw $t0, -720($fp)
	li $t0, 44388
	sw $t0, -724($fp)
	li $t0, 34162
	sw $t0, -728($fp)
	li $t0, 22383
	sw $t0, -732($fp)
	li $t0, 57464
	sw $t0, -736($fp)
	li $t0, 34573
	sw $t0, -740($fp)
	li $t0, 62642
	sw $t0, -744($fp)
	li $t0, 37869
	sw $t0, -748($fp)
	li $t0, 35899
	sw $t0, -752($fp)
	li $t0, 1753
	sw $t0, -756($fp)
	li $t0, 11827
	sw $t0, -760($fp)
	li $t0, 36197
	sw $t0, -764($fp)
	li $t0, 10306
	sw $t0, -768($fp)
	li $t0, 48383
	sw $t0, -772($fp)
	li $t0, 50698
	sw $t0, -776($fp)
	li $t0, 35067
	sw $t0, -780($fp)
	li $t0, 57517
	sw $t0, -784($fp)
	li $t0, 7815
	sw $t0, -788($fp)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -792($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -796($fp)
	lw $t1, -792($fp)
	lw $t2, -796($fp)
	add $t0, $t1, $t2
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	li $t1, 33355
	sw $t1, 0($t0)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -804($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -808($fp)
	lw $t1, -804($fp)
	lw $t2, -808($fp)
	add $t0, $t1, $t2
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	li $t1, 44108
	sw $t1, 0($t0)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -816($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -820($fp)
	lw $t1, -816($fp)
	lw $t2, -820($fp)
	add $t0, $t1, $t2
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	li $t1, 7375
	sw $t1, 0($t0)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -828($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	add $t0, $t1, $t2
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	li $t1, 40211
	sw $t1, 0($t0)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -840($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -844($fp)
	lw $t1, -840($fp)
	lw $t2, -844($fp)
	add $t0, $t1, $t2
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	li $t1, 19652
	sw $t1, 0($t0)
	li $t0, 23271
	sw $t0, -852($fp)
	addi $sp, $sp, -28
	move $t0, $sp
	sw $t0, -856($fp)
	addi $sp, $sp, -12
	move $t0, $sp
	sw $t0, -860($fp)
	addi $sp, $sp, -16
	move $t0, $sp
	sw $t0, -864($fp)
	addi $sp, $sp, -24
	move $t0, $sp
	sw $t0, -868($fp)
	addi $sp, $sp, -28
	move $t0, $sp
	sw $t0, -872($fp)
	li $t0, 21080
	sw $t0, -876($fp)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -880($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -884($fp)
	lw $t1, -880($fp)
	lw $t2, -884($fp)
	add $t0, $t1, $t2
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	li $t1, 16618
	sw $t1, 0($t0)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -892($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -896($fp)
	lw $t1, -892($fp)
	lw $t2, -896($fp)
	add $t0, $t1, $t2
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	li $t1, 49653
	sw $t1, 0($t0)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -904($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -908($fp)
	lw $t1, -904($fp)
	lw $t2, -908($fp)
	add $t0, $t1, $t2
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	li $t1, 11143
	sw $t1, 0($t0)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -916($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -920($fp)
	lw $t1, -916($fp)
	lw $t2, -920($fp)
	add $t0, $t1, $t2
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	li $t1, 40418
	sw $t1, 0($t0)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -928($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -932($fp)
	lw $t1, -928($fp)
	lw $t2, -932($fp)
	add $t0, $t1, $t2
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	li $t1, 18596
	sw $t1, 0($t0)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -940($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -944($fp)
	lw $t1, -940($fp)
	lw $t2, -944($fp)
	add $t0, $t1, $t2
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	li $t1, 47006
	sw $t1, 0($t0)
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -952($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -956($fp)
	lw $t1, -952($fp)
	lw $t2, -956($fp)
	add $t0, $t1, $t2
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	li $t1, 6550
	sw $t1, 0($t0)
	li $t0, 62984
	sw $t0, -964($fp)
	li $t0, 15632
	sw $t0, -968($fp)
	li $t0, 28933
	sw $t0, -972($fp)
	li $t0, 54912
	sw $t0, -976($fp)
	li $t0, 50205
	sw $t0, -980($fp)
	li $t0, 26039
	sw $t0, -984($fp)
	li $t0, 27245
	sw $t0, -988($fp)
	li $t0, 20569
	sw $t0, -992($fp)
	li $t0, 27793
	sw $t0, -996($fp)
	li $t0, 39073
	sw $t0, -1000($fp)
	li $t0, 56766
	sw $t0, -1004($fp)
	li $t0, 38099
	sw $t0, -1008($fp)
	lw $t1, -860($fp)
	move $t0, $t1
	sw $t0, -1012($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1016($fp)
	lw $t1, -1012($fp)
	lw $t2, -1016($fp)
	add $t0, $t1, $t2
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	li $t1, 21920
	sw $t1, 0($t0)
	lw $t1, -860($fp)
	move $t0, $t1
	sw $t0, -1024($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1028($fp)
	lw $t1, -1024($fp)
	lw $t2, -1028($fp)
	add $t0, $t1, $t2
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	li $t1, 41928
	sw $t1, 0($t0)
	lw $t1, -860($fp)
	move $t0, $t1
	sw $t0, -1036($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1040($fp)
	lw $t1, -1036($fp)
	lw $t2, -1040($fp)
	add $t0, $t1, $t2
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	li $t1, 7630
	sw $t1, 0($t0)
	li $t0, 13901
	sw $t0, -1048($fp)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1052($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1056($fp)
	lw $t1, -1052($fp)
	lw $t2, -1056($fp)
	add $t0, $t1, $t2
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	li $t1, 49744
	sw $t1, 0($t0)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1064($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1068($fp)
	lw $t1, -1064($fp)
	lw $t2, -1068($fp)
	add $t0, $t1, $t2
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	li $t1, 40986
	sw $t1, 0($t0)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1076($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1080($fp)
	lw $t1, -1076($fp)
	lw $t2, -1080($fp)
	add $t0, $t1, $t2
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	li $t1, 58009
	sw $t1, 0($t0)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1088($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1092($fp)
	lw $t1, -1088($fp)
	lw $t2, -1092($fp)
	add $t0, $t1, $t2
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	li $t1, 57119
	sw $t1, 0($t0)
	li $t0, 15661
	sw $t0, -1100($fp)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -1104($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1108($fp)
	lw $t1, -1104($fp)
	lw $t2, -1108($fp)
	add $t0, $t1, $t2
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	li $t1, 12125
	sw $t1, 0($t0)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -1116($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1120($fp)
	lw $t1, -1116($fp)
	lw $t2, -1120($fp)
	add $t0, $t1, $t2
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	li $t1, 14854
	sw $t1, 0($t0)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -1128($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	add $t0, $t1, $t2
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	li $t1, 36741
	sw $t1, 0($t0)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -1140($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1144($fp)
	lw $t1, -1140($fp)
	lw $t2, -1144($fp)
	add $t0, $t1, $t2
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	li $t1, 28744
	sw $t1, 0($t0)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -1152($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1156($fp)
	lw $t1, -1152($fp)
	lw $t2, -1156($fp)
	add $t0, $t1, $t2
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	li $t1, 64507
	sw $t1, 0($t0)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -1164($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1168($fp)
	lw $t1, -1164($fp)
	lw $t2, -1168($fp)
	add $t0, $t1, $t2
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	li $t1, 47885
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1176($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1180($fp)
	lw $t1, -1176($fp)
	lw $t2, -1180($fp)
	add $t0, $t1, $t2
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	li $t1, 3626
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1188($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1192($fp)
	lw $t1, -1188($fp)
	lw $t2, -1192($fp)
	add $t0, $t1, $t2
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	li $t1, 17567
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1200($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1204($fp)
	lw $t1, -1200($fp)
	lw $t2, -1204($fp)
	add $t0, $t1, $t2
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	li $t1, 29355
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1212($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1216($fp)
	lw $t1, -1212($fp)
	lw $t2, -1216($fp)
	add $t0, $t1, $t2
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	li $t1, 10177
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1224($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1228($fp)
	lw $t1, -1224($fp)
	lw $t2, -1228($fp)
	add $t0, $t1, $t2
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	li $t1, 15016
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1236($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1240($fp)
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	add $t0, $t1, $t2
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	li $t1, 44987
	sw $t1, 0($t0)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -1248($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1252($fp)
	lw $t1, -1248($fp)
	lw $t2, -1252($fp)
	add $t0, $t1, $t2
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	li $t1, 39110
	sw $t1, 0($t0)
	li $t0, 4392
	sw $t0, -1260($fp)
	li $t0, 29657
	sw $t0, -1264($fp)
	li $t0, 65150
	sw $t0, -1268($fp)
	li $t0, 31638
	sw $t0, -1272($fp)
	li $t0, 50226
	sw $t0, -1276($fp)
	li $t0, 27407
	sw $t0, -1280($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	li $t1, 41456
	li $t2, 65506
	add $t0, $t1, $t2
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	li $t1, 0
	bne $t0, $t1, label192
	j label191
label192:
	li $t0, 27095
	li $t1, 0
	bne $t0, $t1, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1288($fp)
label191:
	li $t0, 0
	sw $t0, -1296($fp)
	li $t1, 7600
	li $t2, 40997
	mul $t0, $t1, $t2
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	li $t1, 0
	bne $t0, $t1, label195
	j label194
label195:
	li $t0, 2056
	li $t1, 0
	bne $t0, $t1, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1296($fp)
label194:
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -1304($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1308($fp)
	lw $t1, -1304($fp)
	lw $t2, -1308($fp)
	add $t0, $t1, $t2
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	lw $t0, 0($t1)
	sw $t0, -1316($fp)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -988($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1324($fp)
	lw $t1, -1320($fp)
	lw $t2, -1324($fp)
	add $t0, $t1, $t2
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	lw $t0, 0($t1)
	sw $t0, -1332($fp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 59176
	div $t1, $t2
	mflo $t0
	sw $t0, -1340($fp)
	li $t1, 0
	lw $t2, -620($fp)
	sub $t0, $t1, $t2
	sw $t0, -1344($fp)
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 17848
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 5175
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1348($fp)
	li $t1, 0
	li $t2, 64248
	sub $t0, $t1, $t2
	sw $t0, -1352($fp)
	li $t1, 0
	lw $t2, -1352($fp)
	sub $t0, $t1, $t2
	sw $t0, -1356($fp)
	lw $t1, -1348($fp)
	lw $t2, -1356($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	li $t1, 0
	bne $t0, $t1, label187
	j label189
label189:
	lw $t1, -164($fp)
	lw $t2, -504($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	lw $t2, -520($fp)
	add $t0, $t1, $t2
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	li $t1, 0
	bne $t0, $t1, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -1284($fp)
label188:
	lw $t0, -1284($fp)
	addi $sp, $sp, 7016
	move $v0, $t0
	jr $ra
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	lw $t0, -972($fp)
	li $t1, 0
	bne $t0, $t1, label202
	j label204
label204:
	lw $t0, -1272($fp)
	li $t1, 0
	bne $t0, $t1, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -1380($fp)
label203:
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 45596
	lw $t1, -1276($fp)
	ble $t0, $t1, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -1388($fp)
label208:
	lw $t0, -1388($fp)
	li $t1, 8494
	bne $t0, $t1, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -1384($fp)
label206:
	lw $t1, -776($fp)
	move $t0, $t1
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	move $t0, $t1
	sw $t0, -1392($fp)
	li $t1, 35453
	lw $t2, -188($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	lw $t2, -1260($fp)
	mul $t0, $t1, $t2
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -640($fp)
	li $t1, 8804
	bge $t0, $t1, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -1408($fp)
label212:
	lw $t0, -1408($fp)
	lw $t1, -1264($fp)
	bne $t0, $t1, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -1404($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, -1280($fp)
	li $t1, 0
	bne $t0, $t1, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -1420($fp)
label216:
	lw $t0, -1420($fp)
	lw $t1, -980($fp)
	bgt $t0, $t1, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -1416($fp)
label214:
	li $t0, 0
	sw $t0, -1424($fp)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1428($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1432($fp)
	lw $t1, -1428($fp)
	lw $t2, -1432($fp)
	add $t0, $t1, $t2
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	lw $t0, 0($t1)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	li $t1, 0
	bne $t0, $t1, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -1424($fp)
label218:
	lw $t1, -152($fp)
	lw $t2, -736($fp)
	sub $t0, $t1, $t2
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t1, 12430
	lw $t2, -716($fp)
	sub $t0, $t1, $t2
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, -516($fp)
	bge $t0, $t1, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -1448($fp)
label220:
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -1460($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1464($fp)
	lw $t1, -1460($fp)
	lw $t2, -1464($fp)
	add $t0, $t1, $t2
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	lw $t0, 0($t1)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	li $t1, 0
	bne $t0, $t1, label223
	j label222
label223:
	lw $t0, -672($fp)
	li $t1, 0
	bne $t0, $t1, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -1456($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1476($fp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	li $t1, 22607
	bge $t0, $t1, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1376($fp)
label201:
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t1, -288($fp)
	li $t2, 26609
	add $t0, $t1, $t2
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	li $t1, 0
	bne $t0, $t1, label226
	j label225
label226:
	lw $t0, -504($fp)
	li $t1, 0
	bne $t0, $t1, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -1484($fp)
label225:
	li $t0, 0
	sw $t0, -1492($fp)
	li $t1, 0
	lw $t2, -504($fp)
	sub $t0, $t1, $t2
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	li $t1, 0
	bne $t0, $t1, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -1492($fp)
label228:
	lw $t1, -740($fp)
	lw $t2, -984($fp)
	mul $t0, $t1, $t2
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	lw $t2, -784($fp)
	sub $t0, $t1, $t2
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1512($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1516($fp)
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	add $t0, $t1, $t2
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	lw $t0, 0($t1)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	li $t1, 0
	bne $t0, $t1, label229
	j label231
label231:
	lw $t0, -172($fp)
	li $t1, 0
	bne $t0, $t1, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1508($fp)
label230:
	li $t1, 0
	lw $t2, -768($fp)
	sub $t0, $t1, $t2
	sw $t0, -1528($fp)
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1532($fp)
	li $t0, 56266
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	move $t0, $t1
	sw $t0, -1536($fp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1540($fp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40049
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	li $t1, 61332
	beq $t0, $t1, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1372($fp)
label199:
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -1548($fp)
	lw $t1, -716($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	add $t0, $t1, $t2
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	lw $t0, 0($t1)
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 10544
	mul $t0, $t1, $t2
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 40956
	div $t1, $t2
	mflo $t0
	sw $t0, -1568($fp)
	lw $t0, -1372($fp)
	lw $t1, -1568($fp)
	beq $t0, $t1, label196
	j label197
label196:
label197:
	li $t0, 23203
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	li $t0, 15719
	li $t1, 0
	bne $t0, $t1, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1576($fp)
label167:
	li $t1, 0
	lw $t2, -1576($fp)
	sub $t0, $t1, $t2
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	li $t1, 0
	bne $t0, $t1, label165
	j label164
label165:
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 16876
	li $t1, 0
	bne $t0, $t1, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -1584($fp)
label169:
	lw $t1, -1584($fp)
	li $t2, 23173
	div $t1, $t2
	mflo $t0
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	li $t1, 0
	bne $t0, $t1, label162
	j label164
label164:
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, -508($fp)
	li $t1, 42814
	blt $t0, $t1, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -1592($fp)
label171:
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 34724
	li $t1, 0
	bne $t0, $t1, label172
	j label174
label174:
	lw $t0, -1008($fp)
	li $t1, 0
	bne $t0, $t1, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1596($fp)
label173:
	li $t0, 0
	sw $t0, -1600($fp)
	lw $t0, -180($fp)
	li $t1, 0
	bne $t0, $t1, label178
	j label176
label178:
	li $t0, 18275
	li $t1, 0
	bne $t0, $t1, label177
	j label176
label177:
	lw $t0, -1048($fp)
	li $t1, 0
	bne $t0, $t1, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1600($fp)
label176:
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 36781
	lw $t1, -88($fp)
	bgt $t0, $t1, label181
	j label180
label181:
	li $t0, 13824
	li $t1, 0
	bne $t0, $t1, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -1604($fp)
label180:
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 30773
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1608($fp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1612($fp)
	li $t1, 0
	lw $t2, -1612($fp)
	sub $t0, $t1, $t2
	sw $t0, -1616($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -1620($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1624($fp)
	lw $t1, -1620($fp)
	lw $t2, -1624($fp)
	add $t0, $t1, $t2
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	lw $t0, 0($t1)
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	li $t1, 12536
	lw $t2, -1572($fp)
	mul $t0, $t1, $t2
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	li $t1, 31806
	beq $t0, $t1, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1636($fp)
label183:
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	li $t1, 0
	bne $t0, $t1, label163
	j label162
label162:
	li $t1, 0
	li $t2, 38915
	sub $t0, $t1, $t2
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, 7016
	move $v0, $t0
	jr $ra
label163:
	li $t0, 47989
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	lw $t0, -1652($fp)
	lw $t1, -164($fp)
	bne $t0, $t1, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1664($fp)
label161:
	lw $t0, -1664($fp)
	li $t1, 46381
	bne $t0, $t1, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1660($fp)
label159:
	lw $t0, -1660($fp)
	li $t1, 256
	bgt $t0, $t1, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1656($fp)
label157:
	lw $t1, -252($fp)
	lw $t2, -772($fp)
	add $t0, $t1, $t2
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	lw $t2, -252($fp)
	sub $t0, $t1, $t2
	sw $t0, -1672($fp)
	lw $t0, -1656($fp)
	lw $t1, -1672($fp)
	beq $t0, $t1, label153
	j label155
label155:
	li $t0, 53040
	li $t1, 5879
	beq $t0, $t1, label153
	j label154
label153:
label154:
	lw $t1, -288($fp)
	li $t2, 47413
	div $t1, $t2
	mflo $t0
	sw $t0, -1676($fp)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -1680($fp)
	lw $t1, -1676($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	add $t0, $t1, $t2
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	lw $t0, 0($t1)
	sw $t0, -1692($fp)
	li $t1, 0
	lw $t2, -1692($fp)
	sub $t0, $t1, $t2
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	li $t1, 0
	bne $t0, $t1, label186
	j label185
label186:
	li $t1, 0
	li $t2, 10112
	sub $t0, $t1, $t2
	sw $t0, -1700($fp)
	li $t1, 45928
	lw $t2, -500($fp)
	sub $t0, $t1, $t2
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	blt $t0, $t1, label184
	j label185
label184:
label185:
	addi $sp, $sp, -8
	move $t0, $sp
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	move $t0, $t1
	sw $t0, -1712($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1716($fp)
	lw $t1, -1712($fp)
	lw $t2, -1716($fp)
	add $t0, $t1, $t2
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	li $t1, 8486
	sw $t1, 0($t0)
	lw $t1, -1708($fp)
	move $t0, $t1
	sw $t0, -1724($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1728($fp)
	lw $t1, -1724($fp)
	lw $t2, -1728($fp)
	add $t0, $t1, $t2
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	li $t1, 6294
	sw $t1, 0($t0)
	li $t1, 2090
	lw $t2, -68($fp)
	mul $t0, $t1, $t2
	sw $t0, -1736($fp)
	lw $t1, -1708($fp)
	move $t0, $t1
	sw $t0, -1740($fp)
	lw $t1, -1736($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1744($fp)
	lw $t1, -1740($fp)
	lw $t2, -1744($fp)
	add $t0, $t1, $t2
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	lw $t0, 0($t1)
	sw $t0, -1752($fp)
label508:
	li $t0, 0
	sw $t0, -1756($fp)
	li $t0, 0
	sw $t0, -1760($fp)
	lw $t0, -164($fp)
	lw $t1, -184($fp)
	beq $t0, $t1, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -1760($fp)
label514:
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 35378
	li $t1, 40172
	blt $t0, $t1, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -1768($fp)
label518:
	lw $t0, -1768($fp)
	li $t1, 25293
	ble $t0, $t1, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -1764($fp)
label516:
	addi $sp, $sp, -4
	li $t0, 51097
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1772($fp)
	lw $t1, -968($fp)
	move $t0, $t1
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	move $t0, $t1
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 57048
	li $t1, 0
	bne $t0, $t1, label519
	j label521
label521:
	lw $t0, -760($fp)
	li $t1, 0
	bne $t0, $t1, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -1780($fp)
label520:
	li $t1, 48466
	li $t2, 28376
	add $t0, $t1, $t2
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t1, 0
	li $t2, 26237
	sub $t0, $t1, $t2
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	li $t1, 13703
	bne $t0, $t1, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -1788($fp)
label523:
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -64($fp)
	li $t1, 46651
	ble $t0, $t1, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -1796($fp)
label525:
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1800($fp)
	lw $t0, -1772($fp)
	lw $t1, -1800($fp)
	blt $t0, $t1, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -1756($fp)
label512:
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1756($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1808($fp)
	lw $t1, -1804($fp)
	lw $t2, -1808($fp)
	add $t0, $t1, $t2
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	lw $t0, 0($t1)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	li $t1, 0
	bne $t0, $t1, label509
	j label510
label509:
label526:
	li $t0, 0
	sw $t0, -1820($fp)
	li $t0, 63018
	li $t1, 27527
	bne $t0, $t1, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -1820($fp)
label530:
	lw $t1, -1820($fp)
	move $t0, $t1
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	move $t0, $t1
	sw $t0, -1824($fp)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1824($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1832($fp)
	lw $t1, -1828($fp)
	lw $t2, -1832($fp)
	add $t0, $t1, $t2
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	lw $t0, 0($t1)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	li $t1, 0
	bne $t0, $t1, label527
	j label528
label527:
	li $t0, 0
	sw $t0, -1844($fp)
	li $t1, 40063
	li $t2, 64667
	sub $t0, $t1, $t2
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	li $t1, 0
	bne $t0, $t1, label536
	j label535
label536:
	lw $t0, -164($fp)
	li $t1, 0
	bne $t0, $t1, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -1844($fp)
label535:
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -164($fp)
	li $t1, 0
	bne $t0, $t1, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -1852($fp)
label538:
	lw $t1, -1852($fp)
	lw $t2, -172($fp)
	mul $t0, $t1, $t2
	sw $t0, -1856($fp)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -1860($fp)
	lw $t1, -60($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1864($fp)
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	add $t0, $t1, $t2
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	lw $t0, 0($t1)
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	lw $t2, -708($fp)
	add $t0, $t1, $t2
	sw $t0, -1876($fp)
	lw $t1, -256($fp)
	li $t2, 1282
	add $t0, $t1, $t2
	sw $t0, -1880($fp)
	lw $t1, -864($fp)
	move $t0, $t1
	sw $t0, -1884($fp)
	lw $t1, -504($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -1888($fp)
	lw $t1, -1884($fp)
	lw $t2, -1888($fp)
	add $t0, $t1, $t2
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	lw $t0, 0($t1)
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 22517
	li $t1, 39741
	bne $t0, $t1, label539
	j label541
label541:
	li $t0, 47664
	li $t1, 0
	bne $t0, $t1, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -1900($fp)
label540:
	li $t1, 0
	lw $t2, -252($fp)
	sub $t0, $t1, $t2
	sw $t0, -1904($fp)
	li $t1, 0
	lw $t2, -1904($fp)
	sub $t0, $t1, $t2
	sw $t0, -1908($fp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1912($fp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 27903
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	lw $t2, -624($fp)
	add $t0, $t1, $t2
	sw $t0, -1920($fp)
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, -988($fp)
	li $t1, 0
	bne $t0, $t1, label545
	j label544
label545:
	lw $t0, -140($fp)
	li $t1, 0
	bne $t0, $t1, label542
	j label544
label544:
	lw $t0, -144($fp)
	li $t1, 0
	bne $t0, $t1, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -1924($fp)
label543:
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -84($fp)
	li $t1, 0
	bne $t0, $t1, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -1928($fp)
label547:
	lw $t1, -504($fp)
	move $t0, $t1
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	move $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 0
	sw $t0, -1940($fp)
	lw $t1, -252($fp)
	li $t2, 22773
	sub $t0, $t1, $t2
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, -780($fp)
	bne $t0, $t1, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -1940($fp)
label552:
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 27246
	li $t1, 0
	bne $t0, $t1, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -1948($fp)
label554:
	lw $t1, -1948($fp)
	lw $t2, -88($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -1952($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	li $t1, 0
	bne $t0, $t1, label550
	j label549
label550:
	lw $t0, -988($fp)
	li $t1, 0
	bne $t0, $t1, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -1936($fp)
label549:
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t1, -1100($fp)
	lw $t2, -172($fp)
	mul $t0, $t1, $t2
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -964($fp)
	blt $t0, $t1, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -1960($fp)
label556:
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t1, -616($fp)
	li $t2, 53543
	sub $t0, $t1, $t2
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 0
	bne $t0, $t1, label557
	j label559
label559:
	lw $t0, -84($fp)
	li $t1, 0
	bne $t0, $t1, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -1968($fp)
label558:
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -1976($fp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -1980($fp)
	li $t0, 32861
	lw $t1, -1980($fp)
	ble $t0, $t1, label531
	j label533
label533:
	lw $t0, -524($fp)
	li $t1, 0
	bne $t0, $t1, label531
	j label532
label531:
label532:
	j label526
label528:
	j label508
label510:
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t0, -80($fp)
	li $t1, 0
	bne $t0, $t1, label566
	j label565
label565:
	li $t0, 1
	sw $t0, -1988($fp)
label566:
	lw $t0, -1988($fp)
	lw $t1, -992($fp)
	bne $t0, $t1, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -1984($fp)
label564:
	li $t0, 37358
	sw $t0, -172($fp)
	lw $t1, -172($fp)
	move $t0, $t1
	sw $t0, -1992($fp)
	li $t0, 33935
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	move $t0, $t1
	sw $t0, -1996($fp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	lw $t2, -704($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -2004($fp)
	li $t0, 4650
	lw $t1, -2004($fp)
	ble $t0, $t1, label560
	j label561
label560:
	li $t0, 13137
	sw $t0, -2008($fp)
	li $t0, 43652
	sw $t0, -2012($fp)
	li $t0, 58770
	sw $t0, -2016($fp)
	li $t0, 12353
	sw $t0, -2020($fp)
label232:
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -780($fp)
	li $t1, 0
	bne $t0, $t1, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -2024($fp)
label237:
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 45742
	li $t1, 0
	bne $t0, $t1, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -2028($fp)
label239:
	lw $t1, -2024($fp)
	lw $t2, -2028($fp)
	mul $t0, $t1, $t2
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 28612
	sub $t0, $t1, $t2
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	li $t1, 0
	bne $t0, $t1, label235
	j label234
label235:
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -1004($fp)
	lw $t1, -976($fp)
	beq $t0, $t1, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -2040($fp)
label241:
	lw $t1, -52($fp)
	move $t0, $t1
	sw $t0, -2044($fp)
	lw $t1, -2040($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2048($fp)
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	add $t0, $t1, $t2
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	lw $t0, 0($t1)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	li $t1, 0
	bne $t0, $t1, label233
	j label234
label233:
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, -752($fp)
	li $t1, 0
	bne $t0, $t1, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -2060($fp)
label247:
	li $t0, 5499
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	move $t0, $t1
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 14174
	li $t1, 44038
	bgt $t0, $t1, label248
	j label250
label250:
	lw $t0, -152($fp)
	li $t1, 0
	bne $t0, $t1, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2068($fp)
label249:
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 53965
	li $t1, 0
	bne $t0, $t1, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -2072($fp)
label252:
	lw $t1, -2072($fp)
	lw $t2, -496($fp)
	mul $t0, $t1, $t2
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 42550
	li $t1, 0
	bne $t0, $t1, label253
	j label256
label256:
	li $t0, 4739
	li $t1, 0
	bne $t0, $t1, label253
	j label255
label255:
	li $t0, 2132
	li $t1, 0
	bne $t0, $t1, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -2080($fp)
label254:
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 23665
	li $t1, 0
	bne $t0, $t1, label259
	j label257
label259:
	li $t0, 2221
	li $t1, 0
	bne $t0, $t1, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -2084($fp)
label258:
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2088($fp)
	li $t1, 29660
	li $t2, 56527
	div $t1, $t2
	mflo $t0
	sw $t0, -2092($fp)
	lw $t1, -2092($fp)
	lw $t2, -2016($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 30124
	li $t1, 0
	bne $t0, $t1, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -2100($fp)
label261:
	lw $t1, -2100($fp)
	li $t2, 4187
	mul $t0, $t1, $t2
	sw $t0, -2104($fp)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -2108($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2112($fp)
	lw $t1, -2108($fp)
	lw $t2, -2112($fp)
	add $t0, $t1, $t2
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	lw $t0, 0($t1)
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	lw $t2, -512($fp)
	mul $t0, $t1, $t2
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	li $t1, 0
	lw $t2, -512($fp)
	sub $t0, $t1, $t2
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	li $t1, 26704
	bge $t0, $t1, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -2128($fp)
label263:
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t1, -716($fp)
	li $t2, 29864
	mul $t0, $t1, $t2
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	li $t1, 13535
	bge $t0, $t1, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -2136($fp)
label265:
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t1, -616($fp)
	li $t2, 49477
	mul $t0, $t1, $t2
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -996($fp)
	beq $t0, $t1, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -2148($fp)
label267:
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52526
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2156($fp)
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -2160($fp)
	lw $t1, -780($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2164($fp)
	lw $t1, -2160($fp)
	lw $t2, -2164($fp)
	add $t0, $t1, $t2
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	lw $t0, 0($t1)
	sw $t0, -2172($fp)
	lw $t1, -2156($fp)
	lw $t2, -2172($fp)
	mul $t0, $t1, $t2
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	li $t1, 0
	bne $t0, $t1, label242
	j label245
label245:
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -2180($fp)
	lw $t1, -164($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2184($fp)
	lw $t1, -2180($fp)
	lw $t2, -2184($fp)
	add $t0, $t1, $t2
	sw $t0, -2188($fp)
	lw $t1, -2188($fp)
	lw $t0, 0($t1)
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	lw $t2, -172($fp)
	mul $t0, $t1, $t2
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	li $t1, 0
	bne $t0, $t1, label242
	j label243
label242:
	li $t1, 0
	li $t2, 57110
	sub $t0, $t1, $t2
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 1542
	add $t0, $t1, $t2
	sw $t0, -2204($fp)
	li $t0, 54128
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	move $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 28932
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	move $t0, $t1
	sw $t0, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	li $t1, 0
	bne $t0, $t1, label268
	j label270
label270:
	li $t1, 0
	li $t2, 35477
	sub $t0, $t1, $t2
	sw $t0, -2220($fp)
	li $t1, 0
	lw $t2, -2220($fp)
	sub $t0, $t1, $t2
	sw $t0, -2224($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -2228($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2232($fp)
	lw $t1, -2228($fp)
	lw $t2, -2232($fp)
	add $t0, $t1, $t2
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	lw $t0, 0($t1)
	sw $t0, -2240($fp)
	lw $t0, -2224($fp)
	lw $t1, -2240($fp)
	bge $t0, $t1, label268
	j label269
label268:
label269:
	j label244
label243:
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -2244($fp)
	lw $t1, -704($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2248($fp)
	lw $t1, -2244($fp)
	lw $t2, -2248($fp)
	add $t0, $t1, $t2
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	lw $t0, 0($t1)
	sw $t0, -2256($fp)
	li $t1, 0
	lw $t2, -2256($fp)
	sub $t0, $t1, $t2
	sw $t0, -2260($fp)
	lw $t1, -2020($fp)
	lw $t2, -80($fp)
	mul $t0, $t1, $t2
	sw $t0, -2264($fp)
	lw $t0, -2260($fp)
	lw $t1, -2264($fp)
	ble $t0, $t1, label273
	j label272
label273:
	li $t1, 0
	lw $t2, -768($fp)
	sub $t0, $t1, $t2
	sw $t0, -2268($fp)
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 0
	sw $t0, -2280($fp)
	li $t0, 28711
	li $t1, 0
	bne $t0, $t1, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -2280($fp)
label279:
	lw $t1, -2280($fp)
	li $t2, 14082
	sub $t0, $t1, $t2
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	lw $t0, -180($fp)
	lw $t1, -20($fp)
	blt $t0, $t1, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -2292($fp)
label283:
	lw $t0, -2292($fp)
	li $t1, 52790
	blt $t0, $t1, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -2288($fp)
label281:
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t1, -12($fp)
	li $t2, 57324
	add $t0, $t1, $t2
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, -16($fp)
	bne $t0, $t1, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -2296($fp)
label285:
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2304($fp)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -2308($fp)
	lw $t1, -140($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2312($fp)
	lw $t1, -2308($fp)
	lw $t2, -2312($fp)
	add $t0, $t1, $t2
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	lw $t0, 0($t1)
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t1, 58289
	li $t2, 5962
	div $t1, $t2
	mflo $t0
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	li $t1, 0
	bne $t0, $t1, label286
	j label288
label288:
	lw $t0, -876($fp)
	li $t1, 0
	bne $t0, $t1, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -2324($fp)
label287:
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -2332($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2336($fp)
	lw $t1, -2332($fp)
	lw $t2, -2336($fp)
	add $t0, $t1, $t2
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	lw $t0, 0($t1)
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	lw $t2, -736($fp)
	mul $t0, $t1, $t2
	sw $t0, -2348($fp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1072
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	li $t1, 0
	bne $t0, $t1, label277
	j label276
label276:
	li $t0, 1
	sw $t0, -2276($fp)
label277:
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 48512
	li $t1, 0
	bne $t0, $t1, label290
	j label289
label289:
	li $t0, 1
	sw $t0, -2356($fp)
label290:
	lw $t1, -2356($fp)
	lw $t2, -180($fp)
	add $t0, $t1, $t2
	sw $t0, -2360($fp)
	li $t0, 0
	sw $t0, -2364($fp)
	li $t1, 49850
	li $t2, 1
	mul $t0, $t1, $t2
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	li $t1, 0
	bne $t0, $t1, label293
	j label292
label293:
	lw $t0, -784($fp)
	li $t1, 0
	bne $t0, $t1, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -2364($fp)
label292:
	lw $t1, -780($fp)
	li $t2, 6641
	mul $t0, $t1, $t2
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 52072
	div $t1, $t2
	mflo $t0
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	lw $t0, -764($fp)
	li $t1, 12974
	bge $t0, $t1, label296
	j label295
label296:
	li $t0, 63168
	li $t1, 0
	bne $t0, $t1, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -2380($fp)
label295:
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	li $t1, 0
	bne $t0, $t1, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -2272($fp)
label275:
	li $t0, 0
	sw $t0, -2388($fp)
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, -168($fp)
	lw $t1, -748($fp)
	beq $t0, $t1, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -2392($fp)
label300:
	lw $t0, -2392($fp)
	li $t1, 16660
	beq $t0, $t1, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -2388($fp)
label298:
	li $t0, 0
	sw $t0, -2396($fp)
	lw $t0, -972($fp)
	li $t1, 0
	bne $t0, $t1, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -2396($fp)
label302:
	li $t1, 0
	lw $t2, -2396($fp)
	sub $t0, $t1, $t2
	sw $t0, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2404($fp)
	lw $t1, -708($fp)
	lw $t2, -500($fp)
	mul $t0, $t1, $t2
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	ble $t0, $t1, label271
	j label272
label271:
label272:
label244:
	j label232
label234:
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 17162
	li $t1, 0
	bne $t0, $t1, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -2412($fp)
label307:
	lw $t1, -1000($fp)
	li $t2, 53291
	div $t1, $t2
	mflo $t0
	sw $t0, -2416($fp)
	lw $t1, -2412($fp)
	lw $t2, -2416($fp)
	sub $t0, $t1, $t2
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	li $t1, 0
	bne $t0, $t1, label303
	j label304
label303:
	li $t1, 0
	li $t2, 48067
	sub $t0, $t1, $t2
	sw $t0, -2424($fp)
	lw $t1, -2012($fp)
	lw $t2, -2424($fp)
	mul $t0, $t1, $t2
	sw $t0, -2428($fp)
	li $t0, 0
	sw $t0, -2432($fp)
	li $t1, 0
	li $t2, 43866
	sub $t0, $t1, $t2
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	li $t1, 0
	bne $t0, $t1, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -2432($fp)
label313:
	lw $t0, -2428($fp)
	lw $t1, -2432($fp)
	bne $t0, $t1, label311
	j label309
label311:
	li $t0, 0
	sw $t0, -2440($fp)
	li $t0, 17619
	li $t1, 61602
	ble $t0, $t1, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -2440($fp)
label315:
	lw $t1, -876($fp)
	move $t0, $t1
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	move $t0, $t1
	sw $t0, -2444($fp)
	li $t0, 0
	sw $t0, -2448($fp)
	li $t0, 9193
	li $t1, 0
	bne $t0, $t1, label319
	j label317
label319:
	lw $t0, -504($fp)
	li $t1, 0
	bne $t0, $t1, label318
	j label317
label318:
	li $t0, 63144
	li $t1, 0
	bne $t0, $t1, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -2448($fp)
label317:
	li $t1, 0
	li $t2, 16400
	sub $t0, $t1, $t2
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 38125
	mul $t0, $t1, $t2
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	lw $t0, -756($fp)
	li $t1, 33086
	blt $t0, $t1, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -2460($fp)
label321:
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 27808
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, -172($fp)
	li $t1, 0
	bne $t0, $t1, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -2468($fp)
label323:
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2472($fp)
	li $t1, 0
	lw $t2, -2472($fp)
	sub $t0, $t1, $t2
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	li $t1, 0
	bne $t0, $t1, label308
	j label309
label308:
label324:
	lw $t0, -264($fp)
	li $t1, 0
	bne $t0, $t1, label325
	j label327
label327:
	li $t1, 18129
	li $t2, 45173
	add $t0, $t1, $t2
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 61797
	sub $t0, $t1, $t2
	sw $t0, -2484($fp)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -2488($fp)
	lw $t1, -64($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	add $t0, $t1, $t2
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	lw $t0, 0($t1)
	sw $t0, -2500($fp)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -2504($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	add $t0, $t1, $t2
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	lw $t0, 0($t1)
	sw $t0, -2516($fp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	li $t1, 0
	bne $t0, $t1, label325
	j label326
label325:
	li $t1, 0
	li $t2, 53585
	sub $t0, $t1, $t2
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	li $t1, 0
	bne $t0, $t1, label329
	j label328
label328:
label329:
	j label324
label326:
	j label310
label309:
label310:
	j label305
label304:
	li $t0, 0
	sw $t0, -2528($fp)
	li $t0, 0
	sw $t0, -2532($fp)
	lw $t0, -64($fp)
	li $t1, 25180
	blt $t0, $t1, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -2532($fp)
label333:
	lw $t0, -2532($fp)
	lw $t1, -84($fp)
	bne $t0, $t1, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -2528($fp)
label331:
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2528($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2540($fp)
	lw $t1, -2536($fp)
	lw $t2, -2540($fp)
	add $t0, $t1, $t2
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	lw $t0, 0($t1)
	sw $t0, -2548($fp)
	li $t1, 0
	lw $t2, -2548($fp)
	sub $t0, $t1, $t2
	sw $t0, -2552($fp)
label305:
	li $t0, 0
	sw $t0, -2556($fp)
	lw $t0, -996($fp)
	li $t1, 0
	bne $t0, $t1, label338
	j label337
label337:
	li $t0, 1
	sw $t0, -2556($fp)
label338:
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -2560($fp)
	lw $t1, -2556($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2564($fp)
	lw $t1, -2560($fp)
	lw $t2, -2564($fp)
	add $t0, $t1, $t2
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	lw $t0, 0($t1)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	li $t1, 0
	bne $t0, $t1, label334
	j label335
label334:
label339:
	lw $t1, -80($fp)
	li $t2, 59547
	sub $t0, $t1, $t2
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	li $t1, 0
	bne $t0, $t1, label340
	j label341
label340:
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	li $t0, 12859
	li $t1, 0
	bne $t0, $t1, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -2584($fp)
label346:
	lw $t1, -2584($fp)
	li $t2, 6362
	div $t1, $t2
	mflo $t0
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	li $t1, 0
	bne $t0, $t1, label344
	j label343
label344:
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -2592($fp)
	lw $t1, -624($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2596($fp)
	lw $t1, -2592($fp)
	lw $t2, -2596($fp)
	add $t0, $t1, $t2
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	lw $t0, 0($t1)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	li $t1, 0
	bne $t0, $t1, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -2580($fp)
label343:
	lw $t1, -2580($fp)
	move $t0, $t1
	sw $t0, -708($fp)
	j label339
label341:
	j label336
label335:
label347:
	li $t1, 0
	li $t2, 42523
	sub $t0, $t1, $t2
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	lw $t0, -744($fp)
	li $t1, 0
	bne $t0, $t1, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -2616($fp)
label353:
	lw $t0, -2616($fp)
	li $t1, 62709
	bne $t0, $t1, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -2612($fp)
label351:
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 49165
	li $t1, 0
	bne $t0, $t1, label357
	j label355
label357:
	li $t0, 49245
	li $t1, 0
	bne $t0, $t1, label356
	j label355
label356:
	li $t0, 2651
	li $t1, 0
	bne $t0, $t1, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -2620($fp)
label355:
	li $t0, 0
	sw $t0, -2624($fp)
	li $t1, 46797
	lw $t2, -708($fp)
	mul $t0, $t1, $t2
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	li $t1, 0
	bne $t0, $t1, label358
	j label360
label360:
	lw $t0, -492($fp)
	li $t1, 0
	bne $t0, $t1, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -2624($fp)
label359:
	li $t1, 0
	lw $t2, -644($fp)
	sub $t0, $t1, $t2
	sw $t0, -2632($fp)
	li $t1, 0
	lw $t2, -2632($fp)
	sub $t0, $t1, $t2
	sw $t0, -2636($fp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	lw $t1, -84($fp)
	lw $t2, -620($fp)
	add $t0, $t1, $t2
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, -636($fp)
	beq $t0, $t1, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -2644($fp)
label362:
	lw $t1, -748($fp)
	li $t2, 370
	div $t1, $t2
	mflo $t0
	sw $t0, -2652($fp)
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 55212
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2656($fp)
	li $t1, 0
	lw $t2, -2656($fp)
	sub $t0, $t1, $t2
	sw $t0, -2660($fp)
	li $t0, 0
	sw $t0, -2664($fp)
	lw $t0, -768($fp)
	lw $t1, -780($fp)
	bge $t0, $t1, label363
	j label365
label365:
	li $t0, 19813
	li $t1, 0
	bne $t0, $t1, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -2664($fp)
label364:
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -2668($fp)
	lw $t1, -72($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2672($fp)
	lw $t1, -2668($fp)
	lw $t2, -2672($fp)
	add $t0, $t1, $t2
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	lw $t0, 0($t1)
	sw $t0, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	li $t1, 34552
	li $t2, 48437
	sub $t0, $t1, $t2
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	li $t1, 0
	bne $t0, $t1, label366
	j label368
label368:
	lw $t0, -876($fp)
	li $t1, 0
	bne $t0, $t1, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -2684($fp)
label367:
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2692($fp)
	lw $t1, -2660($fp)
	lw $t2, -2692($fp)
	sub $t0, $t1, $t2
	sw $t0, -2696($fp)
	lw $t0, -2608($fp)
	lw $t1, -2696($fp)
	beq $t0, $t1, label348
	j label349
label348:
	j label347
label349:
label336:
label369:
	lw $t1, -292($fp)
	lw $t2, -712($fp)
	sub $t0, $t1, $t2
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 0
	bne $t0, $t1, label370
	j label371
label370:
	li $t1, 0
	lw $t2, -1100($fp)
	sub $t0, $t1, $t2
	sw $t0, -2704($fp)
	j label369
label371:
	li $t0, 63679
	li $t1, 0
	bne $t0, $t1, label373
	j label374
label374:
	lw $t0, -292($fp)
	li $t1, 0
	bne $t0, $t1, label373
	j label372
label372:
label373:
	li $t0, 0
	sw $t0, -2708($fp)
	lw $t0, -268($fp)
	li $t1, 0
	bne $t0, $t1, label379
	j label378
label379:
	li $t0, 52171
	li $t1, 0
	bne $t0, $t1, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -2708($fp)
label378:
	li $t1, 44504
	li $t2, 25951
	mul $t0, $t1, $t2
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 0
	sw $t0, -2720($fp)
	lw $t0, -708($fp)
	li $t1, 61364
	bge $t0, $t1, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -2720($fp)
label383:
	lw $t0, -2720($fp)
	li $t1, 42112
	beq $t0, $t1, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2716($fp)
label381:
	addi $sp, $sp, -4
	li $t0, 33953
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 42351
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -2724($fp)
	li $t1, 0
	lw $t2, -2724($fp)
	sub $t0, $t1, $t2
	sw $t0, -2728($fp)
	li $t1, 9662
	lw $t2, -788($fp)
	mul $t0, $t1, $t2
	sw $t0, -2732($fp)
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	add $t0, $t1, $t2
	sw $t0, -2736($fp)
	li $t1, 60480
	li $t2, 13590
	mul $t0, $t1, $t2
	sw $t0, -2740($fp)
	lw $t1, -732($fp)
	lw $t2, -2740($fp)
	sub $t0, $t1, $t2
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	bne $t0, $t1, label375
	j label376
label375:
label376:
	j label562
label561:
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 5924
	li $t1, 0
	bne $t0, $t1, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -2752($fp)
label570:
	lw $t0, -2752($fp)
	li $t1, 27156
	bge $t0, $t1, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -2748($fp)
label568:
	lw $t1, -860($fp)
	move $t0, $t1
	sw $t0, -2756($fp)
	lw $t1, -2748($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2760($fp)
	lw $t1, -2756($fp)
	lw $t2, -2760($fp)
	add $t0, $t1, $t2
	sw $t0, -2764($fp)
	lw $t1, -2764($fp)
	lw $t0, 0($t1)
	sw $t0, -2768($fp)
	li $t1, 0
	lw $t2, -504($fp)
	sub $t0, $t1, $t2
	sw $t0, -2772($fp)
	li $t1, 0
	lw $t2, -2772($fp)
	sub $t0, $t1, $t2
	sw $t0, -2776($fp)
	lw $t1, -80($fp)
	li $t2, 46017
	add $t0, $t1, $t2
	sw $t0, -2780($fp)
	lw $t1, -992($fp)
	move $t0, $t1
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	move $t0, $t1
	sw $t0, -2784($fp)
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 59509
	li $t1, 0
	bne $t0, $t1, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -2788($fp)
label572:
	lw $t1, -2788($fp)
	li $t2, 60440
	add $t0, $t1, $t2
	sw $t0, -2792($fp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -2796($fp)
	lw $t1, -2776($fp)
	lw $t2, -2796($fp)
	mul $t0, $t1, $t2
	sw $t0, -2800($fp)
	lw $t1, -2768($fp)
	lw $t2, -2800($fp)
	add $t0, $t1, $t2
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	addi $sp, $sp, 7024
	move $v0, $t0
	jr $ra
label562:
label573:
	li $t0, 5661
	li $t1, 0
	bne $t0, $t1, label574
	j label575
label574:
	j label573
label575:
	addi $sp, $sp, -16
	move $t0, $sp
	sw $t0, -2808($fp)
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -2812($fp)
	addi $sp, $sp, -28
	move $t0, $sp
	sw $t0, -2816($fp)
	li $t0, 7763
	sw $t0, -2820($fp)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -2824($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2828($fp)
	lw $t1, -2824($fp)
	lw $t2, -2828($fp)
	add $t0, $t1, $t2
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	li $t1, 12023
	sw $t1, 0($t0)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -2836($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2840($fp)
	lw $t1, -2836($fp)
	lw $t2, -2840($fp)
	add $t0, $t1, $t2
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	li $t1, 30508
	sw $t1, 0($t0)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -2848($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2852($fp)
	lw $t1, -2848($fp)
	lw $t2, -2852($fp)
	add $t0, $t1, $t2
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	li $t1, 4936
	sw $t1, 0($t0)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -2860($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2864($fp)
	lw $t1, -2860($fp)
	lw $t2, -2864($fp)
	add $t0, $t1, $t2
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	li $t1, 1700
	sw $t1, 0($t0)
	li $t0, 14137
	sw $t0, -2872($fp)
	li $t0, 54182
	sw $t0, -2876($fp)
	li $t0, 4351
	sw $t0, -2880($fp)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2884($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	add $t0, $t1, $t2
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 60935
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2896($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2900($fp)
	lw $t1, -2896($fp)
	lw $t2, -2900($fp)
	add $t0, $t1, $t2
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	li $t1, 54552
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2908($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2912($fp)
	lw $t1, -2908($fp)
	lw $t2, -2912($fp)
	add $t0, $t1, $t2
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	li $t1, 24164
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2920($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2924($fp)
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	add $t0, $t1, $t2
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	li $t1, 29951
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2932($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2936($fp)
	lw $t1, -2932($fp)
	lw $t2, -2936($fp)
	add $t0, $t1, $t2
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	li $t1, 37453
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2944($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2948($fp)
	lw $t1, -2944($fp)
	lw $t2, -2948($fp)
	add $t0, $t1, $t2
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	li $t1, 22307
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2956($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2960($fp)
	lw $t1, -2956($fp)
	lw $t2, -2960($fp)
	add $t0, $t1, $t2
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	li $t1, 16587
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2968($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2972($fp)
	lw $t1, -2968($fp)
	lw $t2, -2972($fp)
	add $t0, $t1, $t2
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	li $t1, 16421
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2980($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2984($fp)
	lw $t1, -2980($fp)
	lw $t2, -2984($fp)
	add $t0, $t1, $t2
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	li $t1, 48259
	sw $t1, 0($t0)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -2992($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -2996($fp)
	lw $t1, -2992($fp)
	lw $t2, -2996($fp)
	add $t0, $t1, $t2
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	li $t1, 12415
	sw $t1, 0($t0)
	li $t0, 58534
	sw $t0, -3004($fp)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3008($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3012($fp)
	lw $t1, -3008($fp)
	lw $t2, -3012($fp)
	add $t0, $t1, $t2
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	li $t1, 25074
	sw $t1, 0($t0)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3020($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3024($fp)
	lw $t1, -3020($fp)
	lw $t2, -3024($fp)
	add $t0, $t1, $t2
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	li $t1, 46369
	sw $t1, 0($t0)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3032($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	add $t0, $t1, $t2
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	li $t1, 2660
	sw $t1, 0($t0)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3044($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3048($fp)
	lw $t1, -3044($fp)
	lw $t2, -3048($fp)
	add $t0, $t1, $t2
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	li $t1, 20019
	sw $t1, 0($t0)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3056($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3060($fp)
	lw $t1, -3056($fp)
	lw $t2, -3060($fp)
	add $t0, $t1, $t2
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	li $t1, 59959
	sw $t1, 0($t0)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3068($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3072($fp)
	lw $t1, -3068($fp)
	lw $t2, -3072($fp)
	add $t0, $t1, $t2
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	li $t1, 8584
	sw $t1, 0($t0)
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3080($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3084($fp)
	lw $t1, -3080($fp)
	lw $t2, -3084($fp)
	add $t0, $t1, $t2
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	li $t1, 47175
	sw $t1, 0($t0)
	li $t0, 40441
	sw $t0, -3092($fp)
	li $t0, 2558
	sw $t0, -3096($fp)
label393:
	lw $t1, -3004($fp)
	lw $t2, -368($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -3112($fp)
	lw $t1, -368($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3116($fp)
	lw $t1, -3112($fp)
	lw $t2, -3116($fp)
	add $t0, $t1, $t2
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	lw $t0, 0($t1)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -260($fp)
	blt $t0, $t1, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -3108($fp)
label401:
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -3128($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3132($fp)
	lw $t1, -3128($fp)
	lw $t2, -3132($fp)
	add $t0, $t1, $t2
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	lw $t0, 0($t1)
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	lw $t2, -2872($fp)
	mul $t0, $t1, $t2
	sw $t0, -3144($fp)
	li $t0, 0
	sw $t0, -3148($fp)
	lw $t0, -76($fp)
	li $t1, 0
	bne $t0, $t1, label403
	j label404
label404:
	lw $t0, -620($fp)
	li $t1, 0
	bne $t0, $t1, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3148($fp)
label403:
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 49842
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	lw $t2, -996($fp)
	mul $t0, $t1, $t2
	sw $t0, -3156($fp)
	li $t0, 0
	sw $t0, -3160($fp)
	lw $t0, -492($fp)
	lw $t1, -16($fp)
	bgt $t0, $t1, label407
	j label406
label407:
	li $t0, 58126
	li $t1, 0
	bne $t0, $t1, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -3160($fp)
label406:
	li $t0, 0
	sw $t0, -3164($fp)
	li $t0, 21051
	li $t1, 54778
	bne $t0, $t1, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -3164($fp)
label409:
	li $t0, 0
	sw $t0, -3168($fp)
	li $t0, 59826
	li $t1, 0
	bne $t0, $t1, label412
	j label410
label412:
	li $t0, 35189
	li $t1, 0
	bne $t0, $t1, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -3168($fp)
label411:
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, -492($fp)
	beq $t0, $t1, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -3104($fp)
label399:
	lw $t1, -1008($fp)
	move $t0, $t1
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	move $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	lw $t1, -728($fp)
	lw $t2, -852($fp)
	add $t0, $t1, $t2
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	li $t1, 43424
	bne $t0, $t1, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -3180($fp)
label414:
	li $t0, 0
	sw $t0, -3188($fp)
	li $t0, 30588
	li $t1, 32440
	bge $t0, $t1, label417
	j label416
label417:
	lw $t0, -996($fp)
	li $t1, 0
	bne $t0, $t1, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -3188($fp)
label416:
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 64177
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 22805
	mul $t0, $t1, $t2
	sw $t0, -3196($fp)
	li $t0, 0
	sw $t0, -3200($fp)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3204($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3208($fp)
	lw $t1, -3204($fp)
	lw $t2, -3208($fp)
	add $t0, $t1, $t2
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	lw $t0, 0($t1)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	li $t1, 45112
	beq $t0, $t1, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3200($fp)
label419:
	lw $t1, -780($fp)
	move $t0, $t1
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	move $t0, $t1
	sw $t0, -3220($fp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -3224($fp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 42079
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	li $t1, 0
	bne $t0, $t1, label394
	j label397
label397:
	lw $t0, -984($fp)
	li $t1, 11590
	beq $t0, $t1, label394
	j label396
label396:
	li $t1, 20779
	li $t2, 27835
	mul $t0, $t1, $t2
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 24006
	add $t0, $t1, $t2
	sw $t0, -3236($fp)
	lw $t1, -260($fp)
	lw $t2, -64($fp)
	mul $t0, $t1, $t2
	sw $t0, -3240($fp)
	lw $t1, -3236($fp)
	lw $t2, -3240($fp)
	add $t0, $t1, $t2
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	li $t1, 0
	bne $t0, $t1, label394
	j label395
label394:
	li $t0, 0
	sw $t0, -3248($fp)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3252($fp)
	lw $t1, -176($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3256($fp)
	lw $t1, -3252($fp)
	lw $t2, -3256($fp)
	add $t0, $t1, $t2
	sw $t0, -3260($fp)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3264($fp)
	lw $t1, -3260($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3268($fp)
	lw $t1, -3264($fp)
	lw $t2, -3268($fp)
	add $t0, $t1, $t2
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	lw $t0, 0($t1)
	sw $t0, -3276($fp)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -3280($fp)
	lw $t1, -180($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3284($fp)
	lw $t1, -3280($fp)
	lw $t2, -3284($fp)
	add $t0, $t1, $t2
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	lw $t0, 0($t1)
	sw $t0, -3292($fp)
	lw $t1, -3276($fp)
	lw $t2, -3292($fp)
	mul $t0, $t1, $t2
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	li $t1, 13777
	beq $t0, $t1, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -3248($fp)
label421:
	lw $t0, -3248($fp)
	addi $sp, $sp, 7108
	move $v0, $t0
	jr $ra
	j label393
label395:
label422:
	lw $t1, -708($fp)
	li $t2, 52910
	sub $t0, $t1, $t2
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 4839
	li $t1, 0
	bne $t0, $t1, label427
	j label426
label427:
	li $t0, 16438
	li $t1, 0
	bne $t0, $t1, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -3304($fp)
label426:
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -3308($fp)
	lw $t1, -3304($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3312($fp)
	lw $t1, -3308($fp)
	lw $t2, -3312($fp)
	add $t0, $t1, $t2
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	lw $t0, 0($t1)
	sw $t0, -3320($fp)
	lw $t1, -3300($fp)
	lw $t2, -3320($fp)
	add $t0, $t1, $t2
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	li $t1, 0
	bne $t0, $t1, label423
	j label424
label423:
	li $t0, 0
	sw $t0, -3328($fp)
	li $t0, 7393
	li $t1, 0
	bne $t0, $t1, label433
	j label431
label433:
	lw $t1, -644($fp)
	li $t2, 64798
	mul $t0, $t1, $t2
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	li $t1, 0
	bne $t0, $t1, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -3328($fp)
label432:
	lw $t1, -3328($fp)
	move $t0, $t1
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	move $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	li $t1, 0
	bne $t0, $t1, label428
	j label429
label428:
label434:
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t1, -368($fp)
	li $t2, 25022
	mul $t0, $t1, $t2
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	lw $t2, -2876($fp)
	mul $t0, $t1, $t2
	sw $t0, -3348($fp)
	li $t1, 0
	lw $t2, -504($fp)
	sub $t0, $t1, $t2
	sw $t0, -3352($fp)
	lw $t0, -3348($fp)
	lw $t1, -3352($fp)
	bne $t0, $t1, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -3340($fp)
label439:
	li $t1, 0
	li $t2, 54568
	sub $t0, $t1, $t2
	sw $t0, -3356($fp)
	li $t1, 0
	lw $t2, -3356($fp)
	sub $t0, $t1, $t2
	sw $t0, -3360($fp)
	lw $t0, -3340($fp)
	lw $t1, -3360($fp)
	beq $t0, $t1, label437
	j label436
label437:
	li $t0, 0
	sw $t0, -3364($fp)
	li $t0, 39703
	lw $t1, -3096($fp)
	bgt $t0, $t1, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -3364($fp)
label441:
	lw $t1, -188($fp)
	li $t2, 27580
	div $t1, $t2
	mflo $t0
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	ble $t0, $t1, label435
	j label436
label435:
	li $t1, 0
	lw $t2, -668($fp)
	sub $t0, $t1, $t2
	sw $t0, -3372($fp)
	li $t1, 0
	lw $t2, -3372($fp)
	sub $t0, $t1, $t2
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	li $t1, 0
	bne $t0, $t1, label442
	j label443
label442:
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 31111
	li $t1, 0
	bne $t0, $t1, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -3380($fp)
label446:
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -3384($fp)
	lw $t1, -3380($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3388($fp)
	lw $t1, -3384($fp)
	lw $t2, -3388($fp)
	add $t0, $t1, $t2
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	lw $t0, 0($t1)
	sw $t0, -3396($fp)
	j label444
label443:
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -976($fp)
	li $t1, 20270
	bgt $t0, $t1, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -3404($fp)
label452:
	lw $t0, -3404($fp)
	li $t1, 18123
	bgt $t0, $t1, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -3400($fp)
label450:
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -3408($fp)
	lw $t1, -3400($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3412($fp)
	lw $t1, -3408($fp)
	lw $t2, -3412($fp)
	add $t0, $t1, $t2
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	lw $t0, 0($t1)
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	li $t0, 15417
	li $t1, 0
	bne $t0, $t1, label455
	j label454
label455:
	li $t0, 12860
	li $t1, 0
	bne $t0, $t1, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -3424($fp)
label454:
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3424($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3432($fp)
	lw $t1, -3428($fp)
	lw $t2, -3432($fp)
	add $t0, $t1, $t2
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	lw $t0, 0($t1)
	sw $t0, -3440($fp)
	lw $t0, -3420($fp)
	lw $t1, -3440($fp)
	beq $t0, $t1, label447
	j label448
label447:
label448:
label444:
	j label434
label436:
	j label430
label429:
	lw $t0, -628($fp)
	li $t1, 0
	bne $t0, $t1, label457
	j label456
label456:
label457:
label430:
	j label422
label424:
	lw $t0, -2820($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3444($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3448($fp)
	lw $t1, -3444($fp)
	lw $t2, -3448($fp)
	add $t0, $t1, $t2
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	lw $t0, 0($t1)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3460($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3464($fp)
	lw $t1, -3460($fp)
	lw $t2, -3464($fp)
	add $t0, $t1, $t2
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	lw $t0, 0($t1)
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3476($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3480($fp)
	lw $t1, -3476($fp)
	lw $t2, -3480($fp)
	add $t0, $t1, $t2
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	lw $t0, 0($t1)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3492($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3496($fp)
	lw $t1, -3492($fp)
	lw $t2, -3496($fp)
	add $t0, $t1, $t2
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	lw $t0, 0($t1)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -2872($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -2880($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3508($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3512($fp)
	lw $t1, -3508($fp)
	lw $t2, -3512($fp)
	add $t0, $t1, $t2
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	lw $t0, 0($t1)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3524($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3528($fp)
	lw $t1, -3524($fp)
	lw $t2, -3528($fp)
	add $t0, $t1, $t2
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	lw $t0, 0($t1)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3540($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3544($fp)
	lw $t1, -3540($fp)
	lw $t2, -3544($fp)
	add $t0, $t1, $t2
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	lw $t0, 0($t1)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3556($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3560($fp)
	lw $t1, -3556($fp)
	lw $t2, -3560($fp)
	add $t0, $t1, $t2
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	lw $t0, 0($t1)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3572($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3576($fp)
	lw $t1, -3572($fp)
	lw $t2, -3576($fp)
	add $t0, $t1, $t2
	sw $t0, -3580($fp)
	lw $t1, -3580($fp)
	lw $t0, 0($t1)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3588($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3592($fp)
	lw $t1, -3588($fp)
	lw $t2, -3592($fp)
	add $t0, $t1, $t2
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	lw $t0, 0($t1)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3604($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3608($fp)
	lw $t1, -3604($fp)
	lw $t2, -3608($fp)
	add $t0, $t1, $t2
	sw $t0, -3612($fp)
	lw $t1, -3612($fp)
	lw $t0, 0($t1)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3620($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3624($fp)
	lw $t1, -3620($fp)
	lw $t2, -3624($fp)
	add $t0, $t1, $t2
	sw $t0, -3628($fp)
	lw $t1, -3628($fp)
	lw $t0, 0($t1)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3636($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3640($fp)
	lw $t1, -3636($fp)
	lw $t2, -3640($fp)
	add $t0, $t1, $t2
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	lw $t0, 0($t1)
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3652($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3656($fp)
	lw $t1, -3652($fp)
	lw $t2, -3656($fp)
	add $t0, $t1, $t2
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	lw $t0, 0($t1)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -3004($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3668($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3672($fp)
	lw $t1, -3668($fp)
	lw $t2, -3672($fp)
	add $t0, $t1, $t2
	sw $t0, -3676($fp)
	lw $t1, -3676($fp)
	lw $t0, 0($t1)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3684($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3688($fp)
	lw $t1, -3684($fp)
	lw $t2, -3688($fp)
	add $t0, $t1, $t2
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	lw $t0, 0($t1)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3700($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3704($fp)
	lw $t1, -3700($fp)
	lw $t2, -3704($fp)
	add $t0, $t1, $t2
	sw $t0, -3708($fp)
	lw $t1, -3708($fp)
	lw $t0, 0($t1)
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3716($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3720($fp)
	lw $t1, -3716($fp)
	lw $t2, -3720($fp)
	add $t0, $t1, $t2
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	lw $t0, 0($t1)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3732($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3736($fp)
	lw $t1, -3732($fp)
	lw $t2, -3736($fp)
	add $t0, $t1, $t2
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	lw $t0, 0($t1)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3748($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3752($fp)
	lw $t1, -3748($fp)
	lw $t2, -3752($fp)
	add $t0, $t1, $t2
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	lw $t0, 0($t1)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -3764($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3768($fp)
	lw $t1, -3764($fp)
	lw $t2, -3768($fp)
	add $t0, $t1, $t2
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	lw $t0, 0($t1)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -3092($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -3096($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3780($fp)
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -3784($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3788($fp)
	lw $t1, -3784($fp)
	lw $t2, -3788($fp)
	add $t0, $t1, $t2
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	lw $t0, 0($t1)
	sw $t0, -3796($fp)
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -3800($fp)
	lw $t1, -508($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3804($fp)
	lw $t1, -3800($fp)
	lw $t2, -3804($fp)
	add $t0, $t1, $t2
	sw $t0, -3808($fp)
	lw $t1, -3808($fp)
	lw $t0, 0($t1)
	sw $t0, -3812($fp)
	lw $t1, -3796($fp)
	lw $t2, -3812($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	li $t1, 0
	bne $t0, $t1, label458
	j label460
label460:
	li $t0, 0
	sw $t0, -3820($fp)
	lw $t0, -712($fp)
	li $t1, 0
	bne $t0, $t1, label463
	j label462
label463:
	li $t0, 7150
	li $t1, 0
	bne $t0, $t1, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -3820($fp)
label462:
	lw $t1, -252($fp)
	move $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	move $t0, $t1
	sw $t0, -3824($fp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	li $t1, 0
	bne $t0, $t1, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -3780($fp)
label459:
	lw $t0, -3780($fp)
	addi $sp, $sp, 7108
	move $v0, $t0
	jr $ra
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 8828
	li $t1, 0
	bne $t0, $t1, label468
	j label467
label467:
	li $t0, 1
	sw $t0, -3832($fp)
label468:
	li $t1, 0
	lw $t2, -3832($fp)
	sub $t0, $t1, $t2
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	li $t1, 0
	bne $t0, $t1, label464
	j label465
label464:
	lw $t1, -252($fp)
	lw $t2, -980($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	lw $t2, -776($fp)
	sub $t0, $t1, $t2
	sw $t0, -3844($fp)
	lw $t1, -2880($fp)
	lw $t2, -748($fp)
	sub $t0, $t1, $t2
	sw $t0, -3848($fp)
	lw $t1, -3848($fp)
	lw $t2, -876($fp)
	sub $t0, $t1, $t2
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	lw $t0, -768($fp)
	li $t1, 0
	bne $t0, $t1, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -3856($fp)
label473:
	lw $t1, -292($fp)
	li $t2, 48084
	mul $t0, $t1, $t2
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	lw $t2, -708($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -3864($fp)
	li $t0, 0
	sw $t0, -3868($fp)
	lw $t0, -524($fp)
	li $t1, 0
	bne $t0, $t1, label477
	j label475
label477:
	li $t0, 5791
	li $t1, 0
	bne $t0, $t1, label476
	j label475
label476:
	li $t0, 39416
	li $t1, 0
	bne $t0, $t1, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -3868($fp)
label475:
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -3872($fp)
	lw $t1, -3872($fp)
	lw $t2, -368($fp)
	mul $t0, $t1, $t2
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	li $t1, 0
	bne $t0, $t1, label469
	j label470
label469:
	li $t0, 0
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	lw $t0, -1000($fp)
	li $t1, 14988
	ble $t0, $t1, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -3884($fp)
label481:
	lw $t1, -872($fp)
	move $t0, $t1
	sw $t0, -3888($fp)
	lw $t1, -3884($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3892($fp)
	lw $t1, -3888($fp)
	lw $t2, -3892($fp)
	add $t0, $t1, $t2
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	lw $t0, 0($t1)
	sw $t0, -3900($fp)
	li $t1, 0
	lw $t2, -3900($fp)
	sub $t0, $t1, $t2
	sw $t0, -3904($fp)
	li $t0, 0
	sw $t0, -3908($fp)
	li $t0, 0
	sw $t0, -3912($fp)
	lw $t0, -512($fp)
	li $t1, 28596
	beq $t0, $t1, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -3912($fp)
label485:
	lw $t0, -3912($fp)
	li $t1, 34419
	bne $t0, $t1, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -3908($fp)
label483:
	lw $t1, -2820($fp)
	li $t2, 19346
	div $t1, $t2
	mflo $t0
	sw $t0, -3916($fp)
	li $t0, 0
	sw $t0, -3920($fp)
	lw $t1, -68($fp)
	li $t2, 8172
	sub $t0, $t1, $t2
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	li $t1, 46010
	bgt $t0, $t1, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -3920($fp)
label487:
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -3928($fp)
	li $t1, 0
	lw $t2, -3928($fp)
	sub $t0, $t1, $t2
	sw $t0, -3932($fp)
	lw $t0, -3904($fp)
	lw $t1, -3932($fp)
	bgt $t0, $t1, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -3880($fp)
label479:
	lw $t0, -3880($fp)
	addi $sp, $sp, 7108
	move $v0, $t0
	jr $ra
	j label471
label470:
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -3936($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3940($fp)
	lw $t1, -3936($fp)
	lw $t2, -3940($fp)
	add $t0, $t1, $t2
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	lw $t0, 0($t1)
	sw $t0, -3948($fp)
	li $t1, 0
	lw $t2, -3948($fp)
	sub $t0, $t1, $t2
	sw $t0, -3952($fp)
	li $t1, 0
	lw $t2, -3952($fp)
	sub $t0, $t1, $t2
	sw $t0, -3956($fp)
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -3960($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	add $t0, $t1, $t2
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	lw $t0, 0($t1)
	sw $t0, -3972($fp)
label471:
	j label466
label465:
	addi $sp, $sp, -24
	move $t0, $sp
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -3980($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3984($fp)
	lw $t1, -3980($fp)
	lw $t2, -3984($fp)
	add $t0, $t1, $t2
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	li $t1, 23382
	sw $t1, 0($t0)
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -3992($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -3996($fp)
	lw $t1, -3992($fp)
	lw $t2, -3996($fp)
	add $t0, $t1, $t2
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	li $t1, 9319
	sw $t1, 0($t0)
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -4004($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4008($fp)
	lw $t1, -4004($fp)
	lw $t2, -4008($fp)
	add $t0, $t1, $t2
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	li $t1, 4805
	sw $t1, 0($t0)
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -4016($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4020($fp)
	lw $t1, -4016($fp)
	lw $t2, -4020($fp)
	add $t0, $t1, $t2
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	li $t1, 30775
	sw $t1, 0($t0)
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -4028($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4032($fp)
	lw $t1, -4028($fp)
	lw $t2, -4032($fp)
	add $t0, $t1, $t2
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	li $t1, 8581
	sw $t1, 0($t0)
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -4040($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4044($fp)
	lw $t1, -4040($fp)
	lw $t2, -4044($fp)
	add $t0, $t1, $t2
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	li $t1, 29828
	sw $t1, 0($t0)
	li $t0, 19807
	li $t1, 0
	bne $t0, $t1, label384
	j label386
label386:
	li $t0, 0
	sw $t0, -4052($fp)
	lw $t0, -876($fp)
	li $t1, 48285
	bge $t0, $t1, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -4052($fp)
label389:
	lw $t0, -4052($fp)
	lw $t1, -16($fp)
	blt $t0, $t1, label387
	j label385
label387:
	li $t1, 57408
	lw $t2, -144($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	li $t1, 0
	bne $t0, $t1, label384
	j label385
label384:
label385:
	li $t0, 50918
	li $t1, 0
	bne $t0, $t1, label392
	j label391
label392:
	lw $t1, -3976($fp)
	move $t0, $t1
	sw $t0, -4060($fp)
	lw $t1, -148($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4064($fp)
	lw $t1, -4060($fp)
	lw $t2, -4064($fp)
	add $t0, $t1, $t2
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	lw $t0, 0($t1)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	li $t1, 0
	bne $t0, $t1, label390
	j label391
label390:
label391:
label466:
label488:
	li $t0, 0
	sw $t0, -4076($fp)
	li $t1, 3019
	lw $t2, -292($fp)
	mul $t0, $t1, $t2
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	li $t1, 0
	bne $t0, $t1, label493
	j label492
label493:
	li $t0, 9996
	li $t1, 0
	bne $t0, $t1, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -4076($fp)
label492:
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 799
	li $t1, 0
	bne $t0, $t1, label497
	j label496
label497:
	lw $t0, -80($fp)
	li $t1, 0
	bne $t0, $t1, label494
	j label496
label496:
	lw $t0, -76($fp)
	li $t1, 0
	bne $t0, $t1, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -4084($fp)
label495:
	li $t1, 0
	lw $t2, -980($fp)
	sub $t0, $t1, $t2
	sw $t0, -4088($fp)
	li $t1, 0
	lw $t2, -4088($fp)
	sub $t0, $t1, $t2
	sw $t0, -4092($fp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	li $t1, 0
	bne $t0, $t1, label489
	j label490
label489:
	li $t0, 0
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 15879
	li $t1, 0
	bne $t0, $t1, label501
	j label500
label500:
	li $t0, 1
	sw $t0, -4104($fp)
label501:
	lw $t1, -4104($fp)
	lw $t2, -984($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	li $t0, 49171
	li $t1, 5458
	blt $t0, $t1, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -4112($fp)
label503:
	li $t0, 0
	sw $t0, -4116($fp)
	lw $t0, -644($fp)
	li $t1, 0
	bne $t0, $t1, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -4116($fp)
label505:
	lw $t1, -4116($fp)
	li $t2, 23029
	mul $t0, $t1, $t2
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -4128($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4132($fp)
	lw $t1, -4128($fp)
	lw $t2, -4132($fp)
	add $t0, $t1, $t2
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	lw $t0, 0($t1)
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	li $t1, 0
	bne $t0, $t1, label507
	j label506
label506:
	li $t0, 1
	sw $t0, -4124($fp)
label507:
	li $t0, 31879
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	move $t0, $t1
	sw $t0, -4144($fp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 57999
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -4148($fp)
	lw $t0, -4108($fp)
	lw $t1, -4148($fp)
	beq $t0, $t1, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -4100($fp)
label499:
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -4152($fp)
	lw $t1, -4100($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4156($fp)
	lw $t1, -4152($fp)
	lw $t2, -4156($fp)
	add $t0, $t1, $t2
	sw $t0, -4160($fp)
	j label488
label490:
	lw $t0, -2820($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -4164($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4168($fp)
	lw $t1, -4164($fp)
	lw $t2, -4168($fp)
	add $t0, $t1, $t2
	sw $t0, -4172($fp)
	lw $t1, -4172($fp)
	lw $t0, 0($t1)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -4180($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4184($fp)
	lw $t1, -4180($fp)
	lw $t2, -4184($fp)
	add $t0, $t1, $t2
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	lw $t0, 0($t1)
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -4196($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4200($fp)
	lw $t1, -4196($fp)
	lw $t2, -4200($fp)
	add $t0, $t1, $t2
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	lw $t0, 0($t1)
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2808($fp)
	move $t0, $t1
	sw $t0, -4212($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4216($fp)
	lw $t1, -4212($fp)
	lw $t2, -4216($fp)
	add $t0, $t1, $t2
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	lw $t0, 0($t1)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -2872($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -2880($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4228($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4232($fp)
	lw $t1, -4228($fp)
	lw $t2, -4232($fp)
	add $t0, $t1, $t2
	sw $t0, -4236($fp)
	lw $t1, -4236($fp)
	lw $t0, 0($t1)
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4244($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4248($fp)
	lw $t1, -4244($fp)
	lw $t2, -4248($fp)
	add $t0, $t1, $t2
	sw $t0, -4252($fp)
	lw $t1, -4252($fp)
	lw $t0, 0($t1)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4260($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4264($fp)
	lw $t1, -4260($fp)
	lw $t2, -4264($fp)
	add $t0, $t1, $t2
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	lw $t0, 0($t1)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4276($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4280($fp)
	lw $t1, -4276($fp)
	lw $t2, -4280($fp)
	add $t0, $t1, $t2
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	lw $t0, 0($t1)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4292($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4296($fp)
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	add $t0, $t1, $t2
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	lw $t0, 0($t1)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4308($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4312($fp)
	lw $t1, -4308($fp)
	lw $t2, -4312($fp)
	add $t0, $t1, $t2
	sw $t0, -4316($fp)
	lw $t1, -4316($fp)
	lw $t0, 0($t1)
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4324($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4328($fp)
	lw $t1, -4324($fp)
	lw $t2, -4328($fp)
	add $t0, $t1, $t2
	sw $t0, -4332($fp)
	lw $t1, -4332($fp)
	lw $t0, 0($t1)
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4340($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4344($fp)
	lw $t1, -4340($fp)
	lw $t2, -4344($fp)
	add $t0, $t1, $t2
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	lw $t0, 0($t1)
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4356($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4360($fp)
	lw $t1, -4356($fp)
	lw $t2, -4360($fp)
	add $t0, $t1, $t2
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	lw $t0, 0($t1)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	move $t0, $t1
	sw $t0, -4372($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4376($fp)
	lw $t1, -4372($fp)
	lw $t2, -4376($fp)
	add $t0, $t1, $t2
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	lw $t0, 0($t1)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -3004($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4388($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4392($fp)
	lw $t1, -4388($fp)
	lw $t2, -4392($fp)
	add $t0, $t1, $t2
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	lw $t0, 0($t1)
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4404($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4408($fp)
	lw $t1, -4404($fp)
	lw $t2, -4408($fp)
	add $t0, $t1, $t2
	sw $t0, -4412($fp)
	lw $t1, -4412($fp)
	lw $t0, 0($t1)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4420($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4424($fp)
	lw $t1, -4420($fp)
	lw $t2, -4424($fp)
	add $t0, $t1, $t2
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	lw $t0, 0($t1)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4436($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4440($fp)
	lw $t1, -4436($fp)
	lw $t2, -4440($fp)
	add $t0, $t1, $t2
	sw $t0, -4444($fp)
	lw $t1, -4444($fp)
	lw $t0, 0($t1)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4452($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4456($fp)
	lw $t1, -4452($fp)
	lw $t2, -4456($fp)
	add $t0, $t1, $t2
	sw $t0, -4460($fp)
	lw $t1, -4460($fp)
	lw $t0, 0($t1)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4468($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4472($fp)
	lw $t1, -4468($fp)
	lw $t2, -4472($fp)
	add $t0, $t1, $t2
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	lw $t0, 0($t1)
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	move $t0, $t1
	sw $t0, -4484($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4488($fp)
	lw $t1, -4484($fp)
	lw $t2, -4488($fp)
	add $t0, $t1, $t2
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	lw $t0, 0($t1)
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -3092($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -3096($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t1, 2995
	li $t2, 57416
	mul $t0, $t1, $t2
	sw $t0, -4500($fp)
	lw $t1, -4500($fp)
	li $t2, 1
	mul $t0, $t1, $t2
	sw $t0, -4504($fp)
	lw $t1, -868($fp)
	move $t0, $t1
	sw $t0, -4508($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4512($fp)
	lw $t1, -4508($fp)
	lw $t2, -4512($fp)
	add $t0, $t1, $t2
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	lw $t0, 0($t1)
	sw $t0, -4520($fp)
	lw $t1, -4520($fp)
	lw $t2, -80($fp)
	mul $t0, $t1, $t2
	sw $t0, -4524($fp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, 7132
	move $v0, $t0
	jr $ra
label736:
	li $t0, 0
	sw $t0, -4532($fp)
	lw $t1, -628($fp)
	lw $t2, -252($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	li $t1, 0
	bne $t0, $t1, label740
	j label742
label742:
	lw $t0, -160($fp)
	li $t1, 0
	bne $t0, $t1, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -4532($fp)
label741:
	lw $t1, -524($fp)
	move $t0, $t1
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	move $t0, $t1
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -4548($fp)
	lw $t1, -776($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4552($fp)
	lw $t1, -4548($fp)
	lw $t2, -4552($fp)
	add $t0, $t1, $t2
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	lw $t0, 0($t1)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	li $t1, 62467
	bgt $t0, $t1, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -4544($fp)
label744:
	li $t0, 36060
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	move $t0, $t1
	sw $t0, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	lw $t0, -184($fp)
	li $t1, 0
	bne $t0, $t1, label746
	j label745
label745:
	li $t0, 1
	sw $t0, -4568($fp)
label746:
	lw $t1, -4568($fp)
	li $t2, 51252
	add $t0, $t1, $t2
	sw $t0, -4572($fp)
	lw $t1, -80($fp)
	move $t0, $t1
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	move $t0, $t1
	sw $t0, -4576($fp)
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 50835
	lw $t1, -284($fp)
	ble $t0, $t1, label747
	j label749
label749:
	lw $t0, -288($fp)
	li $t1, 0
	bne $t0, $t1, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -4580($fp)
label748:
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 59442
	div $t1, $t2
	mflo $t0
	sw $t0, -4588($fp)
	addi $sp, $sp, -4
	lw $t0, -4588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 46772
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	li $t1, 0
	bne $t0, $t1, label737
	j label739
label739:
	li $t1, 0
	li $t2, 60571
	sub $t0, $t1, $t2
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	li $t1, 0
	bne $t0, $t1, label737
	j label738
label737:
	li $t1, 0
	lw $t2, -632($fp)
	sub $t0, $t1, $t2
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, 7132
	move $v0, $t0
	jr $ra
	j label736
label738:
label750:
	li $t0, 55640
	li $t1, 0
	bne $t0, $t1, label751
	j label752
label751:
	li $t0, 24681
	li $t1, 0
	bne $t0, $t1, label753
	j label754
label753:
	li $t1, 0
	lw $t2, -16($fp)
	sub $t0, $t1, $t2
	sw $t0, -4604($fp)
	lw $t1, -4604($fp)
	li $t2, 3617
	mul $t0, $t1, $t2
	sw $t0, -4608($fp)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -4612($fp)
	lw $t1, -164($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4616($fp)
	lw $t1, -4612($fp)
	lw $t2, -4616($fp)
	add $t0, $t1, $t2
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	lw $t0, 0($t1)
	sw $t0, -4624($fp)
	lw $t1, -4608($fp)
	lw $t2, -4624($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4628($fp)
	lw $t1, -4628($fp)
	li $t2, 19932
	div $t1, $t2
	mflo $t0
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	addi $sp, $sp, 7132
	move $v0, $t0
	jr $ra
	j label755
label754:
	li $t0, 44488
	sw $t0, -4636($fp)
	li $t0, 51902
	sw $t0, -4640($fp)
label727:
	li $t0, 11805
	li $t1, 0
	bne $t0, $t1, label728
	j label730
label730:
	li $t0, 0
	sw $t0, -4644($fp)
	lw $t1, -84($fp)
	lw $t2, -788($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	li $t1, 29870
	ble $t0, $t1, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -4644($fp)
label732:
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -4652($fp)
	lw $t1, -852($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4656($fp)
	lw $t1, -4652($fp)
	lw $t2, -4656($fp)
	add $t0, $t1, $t2
	sw $t0, -4660($fp)
	lw $t1, -4660($fp)
	lw $t0, 0($t1)
	sw $t0, -4664($fp)
	lw $t0, -4644($fp)
	lw $t1, -4664($fp)
	bne $t0, $t1, label728
	j label729
label728:
	li $t0, 54921
	sw $t0, -4668($fp)
	li $t0, 21801
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	lw $t1, -4672($fp)
	lw $t2, -764($fp)
	mul $t0, $t1, $t2
	sw $t0, -4680($fp)
	lw $t1, -4680($fp)
	li $t2, 30669
	sub $t0, $t1, $t2
	sw $t0, -4684($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -4688($fp)
	lw $t1, -512($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4692($fp)
	lw $t1, -4688($fp)
	lw $t2, -4692($fp)
	add $t0, $t1, $t2
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	lw $t0, 0($t1)
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 5264
	sub $t0, $t1, $t2
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	lw $t0, -768($fp)
	li $t1, 5436
	bge $t0, $t1, label582
	j label584
label584:
	lw $t0, -368($fp)
	li $t1, 0
	bne $t0, $t1, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -4708($fp)
label583:
	li $t0, 0
	sw $t0, -4712($fp)
	li $t1, 36128
	lw $t2, -624($fp)
	mul $t0, $t1, $t2
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	li $t1, 0
	bne $t0, $t1, label587
	j label586
label587:
	li $t0, 28293
	li $t1, 0
	bne $t0, $t1, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -4712($fp)
label586:
	addi $sp, $sp, -4
	lw $t0, -4712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -4720($fp)
	li $t1, 63435
	lw $t2, -168($fp)
	sub $t0, $t1, $t2
	sw $t0, -4724($fp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	li $t1, 0
	bne $t0, $t1, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -4676($fp)
label581:
	li $t1, 0
	lw $t2, -172($fp)
	sub $t0, $t1, $t2
	sw $t0, -4732($fp)
	li $t1, 0
	lw $t2, -4732($fp)
	sub $t0, $t1, $t2
	sw $t0, -4736($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -4672($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4740($fp)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -4744($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4748($fp)
	lw $t1, -4744($fp)
	lw $t2, -4748($fp)
	add $t0, $t1, $t2
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	lw $t0, 0($t1)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	li $t1, 0
	bne $t0, $t1, label589
	j label588
label588:
	li $t0, 1
	sw $t0, -4740($fp)
label589:
	lw $t0, -4740($fp)
	addi $sp, $sp, 7132
	move $v0, $t0
	jr $ra
	lw $t0, -4668($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -4672($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	lw $t0, -4668($fp)
	li $t1, 29778
	bge $t0, $t1, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -4764($fp)
label593:
	lw $t0, -4764($fp)
	lw $t1, -616($fp)
	blt $t0, $t1, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -4760($fp)
label591:
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -4768($fp)
	lw $t1, -4760($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4772($fp)
	lw $t1, -4768($fp)
	lw $t2, -4772($fp)
	add $t0, $t1, $t2
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	lw $t0, 0($t1)
	sw $t0, -4780($fp)
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -4784($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	add $t0, $t1, $t2
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	lw $t0, 0($t1)
	sw $t0, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 30540
	li $t1, 0
	bne $t0, $t1, label597
	j label595
label597:
	li $t0, 49471
	li $t1, 0
	bne $t0, $t1, label596
	j label595
label596:
	lw $t0, -704($fp)
	li $t1, 0
	bne $t0, $t1, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -4800($fp)
label595:
	li $t0, 0
	sw $t0, -4804($fp)
	lw $t1, -752($fp)
	lw $t2, -620($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	li $t1, 0
	bne $t0, $t1, label598
	j label600
label600:
	li $t0, 49045
	li $t1, 0
	bne $t0, $t1, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -4804($fp)
label599:
	li $t1, 0
	lw $t2, -256($fp)
	sub $t0, $t1, $t2
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	lw $t2, -180($fp)
	mul $t0, $t1, $t2
	sw $t0, -4816($fp)
	li $t1, 11777
	li $t2, 46402
	div $t1, $t2
	mflo $t0
	sw $t0, -4820($fp)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -4824($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4828($fp)
	lw $t1, -4824($fp)
	lw $t2, -4828($fp)
	add $t0, $t1, $t2
	sw $t0, -4832($fp)
	lw $t1, -4832($fp)
	lw $t0, 0($t1)
	sw $t0, -4836($fp)
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -4840($fp)
	lw $t1, -4796($fp)
	lw $t2, -4840($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4844($fp)
	lw $t1, -4780($fp)
	lw $t2, -4844($fp)
	add $t0, $t1, $t2
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	addi $sp, $sp, 7132
	move $v0, $t0
	jr $ra
	li $t1, 0
	lw $t2, -644($fp)
	sub $t0, $t1, $t2
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	lw $t2, -780($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -4856($fp)
	li $t0, 0
	sw $t0, -4860($fp)
	li $t1, 31701
	li $t2, 13476
	add $t0, $t1, $t2
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, -144($fp)
	bne $t0, $t1, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -4860($fp)
label605:
	li $t1, 58065
	lw $t2, -660($fp)
	mul $t0, $t1, $t2
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	lw $t2, -4636($fp)
	add $t0, $t1, $t2
	sw $t0, -4872($fp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	li $t1, 0
	bne $t0, $t1, label601
	j label602
label601:
	li $t0, 0
	sw $t0, -4880($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -4884($fp)
	lw $t1, -4640($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4888($fp)
	lw $t1, -4884($fp)
	lw $t2, -4888($fp)
	add $t0, $t1, $t2
	sw $t0, -4892($fp)
	lw $t1, -4892($fp)
	lw $t0, 0($t1)
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	li $t1, 0
	bne $t0, $t1, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -4880($fp)
label579:
	lw $t1, -4880($fp)
	lw $t2, -68($fp)
	mul $t0, $t1, $t2
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	li $t1, 21806
	bne $t0, $t1, label576
	j label577
label576:
label577:
	j label603
label602:
	li $t0, 0
	sw $t0, -4904($fp)
	li $t1, 0
	li $t2, 38158
	sub $t0, $t1, $t2
	sw $t0, -4908($fp)
	li $t1, 0
	lw $t2, -4908($fp)
	sub $t0, $t1, $t2
	sw $t0, -4912($fp)
	li $t1, 0
	lw $t2, -4912($fp)
	sub $t0, $t1, $t2
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	li $t1, 0
	bne $t0, $t1, label607
	j label606
label606:
	li $t0, 1
	sw $t0, -4904($fp)
label607:
	li $t1, 0
	lw $t2, -4904($fp)
	sub $t0, $t1, $t2
	sw $t0, -4920($fp)
label603:
	li $t0, 61682
	sw $t0, -652($fp)
	li $t0, 41738
	sw $t0, -712($fp)
	j label727
label729:
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -4924($fp)
	li $t0, 17110
	sw $t0, -4928($fp)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -4932($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4936($fp)
	lw $t1, -4932($fp)
	lw $t2, -4936($fp)
	add $t0, $t1, $t2
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	li $t1, 48048
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -4944($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4948($fp)
	lw $t1, -4944($fp)
	lw $t2, -4948($fp)
	add $t0, $t1, $t2
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	li $t1, 53543
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -4956($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4960($fp)
	lw $t1, -4956($fp)
	lw $t2, -4960($fp)
	add $t0, $t1, $t2
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	li $t1, 46981
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -4968($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4972($fp)
	lw $t1, -4968($fp)
	lw $t2, -4972($fp)
	add $t0, $t1, $t2
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	li $t1, 37433
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -4980($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4984($fp)
	lw $t1, -4980($fp)
	lw $t2, -4984($fp)
	add $t0, $t1, $t2
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	li $t1, 9808
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -4992($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -4996($fp)
	lw $t1, -4992($fp)
	lw $t2, -4996($fp)
	add $t0, $t1, $t2
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	li $t1, 12114
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -5004($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5008($fp)
	lw $t1, -5004($fp)
	lw $t2, -5008($fp)
	add $t0, $t1, $t2
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	li $t1, 42697
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -5016($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5020($fp)
	lw $t1, -5016($fp)
	lw $t2, -5020($fp)
	add $t0, $t1, $t2
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	li $t1, 15244
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -5028($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5032($fp)
	lw $t1, -5028($fp)
	lw $t2, -5032($fp)
	add $t0, $t1, $t2
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	li $t1, 48242
	sw $t1, 0($t0)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -5040($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5044($fp)
	lw $t1, -5040($fp)
	lw $t2, -5044($fp)
	add $t0, $t1, $t2
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	li $t1, 5454
	sw $t1, 0($t0)
	li $t0, 13143
	sw $t0, -5052($fp)
	li $t0, 0
	sw $t0, -5056($fp)
	li $t0, 6841
	li $t1, 0
	bne $t0, $t1, label715
	j label714
label714:
	li $t0, 1
	sw $t0, -5056($fp)
label715:
	li $t1, 0
	lw $t2, -5056($fp)
	sub $t0, $t1, $t2
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	li $t1, 0
	bne $t0, $t1, label712
	j label713
label712:
	li $t1, 62567
	li $t2, 1
	mul $t0, $t1, $t2
	sw $t0, -5064($fp)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -5068($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5072($fp)
	lw $t1, -5068($fp)
	lw $t2, -5072($fp)
	add $t0, $t1, $t2
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	lw $t0, 0($t1)
	sw $t0, -5080($fp)
	lw $t1, -5064($fp)
	lw $t2, -5080($fp)
	mul $t0, $t1, $t2
	sw $t0, -5084($fp)
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -5088($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5092($fp)
	lw $t1, -5088($fp)
	lw $t2, -5092($fp)
	add $t0, $t1, $t2
	sw $t0, -5096($fp)
	lw $t1, -5096($fp)
	lw $t0, 0($t1)
	sw $t0, -5100($fp)
	lw $t1, -5084($fp)
	lw $t2, -5100($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -5104($fp)
	li $t1, 29533
	li $t2, 19703
	add $t0, $t1, $t2
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	lw $t2, -88($fp)
	add $t0, $t1, $t2
	sw $t0, -5112($fp)
	li $t0, 0
	sw $t0, -5116($fp)
	lw $t0, -504($fp)
	lw $t1, -784($fp)
	beq $t0, $t1, label718
	j label720
label720:
	lw $t0, -368($fp)
	li $t1, 0
	bne $t0, $t1, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -5116($fp)
label719:
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -5120($fp)
	lw $t1, -4928($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5124($fp)
	lw $t1, -5120($fp)
	lw $t2, -5124($fp)
	add $t0, $t1, $t2
	sw $t0, -5128($fp)
	lw $t1, -5128($fp)
	lw $t0, 0($t1)
	sw $t0, -5132($fp)
	addi $sp, $sp, -4
	lw $t0, -5132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5136($fp)
	lw $t1, -5136($fp)
	lw $t2, -252($fp)
	mul $t0, $t1, $t2
	sw $t0, -5140($fp)
	lw $t0, -5104($fp)
	lw $t1, -5140($fp)
	bne $t0, $t1, label716
	j label717
label716:
	addi $sp, $sp, -20
	move $t0, $sp
	sw $t0, -5144($fp)
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -5148($fp)
	lw $t1, -5144($fp)
	move $t0, $t1
	sw $t0, -5152($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5156($fp)
	lw $t1, -5152($fp)
	lw $t2, -5156($fp)
	add $t0, $t1, $t2
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	li $t1, 64308
	sw $t1, 0($t0)
	lw $t1, -5144($fp)
	move $t0, $t1
	sw $t0, -5164($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5168($fp)
	lw $t1, -5164($fp)
	lw $t2, -5168($fp)
	add $t0, $t1, $t2
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	li $t1, 49103
	sw $t1, 0($t0)
	lw $t1, -5144($fp)
	move $t0, $t1
	sw $t0, -5176($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5180($fp)
	lw $t1, -5176($fp)
	lw $t2, -5180($fp)
	add $t0, $t1, $t2
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	li $t1, 17196
	sw $t1, 0($t0)
	lw $t1, -5144($fp)
	move $t0, $t1
	sw $t0, -5188($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5192($fp)
	lw $t1, -5188($fp)
	lw $t2, -5192($fp)
	add $t0, $t1, $t2
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	li $t1, 30473
	sw $t1, 0($t0)
	lw $t1, -5144($fp)
	move $t0, $t1
	sw $t0, -5200($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5204($fp)
	lw $t1, -5200($fp)
	lw $t2, -5204($fp)
	add $t0, $t1, $t2
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	li $t1, 62580
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5212($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5216($fp)
	lw $t1, -5212($fp)
	lw $t2, -5216($fp)
	add $t0, $t1, $t2
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	li $t1, 9725
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5224($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5228($fp)
	lw $t1, -5224($fp)
	lw $t2, -5228($fp)
	add $t0, $t1, $t2
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	li $t1, 52279
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5236($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5240($fp)
	lw $t1, -5236($fp)
	lw $t2, -5240($fp)
	add $t0, $t1, $t2
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	li $t1, 35202
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5248($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5252($fp)
	lw $t1, -5248($fp)
	lw $t2, -5252($fp)
	add $t0, $t1, $t2
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	li $t1, 5871
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5260($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5264($fp)
	lw $t1, -5260($fp)
	lw $t2, -5264($fp)
	add $t0, $t1, $t2
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	li $t1, 28482
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5272($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5276($fp)
	lw $t1, -5272($fp)
	lw $t2, -5276($fp)
	add $t0, $t1, $t2
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	li $t1, 52312
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5284($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5288($fp)
	lw $t1, -5284($fp)
	lw $t2, -5288($fp)
	add $t0, $t1, $t2
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	li $t1, 53919
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5296($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5300($fp)
	lw $t1, -5296($fp)
	lw $t2, -5300($fp)
	add $t0, $t1, $t2
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	li $t1, 16489
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5308($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5312($fp)
	lw $t1, -5308($fp)
	lw $t2, -5312($fp)
	add $t0, $t1, $t2
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	li $t1, 33757
	sw $t1, 0($t0)
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5320($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5324($fp)
	lw $t1, -5320($fp)
	lw $t2, -5324($fp)
	add $t0, $t1, $t2
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	li $t1, 25816
	sw $t1, 0($t0)
	li $t0, 26298
	sw $t0, -5332($fp)
	li $t0, 45872
	sw $t0, -5336($fp)
	lw $t1, -772($fp)
	lw $t2, -176($fp)
	mul $t0, $t1, $t2
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 2977
	div $t1, $t2
	mflo $t0
	sw $t0, -5344($fp)
	li $t0, 0
	sw $t0, -5348($fp)
	lw $t0, -140($fp)
	li $t1, 0
	bne $t0, $t1, label610
	j label609
label610:
	li $t0, 41542
	li $t1, 0
	bne $t0, $t1, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -5348($fp)
label609:
	li $t0, 0
	sw $t0, -5352($fp)
	lw $t1, -5144($fp)
	move $t0, $t1
	sw $t0, -5356($fp)
	lw $t1, -644($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5360($fp)
	lw $t1, -5356($fp)
	lw $t2, -5360($fp)
	add $t0, $t1, $t2
	sw $t0, -5364($fp)
	lw $t1, -5364($fp)
	lw $t0, 0($t1)
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	li $t1, 0
	bne $t0, $t1, label611
	j label613
label613:
	li $t0, 28578
	li $t1, 0
	bne $t0, $t1, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -5352($fp)
label612:
	li $t0, 0
	sw $t0, -5372($fp)
	lw $t0, -152($fp)
	li $t1, 0
	bne $t0, $t1, label615
	j label616
label616:
	lw $t0, -636($fp)
	li $t1, 0
	bne $t0, $t1, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -5372($fp)
label615:
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5376($fp)
	lw $t1, -5344($fp)
	lw $t2, -5376($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	move $t0, $t1
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -5384($fp)
	li $t0, 0
	sw $t0, -5388($fp)
	li $t1, 8431
	li $t2, 54686
	mul $t0, $t1, $t2
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	li $t1, 35419
	ble $t0, $t1, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -5388($fp)
label623:
	li $t0, 0
	sw $t0, -5396($fp)
	lw $t0, -708($fp)
	lw $t1, -492($fp)
	bne $t0, $t1, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -5396($fp)
label625:
	li $t0, 0
	sw $t0, -5400($fp)
	li $t0, 5462
	li $t1, 32071
	beq $t0, $t1, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -5400($fp)
label627:
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	move $t0, $t1
	sw $t0, -5404($fp)
	addi $sp, $sp, -4
	lw $t0, -5404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5408($fp)
	li $t1, 3854
	li $t2, 51486
	div $t1, $t2
	mflo $t0
	sw $t0, -5412($fp)
	lw $t1, -5412($fp)
	li $t2, 39997
	sub $t0, $t1, $t2
	sw $t0, -5416($fp)
	lw $t1, -156($fp)
	li $t2, 21759
	div $t1, $t2
	mflo $t0
	sw $t0, -5420($fp)
	lw $t1, -5420($fp)
	li $t2, 15484
	add $t0, $t1, $t2
	sw $t0, -5424($fp)
	lw $t1, -4636($fp)
	move $t0, $t1
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	move $t0, $t1
	sw $t0, -5428($fp)
	li $t0, 59700
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	move $t0, $t1
	sw $t0, -5432($fp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5436($fp)
	li $t1, 0
	lw $t2, -5436($fp)
	sub $t0, $t1, $t2
	sw $t0, -5440($fp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, -516($fp)
	blt $t0, $t1, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -5384($fp)
label621:
	lw $t1, -672($fp)
	li $t2, 20531
	sub $t0, $t1, $t2
	sw $t0, -5448($fp)
	li $t0, 0
	sw $t0, -5452($fp)
	lw $t0, -292($fp)
	li $t1, 0
	bne $t0, $t1, label629
	j label630
label630:
	li $t0, 64587
	li $t1, 0
	bne $t0, $t1, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -5452($fp)
label629:
	lw $t1, -520($fp)
	li $t2, 11361
	div $t1, $t2
	mflo $t0
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 51005
	mul $t0, $t1, $t2
	sw $t0, -5460($fp)
	lw $t1, -712($fp)
	move $t0, $t1
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	move $t0, $t1
	sw $t0, -5464($fp)
	li $t0, 0
	sw $t0, -5468($fp)
	li $t1, 61631
	lw $t2, -164($fp)
	mul $t0, $t1, $t2
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	li $t1, 0
	bne $t0, $t1, label633
	j label632
label633:
	lw $t0, -252($fp)
	li $t1, 0
	bne $t0, $t1, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -5468($fp)
label632:
	li $t0, 0
	sw $t0, -5476($fp)
	li $t1, 21086
	li $t2, 37748
	div $t1, $t2
	mflo $t0
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	li $t1, 0
	bne $t0, $t1, label636
	j label635
label636:
	li $t0, 31297
	li $t1, 0
	bne $t0, $t1, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -5476($fp)
label635:
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t1, -524($fp)
	lw $t2, -5336($fp)
	sub $t0, $t1, $t2
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, -140($fp)
	bge $t0, $t1, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -5488($fp)
label638:
	li $t1, 26958
	li $t2, 694
	div $t1, $t2
	mflo $t0
	sw $t0, -5496($fp)
	li $t0, 0
	sw $t0, -5500($fp)
	lw $t0, -252($fp)
	li $t1, 18074
	bgt $t0, $t1, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -5500($fp)
label640:
	addi $sp, $sp, -4
	lw $t0, -5500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 15341
	sub $t0, $t1, $t2
	sw $t0, -5508($fp)
	li $t0, 0
	sw $t0, -5512($fp)
	li $t0, 0
	sw $t0, -5516($fp)
	li $t0, 17184
	li $t1, 0
	bne $t0, $t1, label645
	j label643
label645:
	li $t0, 51831
	li $t1, 0
	bne $t0, $t1, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -5516($fp)
label644:
	li $t0, 0
	sw $t0, -5520($fp)
	lw $t0, -256($fp)
	li $t1, 0
	bne $t0, $t1, label647
	j label648
label648:
	li $t0, 41158
	li $t1, 0
	bne $t0, $t1, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -5520($fp)
label647:
	li $t0, 0
	sw $t0, -5524($fp)
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -5528($fp)
	lw $t1, -188($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5532($fp)
	lw $t1, -5528($fp)
	lw $t2, -5532($fp)
	add $t0, $t1, $t2
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	lw $t0, 0($t1)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	li $t1, 0
	bne $t0, $t1, label651
	j label650
label651:
	li $t0, 43482
	li $t1, 0
	bne $t0, $t1, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -5524($fp)
label650:
	addi $sp, $sp, -4
	lw $t0, -5524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	li $t1, 32167
	ble $t0, $t1, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -5512($fp)
label642:
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5548($fp)
	li $t1, 0
	lw $t2, -5548($fp)
	sub $t0, $t1, $t2
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	li $t1, 0
	bne $t0, $t1, label617
	j label619
label619:
	li $t0, 0
	sw $t0, -5556($fp)
	lw $t0, -88($fp)
	li $t1, 44135
	beq $t0, $t1, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -5556($fp)
label653:
	lw $t1, -5148($fp)
	move $t0, $t1
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5564($fp)
	lw $t1, -5560($fp)
	lw $t2, -5564($fp)
	add $t0, $t1, $t2
	sw $t0, -5568($fp)
	lw $t1, -5568($fp)
	lw $t0, 0($t1)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	li $t1, 0
	bne $t0, $t1, label617
	j label618
label617:
label618:
label717:
label713:
	li $t0, 19488
	sw $t0, -5576($fp)
	li $t0, 60746
	sw $t0, -5580($fp)
	li $t0, 52567
	sw $t0, -5584($fp)
	li $t0, 8638
	sw $t0, -5588($fp)
	li $t0, 30629
	sw $t0, -5592($fp)
	li $t0, 58029
	sw $t0, -5596($fp)
	li $t0, 40710
	sw $t0, -5600($fp)
	li $t0, 34483
	sw $t0, -5604($fp)
	li $t0, 43980
	sw $t0, -5608($fp)
	li $t0, 15171
	sw $t0, -5612($fp)
	li $t0, 56243
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	li $t0, 0
	sw $t0, -5624($fp)
	li $t0, 9336
	li $t1, 11238
	bne $t0, $t1, label658
	j label657
label658:
	li $t0, 58515
	li $t1, 0
	bne $t0, $t1, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -5624($fp)
label657:
	li $t0, 0
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	lw $t0, -5608($fp)
	lw $t1, -180($fp)
	ble $t0, $t1, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -5632($fp)
label662:
	lw $t0, -5632($fp)
	lw $t1, -732($fp)
	bge $t0, $t1, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -5628($fp)
label660:
	li $t0, 0
	sw $t0, -5636($fp)
	li $t0, 20697
	li $t1, 0
	bne $t0, $t1, label666
	j label665
label666:
	lw $t0, -520($fp)
	li $t1, 0
	bne $t0, $t1, label663
	j label665
label665:
	lw $t0, -5612($fp)
	li $t1, 0
	bne $t0, $t1, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -5636($fp)
label664:
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 59464
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	li $t1, 0
	bne $t0, $t1, label655
	j label654
label654:
	li $t0, 1
	sw $t0, -5620($fp)
label655:
	li $t1, 0
	li $t2, 62243
	sub $t0, $t1, $t2
	sw $t0, -5644($fp)
	lw $t1, -5620($fp)
	lw $t2, -5644($fp)
	mul $t0, $t1, $t2
	sw $t0, -5648($fp)
	li $t1, 54611
	lw $t2, -612($fp)
	mul $t0, $t1, $t2
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	lw $t1, -644($fp)
	lw $t2, -152($fp)
	mul $t0, $t1, $t2
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	li $t1, 0
	bne $t0, $t1, label667
	j label669
label669:
	lw $t0, -500($fp)
	li $t1, 0
	bne $t0, $t1, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -5656($fp)
label668:
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -5664($fp)
	lw $t1, -180($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5668($fp)
	lw $t1, -5664($fp)
	lw $t2, -5668($fp)
	add $t0, $t1, $t2
	sw $t0, -5672($fp)
	lw $t1, -5672($fp)
	lw $t0, 0($t1)
	sw $t0, -5676($fp)
	li $t0, 41783
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	move $t0, $t1
	sw $t0, -5680($fp)
	li $t0, 34456
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	move $t0, $t1
	sw $t0, -5684($fp)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -5688($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5692($fp)
	lw $t1, -5688($fp)
	lw $t2, -5692($fp)
	add $t0, $t1, $t2
	sw $t0, -5696($fp)
	lw $t1, -5696($fp)
	lw $t0, 0($t1)
	sw $t0, -5700($fp)
	lw $t1, -5700($fp)
	li $t2, 35150
	mul $t0, $t1, $t2
	sw $t0, -5704($fp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5708($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -5712($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5716($fp)
	lw $t1, -5712($fp)
	lw $t2, -5716($fp)
	add $t0, $t1, $t2
	sw $t0, -5720($fp)
	lw $t1, -52($fp)
	move $t0, $t1
	sw $t0, -5724($fp)
	lw $t1, -5720($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5728($fp)
	lw $t1, -5724($fp)
	lw $t2, -5728($fp)
	add $t0, $t1, $t2
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	lw $t0, 0($t1)
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	li $t1, 0
	bne $t0, $t1, label670
	j label673
label673:
	li $t0, 0
	sw $t0, -5740($fp)
	lw $t1, -5580($fp)
	li $t2, 52334
	div $t1, $t2
	mflo $t0
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, -252($fp)
	blt $t0, $t1, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -5740($fp)
label675:
	li $t1, 0
	lw $t2, -284($fp)
	sub $t0, $t1, $t2
	sw $t0, -5748($fp)
	li $t1, 0
	lw $t2, -736($fp)
	sub $t0, $t1, $t2
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 24742
	div $t1, $t2
	mflo $t0
	sw $t0, -5756($fp)
	li $t0, 0
	sw $t0, -5760($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	add $t0, $t1, $t2
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	li $t1, 0
	bne $t0, $t1, label676
	j label678
label678:
	lw $t0, -520($fp)
	li $t1, 0
	bne $t0, $t1, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -5760($fp)
label677:
	li $t0, 0
	sw $t0, -5768($fp)
	li $t0, 59705
	lw $t1, -748($fp)
	blt $t0, $t1, label679
	j label681
label681:
	li $t0, 30280
	li $t1, 0
	bne $t0, $t1, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -5768($fp)
label680:
	li $t0, 56909
	sw $t0, -5584($fp)
	lw $t1, -5584($fp)
	move $t0, $t1
	sw $t0, -5772($fp)
	lw $t1, -708($fp)
	move $t0, $t1
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	move $t0, $t1
	sw $t0, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	lw $t1, -508($fp)
	li $t2, 38304
	mul $t0, $t1, $t2
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, -672($fp)
	beq $t0, $t1, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -5780($fp)
label683:
	li $t0, 0
	sw $t0, -5788($fp)
	li $t0, 49769
	li $t1, 0
	bne $t0, $t1, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -5788($fp)
label685:
	lw $t1, -5788($fp)
	li $t2, 52119
	mul $t0, $t1, $t2
	sw $t0, -5792($fp)
	addi $sp, $sp, -4
	lw $t0, -5792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5796($fp)
	lw $t1, -732($fp)
	li $t2, 25335
	div $t1, $t2
	mflo $t0
	sw $t0, -5800($fp)
	lw $t1, -752($fp)
	lw $t2, -756($fp)
	sub $t0, $t1, $t2
	sw $t0, -5804($fp)
	li $t0, 0
	sw $t0, -5808($fp)
	li $t1, 17213
	lw $t2, -4640($fp)
	sub $t0, $t1, $t2
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5588($fp)
	bne $t0, $t1, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -5808($fp)
label687:
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 58407
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5816($fp)
	li $t0, 0
	sw $t0, -5820($fp)
	lw $t1, -148($fp)
	li $t2, 17829
	mul $t0, $t1, $t2
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	li $t1, 0
	bne $t0, $t1, label688
	j label690
label690:
	li $t0, 33581
	li $t1, 0
	bne $t0, $t1, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -5820($fp)
label689:
	li $t0, 0
	sw $t0, -5828($fp)
	li $t1, 0
	li $t2, 51696
	sub $t0, $t1, $t2
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	li $t1, 0
	bne $t0, $t1, label692
	j label691
label691:
	li $t0, 1
	sw $t0, -5828($fp)
label692:
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5836($fp)
	addi $sp, $sp, -4
	lw $t0, -5836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, -492($fp)
	bne $t0, $t1, label670
	j label672
label672:
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 61809
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	move $t0, $t1
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -5592($fp)
	lw $t1, -616($fp)
	bgt $t0, $t1, label698
	j label697
label698:
	lw $t0, -168($fp)
	li $t1, 0
	bne $t0, $t1, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -5852($fp)
label697:
	li $t0, 0
	sw $t0, -5856($fp)
	lw $t0, -496($fp)
	li $t1, 0
	bne $t0, $t1, label701
	j label700
label701:
	li $t0, 48753
	li $t1, 0
	bne $t0, $t1, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -5856($fp)
label700:
	li $t0, 0
	sw $t0, -5860($fp)
	li $t0, 42403
	lw $t1, -5596($fp)
	bge $t0, $t1, label702
	j label704
label704:
	lw $t0, -5600($fp)
	li $t1, 0
	bne $t0, $t1, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -5860($fp)
label703:
	li $t1, 55737
	lw $t2, -760($fp)
	sub $t0, $t1, $t2
	sw $t0, -5864($fp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	li $t1, 0
	bne $t0, $t1, label693
	j label695
label695:
	lw $t0, -368($fp)
	li $t1, 0
	bne $t0, $t1, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -5844($fp)
label694:
	li $t0, 0
	sw $t0, -5872($fp)
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -5876($fp)
	lw $t1, -5604($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5880($fp)
	lw $t1, -5876($fp)
	lw $t2, -5880($fp)
	add $t0, $t1, $t2
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	lw $t0, 0($t1)
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	li $t1, 58089
	blt $t0, $t1, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -5872($fp)
label706:
	li $t0, 0
	sw $t0, -5892($fp)
	lw $t0, -636($fp)
	lw $t1, -60($fp)
	bne $t0, $t1, label707
	j label709
label709:
	li $t0, 53642
	li $t1, 0
	bne $t0, $t1, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -5892($fp)
label708:
	li $t0, 0
	sw $t0, -5896($fp)
	li $t0, 48716
	li $t1, 0
	bne $t0, $t1, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -5896($fp)
label711:
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -5900($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5904($fp)
	lw $t1, -5900($fp)
	lw $t2, -5904($fp)
	add $t0, $t1, $t2
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	lw $t0, 0($t1)
	sw $t0, -5912($fp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	li $t1, 0
	bne $t0, $t1, label670
	j label671
label670:
	lw $t1, -4924($fp)
	move $t0, $t1
	sw $t0, -5920($fp)
	lw $t1, -708($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5924($fp)
	lw $t1, -5920($fp)
	lw $t2, -5924($fp)
	add $t0, $t1, $t2
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	lw $t0, 0($t1)
	sw $t0, -5932($fp)
	li $t1, 37791
	lw $t2, -5576($fp)
	mul $t0, $t1, $t2
	sw $t0, -5936($fp)
	lw $t1, -5932($fp)
	lw $t2, -5936($fp)
	add $t0, $t1, $t2
	sw $t0, -5940($fp)
	lw $t1, -5940($fp)
	move $t0, $t1
	sw $t0, -640($fp)
label671:
	li $t0, 0
	sw $t0, -5944($fp)
	li $t0, 55033
	li $t1, 0
	bne $t0, $t1, label722
	j label721
label721:
	li $t0, 1
	sw $t0, -5944($fp)
label722:
	li $t1, 0
	lw $t2, -5944($fp)
	sub $t0, $t1, $t2
	sw $t0, -5948($fp)
	lw $t1, -5948($fp)
	move $t0, $t1
	sw $t0, -5052($fp)
	li $t0, 0
	sw $t0, -5952($fp)
	li $t1, 0
	li $t2, 19269
	sub $t0, $t1, $t2
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	li $t1, 0
	bne $t0, $t1, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -5952($fp)
label726:
	lw $t0, -780($fp)
	lw $t1, -5952($fp)
	beq $t0, $t1, label723
	j label724
label723:
label724:
	lw $t0, -4636($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -4640($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -508($fp)
	lw $t2, -292($fp)
	mul $t0, $t1, $t2
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 58164
	sub $t0, $t1, $t2
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t1, 58239
	lw $t2, -712($fp)
	mul $t0, $t1, $t2
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	li $t1, 0
	bne $t0, $t1, label735
	j label734
label735:
	lw $t0, -64($fp)
	li $t1, 0
	bne $t0, $t1, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -5968($fp)
label734:
	li $t1, 0
	li $t2, 54420
	sub $t0, $t1, $t2
	sw $t0, -5976($fp)
	li $t1, 0
	lw $t2, -5976($fp)
	sub $t0, $t1, $t2
	sw $t0, -5980($fp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	lw $t2, -784($fp)
	sub $t0, $t1, $t2
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	addi $sp, $sp, 7232
	move $v0, $t0
	jr $ra
label755:
	j label750
label752:
	lw $t0, -60($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -5992($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -5996($fp)
	lw $t1, -5992($fp)
	lw $t2, -5996($fp)
	add $t0, $t1, $t2
	sw $t0, -6000($fp)
	lw $t1, -6000($fp)
	lw $t0, 0($t1)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -6008($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6012($fp)
	lw $t1, -6008($fp)
	lw $t2, -6012($fp)
	add $t0, $t1, $t2
	sw $t0, -6016($fp)
	lw $t1, -6016($fp)
	lw $t0, 0($t1)
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -6024($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6028($fp)
	lw $t1, -6024($fp)
	lw $t2, -6028($fp)
	add $t0, $t1, $t2
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	lw $t0, 0($t1)
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -6040($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6044($fp)
	lw $t1, -6040($fp)
	lw $t2, -6044($fp)
	add $t0, $t1, $t2
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	lw $t0, 0($t1)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -6056($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6060($fp)
	lw $t1, -6056($fp)
	lw $t2, -6060($fp)
	add $t0, $t1, $t2
	sw $t0, -6064($fp)
	lw $t1, -6064($fp)
	lw $t0, 0($t1)
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -6072($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6076($fp)
	lw $t1, -6072($fp)
	lw $t2, -6076($fp)
	add $t0, $t1, $t2
	sw $t0, -6080($fp)
	lw $t1, -6080($fp)
	lw $t0, 0($t1)
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -6088($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6092($fp)
	lw $t1, -6088($fp)
	lw $t2, -6092($fp)
	add $t0, $t1, $t2
	sw $t0, -6096($fp)
	lw $t1, -6096($fp)
	lw $t0, 0($t1)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -6104($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6108($fp)
	lw $t1, -6104($fp)
	lw $t2, -6108($fp)
	add $t0, $t1, $t2
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	lw $t0, 0($t1)
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -6120($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6124($fp)
	lw $t1, -6120($fp)
	lw $t2, -6124($fp)
	add $t0, $t1, $t2
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	lw $t0, 0($t1)
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -6136($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6140($fp)
	lw $t1, -6136($fp)
	lw $t2, -6140($fp)
	add $t0, $t1, $t2
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	lw $t0, 0($t1)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -6152($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6156($fp)
	lw $t1, -6152($fp)
	lw $t2, -6156($fp)
	add $t0, $t1, $t2
	sw $t0, -6160($fp)
	lw $t1, -6160($fp)
	lw $t0, 0($t1)
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -6168($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6172($fp)
	lw $t1, -6168($fp)
	lw $t2, -6172($fp)
	add $t0, $t1, $t2
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	lw $t0, 0($t1)
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -6184($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6188($fp)
	lw $t1, -6184($fp)
	lw $t2, -6188($fp)
	add $t0, $t1, $t2
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	lw $t0, 0($t1)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -6200($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6204($fp)
	lw $t1, -6200($fp)
	lw $t2, -6204($fp)
	add $t0, $t1, $t2
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	lw $t0, 0($t1)
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -6216($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6220($fp)
	lw $t1, -6216($fp)
	lw $t2, -6220($fp)
	add $t0, $t1, $t2
	sw $t0, -6224($fp)
	lw $t1, -6224($fp)
	lw $t0, 0($t1)
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -40($fp)
	move $t0, $t1
	sw $t0, -6232($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6236($fp)
	lw $t1, -6232($fp)
	lw $t2, -6236($fp)
	add $t0, $t1, $t2
	sw $t0, -6240($fp)
	lw $t1, -6240($fp)
	lw $t0, 0($t1)
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6248($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6252($fp)
	lw $t1, -6248($fp)
	lw $t2, -6252($fp)
	add $t0, $t1, $t2
	sw $t0, -6256($fp)
	lw $t1, -6256($fp)
	lw $t0, 0($t1)
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6264($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6268($fp)
	lw $t1, -6264($fp)
	lw $t2, -6268($fp)
	add $t0, $t1, $t2
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	lw $t0, 0($t1)
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6280($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6284($fp)
	lw $t1, -6280($fp)
	lw $t2, -6284($fp)
	add $t0, $t1, $t2
	sw $t0, -6288($fp)
	lw $t1, -6288($fp)
	lw $t0, 0($t1)
	sw $t0, -6292($fp)
	lw $t0, -6292($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6296($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6300($fp)
	lw $t1, -6296($fp)
	lw $t2, -6300($fp)
	add $t0, $t1, $t2
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	lw $t0, 0($t1)
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6312($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6316($fp)
	lw $t1, -6312($fp)
	lw $t2, -6316($fp)
	add $t0, $t1, $t2
	sw $t0, -6320($fp)
	lw $t1, -6320($fp)
	lw $t0, 0($t1)
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6328($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6332($fp)
	lw $t1, -6328($fp)
	lw $t2, -6332($fp)
	add $t0, $t1, $t2
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	lw $t0, 0($t1)
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6344($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6348($fp)
	lw $t1, -6344($fp)
	lw $t2, -6348($fp)
	add $t0, $t1, $t2
	sw $t0, -6352($fp)
	lw $t1, -6352($fp)
	lw $t0, 0($t1)
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6360($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6364($fp)
	lw $t1, -6360($fp)
	lw $t2, -6364($fp)
	add $t0, $t1, $t2
	sw $t0, -6368($fp)
	lw $t1, -6368($fp)
	lw $t0, 0($t1)
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6376($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6380($fp)
	lw $t1, -6376($fp)
	lw $t2, -6380($fp)
	add $t0, $t1, $t2
	sw $t0, -6384($fp)
	lw $t1, -6384($fp)
	lw $t0, 0($t1)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -6392($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6396($fp)
	lw $t1, -6392($fp)
	lw $t2, -6396($fp)
	add $t0, $t1, $t2
	sw $t0, -6400($fp)
	lw $t1, -6400($fp)
	lw $t0, 0($t1)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6408($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6412($fp)
	lw $t1, -6408($fp)
	lw $t2, -6412($fp)
	add $t0, $t1, $t2
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	lw $t0, 0($t1)
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6424($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6428($fp)
	lw $t1, -6424($fp)
	lw $t2, -6428($fp)
	add $t0, $t1, $t2
	sw $t0, -6432($fp)
	lw $t1, -6432($fp)
	lw $t0, 0($t1)
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6440($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6444($fp)
	lw $t1, -6440($fp)
	lw $t2, -6444($fp)
	add $t0, $t1, $t2
	sw $t0, -6448($fp)
	lw $t1, -6448($fp)
	lw $t0, 0($t1)
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6456($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6460($fp)
	lw $t1, -6456($fp)
	lw $t2, -6460($fp)
	add $t0, $t1, $t2
	sw $t0, -6464($fp)
	lw $t1, -6464($fp)
	lw $t0, 0($t1)
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6472($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6476($fp)
	lw $t1, -6472($fp)
	lw $t2, -6476($fp)
	add $t0, $t1, $t2
	sw $t0, -6480($fp)
	lw $t1, -6480($fp)
	lw $t0, 0($t1)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6488($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6492($fp)
	lw $t1, -6488($fp)
	lw $t2, -6492($fp)
	add $t0, $t1, $t2
	sw $t0, -6496($fp)
	lw $t1, -6496($fp)
	lw $t0, 0($t1)
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -6504($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6508($fp)
	lw $t1, -6504($fp)
	lw $t2, -6508($fp)
	add $t0, $t1, $t2
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	lw $t0, 0($t1)
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -52($fp)
	move $t0, $t1
	sw $t0, -6520($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6524($fp)
	lw $t1, -6520($fp)
	lw $t2, -6524($fp)
	add $t0, $t1, $t2
	sw $t0, -6528($fp)
	lw $t1, -6528($fp)
	lw $t0, 0($t1)
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -52($fp)
	move $t0, $t1
	sw $t0, -6536($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6540($fp)
	lw $t1, -6536($fp)
	lw $t2, -6540($fp)
	add $t0, $t1, $t2
	sw $t0, -6544($fp)
	lw $t1, -6544($fp)
	lw $t0, 0($t1)
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -6552($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6556($fp)
	lw $t1, -6552($fp)
	lw $t2, -6556($fp)
	add $t0, $t1, $t2
	sw $t0, -6560($fp)
	lw $t1, -6560($fp)
	lw $t0, 0($t1)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -6568($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6572($fp)
	lw $t1, -6568($fp)
	lw $t2, -6572($fp)
	add $t0, $t1, $t2
	sw $t0, -6576($fp)
	lw $t1, -6576($fp)
	lw $t0, 0($t1)
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -6584($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6588($fp)
	lw $t1, -6584($fp)
	lw $t2, -6588($fp)
	add $t0, $t1, $t2
	sw $t0, -6592($fp)
	lw $t1, -6592($fp)
	lw $t0, 0($t1)
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -6600($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6604($fp)
	lw $t1, -6600($fp)
	lw $t2, -6604($fp)
	add $t0, $t1, $t2
	sw $t0, -6608($fp)
	lw $t1, -6608($fp)
	lw $t0, 0($t1)
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -56($fp)
	move $t0, $t1
	sw $t0, -6616($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6620($fp)
	lw $t1, -6616($fp)
	lw $t2, -6620($fp)
	add $t0, $t1, $t2
	sw $t0, -6624($fp)
	lw $t1, -6624($fp)
	lw $t0, 0($t1)
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6632($fp)
	li $t1, 31074
	li $t2, 11250
	sub $t0, $t1, $t2
	sw $t0, -6636($fp)
	li $t1, 41218
	lw $t2, -492($fp)
	mul $t0, $t1, $t2
	sw $t0, -6640($fp)
	lw $t1, -6640($fp)
	lw $t2, -644($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -6644($fp)
	li $t0, 0
	sw $t0, -6648($fp)
	li $t0, 0
	sw $t0, -6652($fp)
	lw $t0, -648($fp)
	lw $t1, -76($fp)
	ble $t0, $t1, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -6652($fp)
label761:
	lw $t0, -6652($fp)
	li $t1, 55816
	bne $t0, $t1, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -6648($fp)
label759:
	lw $t1, -656($fp)
	move $t0, $t1
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	move $t0, $t1
	sw $t0, -6656($fp)
	li $t0, 0
	sw $t0, -6660($fp)
	li $t0, 0
	sw $t0, -6664($fp)
	li $t0, 5419
	li $t1, 0
	bne $t0, $t1, label765
	j label764
label764:
	li $t0, 1
	sw $t0, -6664($fp)
label765:
	lw $t0, -6664($fp)
	li $t1, 5963
	blt $t0, $t1, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -6660($fp)
label763:
	addi $sp, $sp, -4
	lw $t0, -6660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -6668($fp)
	lw $t1, -6668($fp)
	li $t2, 47190
	mul $t0, $t1, $t2
	sw $t0, -6672($fp)
	lw $t1, -660($fp)
	li $t2, 43723
	mul $t0, $t1, $t2
	sw $t0, -6676($fp)
	li $t0, 0
	sw $t0, -6680($fp)
	lw $t1, -252($fp)
	move $t0, $t1
	sw $t0, -156($fp)
	lw $t1, -156($fp)
	move $t0, $t1
	sw $t0, -6684($fp)
	li $t0, 0
	sw $t0, -6688($fp)
	lw $t1, -512($fp)
	lw $t2, -664($fp)
	add $t0, $t1, $t2
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	li $t1, 55732
	bgt $t0, $t1, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -6688($fp)
label770:
	li $t0, 0
	sw $t0, -6696($fp)
	lw $t1, -668($fp)
	lw $t2, -672($fp)
	mul $t0, $t1, $t2
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, -780($fp)
	beq $t0, $t1, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -6696($fp)
label772:
	lw $t1, -36($fp)
	move $t0, $t1
	sw $t0, -6704($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -6708($fp)
	lw $t1, -6704($fp)
	lw $t2, -6708($fp)
	add $t0, $t1, $t2
	sw $t0, -6712($fp)
	lw $t1, -6712($fp)
	lw $t0, 0($t1)
	sw $t0, -6716($fp)
	li $t0, 0
	sw $t0, -6720($fp)
	lw $t0, -744($fp)
	lw $t1, -788($fp)
	ble $t0, $t1, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -6720($fp)
label774:
	addi $sp, $sp, -4
	lw $t0, -6720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	li $t1, 0
	bne $t0, $t1, label768
	j label767
label768:
	li $t0, 48603
	li $t1, 0
	bne $t0, $t1, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -6680($fp)
label767:
	addi $sp, $sp, -4
	lw $t0, -6680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -6728($fp)
	li $t1, 0
	lw $t2, -6728($fp)
	sub $t0, $t1, $t2
	sw $t0, -6732($fp)
	li $t0, 0
	sw $t0, -6736($fp)
	lw $t0, -72($fp)
	lw $t1, -728($fp)
	beq $t0, $t1, label775
	j label777
label777:
	lw $t0, -716($fp)
	li $t1, 0
	bne $t0, $t1, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -6736($fp)
label776:
	addi $sp, $sp, -4
	lw $t0, -6736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -6740($fp)
	lw $t1, -720($fp)
	lw $t2, -508($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -6744($fp)
	lw $t1, -6744($fp)
	lw $t2, -784($fp)
	mul $t0, $t1, $t2
	sw $t0, -6748($fp)
	lw $t1, -724($fp)
	lw $t2, -780($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -6752($fp)
	lw $t1, -6748($fp)
	lw $t2, -6752($fp)
	sub $t0, $t1, $t2
	sw $t0, -6756($fp)
	lw $t0, -6740($fp)
	lw $t1, -6756($fp)
	beq $t0, $t1, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -6632($fp)
label757:
	lw $t0, -6632($fp)
	addi $sp, $sp, 7232
	move $v0, $t0
	jr $ra

lcx_id_HLYMzB:
	addi $sp, $sp, -920
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 50986
	sw $t0, -20($fp)
	li $t0, 21352
	sw $t0, -24($fp)
	li $t0, 16649
	sw $t0, -28($fp)
label841:
	li $t0, 0
	sw $t0, -32($fp)
	li $t1, 17625
	lw $t2, -28($fp)
	mul $t0, $t1, $t2
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	lw $t2, -24($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -40($fp)
	li $t0, 37147
	lw $t1, -40($fp)
	ble $t0, $t1, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -32($fp)
label845:
	lw $t0, -32($fp)
	lw $t1, -12($fp)
	bgt $t0, $t1, label842
	j label843
label842:
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -44($fp)
	addi $sp, $sp, -40
	move $t0, $sp
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -52($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -56($fp)
	lw $t1, -52($fp)
	lw $t2, -56($fp)
	add $t0, $t1, $t2
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	li $t1, 65402
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -64($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -68($fp)
	lw $t1, -64($fp)
	lw $t2, -68($fp)
	add $t0, $t1, $t2
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	li $t1, 14014
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -76($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -80($fp)
	lw $t1, -76($fp)
	lw $t2, -80($fp)
	add $t0, $t1, $t2
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	li $t1, 7826
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -88($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -92($fp)
	lw $t1, -88($fp)
	lw $t2, -92($fp)
	add $t0, $t1, $t2
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	li $t1, 57955
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -100($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -104($fp)
	lw $t1, -100($fp)
	lw $t2, -104($fp)
	add $t0, $t1, $t2
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	li $t1, 2120
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -112($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -116($fp)
	lw $t1, -112($fp)
	lw $t2, -116($fp)
	add $t0, $t1, $t2
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	li $t1, 56542
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -124($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -128($fp)
	lw $t1, -124($fp)
	lw $t2, -128($fp)
	add $t0, $t1, $t2
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	li $t1, 5669
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -136($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -140($fp)
	lw $t1, -136($fp)
	lw $t2, -140($fp)
	add $t0, $t1, $t2
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	li $t1, 52470
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -148($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -152($fp)
	lw $t1, -148($fp)
	lw $t2, -152($fp)
	add $t0, $t1, $t2
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	li $t1, 28798
	sw $t1, 0($t0)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -160($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -164($fp)
	lw $t1, -160($fp)
	lw $t2, -164($fp)
	add $t0, $t1, $t2
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	li $t1, 60702
	sw $t1, 0($t0)
	li $t0, 6203
	sw $t0, -172($fp)
	li $t0, 21426
	sw $t0, -176($fp)
	li $t0, 53405
	sw $t0, -180($fp)
	li $t0, 60623
	sw $t0, -184($fp)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -188($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -192($fp)
	lw $t1, -188($fp)
	lw $t2, -192($fp)
	add $t0, $t1, $t2
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	li $t1, 52500
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -200($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -204($fp)
	lw $t1, -200($fp)
	lw $t2, -204($fp)
	add $t0, $t1, $t2
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 64655
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -212($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -216($fp)
	lw $t1, -212($fp)
	lw $t2, -216($fp)
	add $t0, $t1, $t2
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	li $t1, 36306
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -224($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -228($fp)
	lw $t1, -224($fp)
	lw $t2, -228($fp)
	add $t0, $t1, $t2
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	li $t1, 42781
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -236($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -240($fp)
	lw $t1, -236($fp)
	lw $t2, -240($fp)
	add $t0, $t1, $t2
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	li $t1, 4538
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -248($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -252($fp)
	lw $t1, -248($fp)
	lw $t2, -252($fp)
	add $t0, $t1, $t2
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	li $t1, 42269
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -260($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -264($fp)
	lw $t1, -260($fp)
	lw $t2, -264($fp)
	add $t0, $t1, $t2
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	li $t1, 24435
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -272($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -276($fp)
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	add $t0, $t1, $t2
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	li $t1, 48262
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -284($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -288($fp)
	lw $t1, -284($fp)
	lw $t2, -288($fp)
	add $t0, $t1, $t2
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	li $t1, 32465
	sw $t1, 0($t0)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -296($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	add $t0, $t1, $t2
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	li $t1, 58208
	sw $t1, 0($t0)
	li $t0, 51785
	sw $t0, -308($fp)
	li $t0, 15532
	sw $t0, -312($fp)
	li $t0, 43659
	sw $t0, -316($fp)
	li $t0, 7601
	sw $t0, -320($fp)
	li $t0, 32181
	sw $t0, -324($fp)
	li $t0, 15270
	sw $t0, -328($fp)
	li $t0, 25226
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	li $t1, 32047
	li $t2, 29284
	div $t1, $t2
	mflo $t0
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	lw $t2, -176($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -344($fp)
	lw $t1, -316($fp)
	lw $t2, -12($fp)
	mul $t0, $t1, $t2
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	lw $t2, -180($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -352($fp)
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_HLYMzB
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 8
	move $t0, $v0
	sw $t0, -356($fp)
	lw $t1, -344($fp)
	lw $t2, -356($fp)
	sub $t0, $t1, $t2
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -28($fp)
	lw $t1, -24($fp)
	ble $t0, $t1, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -368($fp)
label785:
	lw $t0, -368($fp)
	li $t1, 24466
	bgt $t0, $t1, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -364($fp)
label783:
	li $t1, 31405
	li $t2, 24058
	mul $t0, $t1, $t2
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	lw $t2, -176($fp)
	mul $t0, $t1, $t2
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -380($fp)
label787:
	li $t0, 30135
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -172($fp)
	li $t1, 0
	bne $t0, $t1, label788
	j label791
label791:
	lw $t0, -324($fp)
	li $t1, 0
	bne $t0, $t1, label788
	j label790
label790:
	lw $t0, -320($fp)
	li $t1, 0
	bne $t0, $t1, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -388($fp)
label789:
	li $t0, 0
	sw $t0, -392($fp)
	lw $t1, -176($fp)
	lw $t2, -172($fp)
	mul $t0, $t1, $t2
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	li $t1, 18339
	beq $t0, $t1, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -392($fp)
label793:
	li $t0, 0
	sw $t0, -400($fp)
	lw $t1, -332($fp)
	lw $t2, -324($fp)
	add $t0, $t1, $t2
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	li $t1, 0
	bne $t0, $t1, label796
	j label795
label796:
	lw $t0, -316($fp)
	li $t1, 0
	bne $t0, $t1, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -400($fp)
label795:
	li $t0, 0
	sw $t0, -408($fp)
	lw $t0, -184($fp)
	li $t1, 0
	bne $t0, $t1, label800
	j label799
label800:
	li $t0, 52856
	li $t1, 0
	bne $t0, $t1, label797
	j label799
label799:
	lw $t0, -172($fp)
	li $t1, 0
	bne $t0, $t1, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -408($fp)
label798:
	li $t1, 25302
	li $t2, 24542
	mul $t0, $t1, $t2
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, -324($fp)
	li $t1, 0
	bne $t0, $t1, label804
	j label802
label804:
	lw $t0, -328($fp)
	li $t1, 0
	bne $t0, $t1, label803
	j label802
label803:
	lw $t0, -24($fp)
	li $t1, 0
	bne $t0, $t1, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -416($fp)
label802:
	li $t0, 0
	sw $t0, -420($fp)
	li $t1, 8746
	li $t2, 13171
	div $t1, $t2
	mflo $t0
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	li $t1, 19630
	beq $t0, $t1, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -420($fp)
label806:
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -428($fp)
	lw $t1, -180($fp)
	move $t0, $t1
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	move $t0, $t1
	sw $t0, -432($fp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -436($fp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 33052
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -440($fp)
	lw $t0, -360($fp)
	lw $t1, -440($fp)
	ble $t0, $t1, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -336($fp)
label781:
	li $t1, 0
	lw $t2, -28($fp)
	sub $t0, $t1, $t2
	sw $t0, -444($fp)
	li $t1, 0
	lw $t2, -172($fp)
	sub $t0, $t1, $t2
	sw $t0, -448($fp)
	lw $t1, -444($fp)
	lw $t2, -448($fp)
	sub $t0, $t1, $t2
	sw $t0, -452($fp)
	lw $t0, -336($fp)
	lw $t1, -452($fp)
	beq $t0, $t1, label778
	j label779
label778:
label779:
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -456($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -460($fp)
	lw $t1, -456($fp)
	lw $t2, -460($fp)
	add $t0, $t1, $t2
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	lw $t0, 0($t1)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -472($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -476($fp)
	lw $t1, -472($fp)
	lw $t2, -476($fp)
	add $t0, $t1, $t2
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	lw $t0, 0($t1)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -488($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -492($fp)
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	add $t0, $t1, $t2
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	lw $t0, 0($t1)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -504($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -508($fp)
	lw $t1, -504($fp)
	lw $t2, -508($fp)
	add $t0, $t1, $t2
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	lw $t0, 0($t1)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -520($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -524($fp)
	lw $t1, -520($fp)
	lw $t2, -524($fp)
	add $t0, $t1, $t2
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	lw $t0, 0($t1)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -536($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -540($fp)
	lw $t1, -536($fp)
	lw $t2, -540($fp)
	add $t0, $t1, $t2
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	lw $t0, 0($t1)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -552($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -556($fp)
	lw $t1, -552($fp)
	lw $t2, -556($fp)
	add $t0, $t1, $t2
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	lw $t0, 0($t1)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -568($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -572($fp)
	lw $t1, -568($fp)
	lw $t2, -572($fp)
	add $t0, $t1, $t2
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	lw $t0, 0($t1)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -584($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -588($fp)
	lw $t1, -584($fp)
	lw $t2, -588($fp)
	add $t0, $t1, $t2
	sw $t0, -592($fp)
	lw $t1, -592($fp)
	lw $t0, 0($t1)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -600($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	add $t0, $t1, $t2
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	lw $t0, 0($t1)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -616($fp)
	li $t1, 0
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -620($fp)
	lw $t1, -616($fp)
	lw $t2, -620($fp)
	add $t0, $t1, $t2
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	lw $t0, 0($t1)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -632($fp)
	li $t1, 1
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -636($fp)
	lw $t1, -632($fp)
	lw $t2, -636($fp)
	add $t0, $t1, $t2
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	lw $t0, 0($t1)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -648($fp)
	li $t1, 2
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -652($fp)
	lw $t1, -648($fp)
	lw $t2, -652($fp)
	add $t0, $t1, $t2
	sw $t0, -656($fp)
	lw $t1, -656($fp)
	lw $t0, 0($t1)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -664($fp)
	li $t1, 3
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -668($fp)
	lw $t1, -664($fp)
	lw $t2, -668($fp)
	add $t0, $t1, $t2
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	lw $t0, 0($t1)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -680($fp)
	li $t1, 4
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -684($fp)
	lw $t1, -680($fp)
	lw $t2, -684($fp)
	add $t0, $t1, $t2
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	lw $t0, 0($t1)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -696($fp)
	li $t1, 5
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -700($fp)
	lw $t1, -696($fp)
	lw $t2, -700($fp)
	add $t0, $t1, $t2
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	lw $t0, 0($t1)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -712($fp)
	li $t1, 6
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -716($fp)
	lw $t1, -712($fp)
	lw $t2, -716($fp)
	add $t0, $t1, $t2
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	lw $t0, 0($t1)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -728($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	add $t0, $t1, $t2
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	lw $t0, 0($t1)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -744($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -748($fp)
	lw $t1, -744($fp)
	lw $t2, -748($fp)
	add $t0, $t1, $t2
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	lw $t0, 0($t1)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -760($fp)
	li $t1, 9
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	add $t0, $t1, $t2
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	lw $t0, 0($t1)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	addi $sp, $sp, 1000
	move $v0, $t0
	jr $ra
	li $t0, 0
	sw $t0, -776($fp)
	lw $t0, -172($fp)
	li $t1, 0
	bne $t0, $t1, label810
	j label809
label809:
	li $t0, 1
	sw $t0, -776($fp)
label810:
	lw $t1, -16($fp)
	li $t2, 61247
	sub $t0, $t1, $t2
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 12291
	sub $t0, $t1, $t2
	sw $t0, -784($fp)
	li $t0, 0
	sw $t0, -788($fp)
	li $t0, 55936
	li $t1, 38492
	bge $t0, $t1, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -788($fp)
label812:
	li $t0, 0
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -308($fp)
	li $t1, 16829
	bgt $t0, $t1, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -796($fp)
label816:
	lw $t0, -796($fp)
	li $t1, 32669
	blt $t0, $t1, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -792($fp)
label814:
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_jTyF
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 62927
	div $t1, $t2
	mflo $t0
	sw $t0, -804($fp)
	lw $t0, -776($fp)
	lw $t1, -804($fp)
	blt $t0, $t1, label807
	j label808
label807:
label808:
	li $t0, 0
	sw $t0, -808($fp)
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -812($fp)
	li $t1, 8
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	add $t0, $t1, $t2
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	lw $t0, 0($t1)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	li $t1, 0
	bne $t0, $t1, label817
	j label819
label819:
	li $t0, 55599
	li $t1, 51340
	bge $t0, $t1, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -808($fp)
label818:
	lw $t1, -808($fp)
	move $t0, $t1
	sw $t0, -312($fp)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -828($fp)
	lw $t1, -184($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	add $t0, $t1, $t2
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	lw $t0, 0($t1)
	sw $t0, -840($fp)
	li $t1, 0
	lw $t2, -840($fp)
	sub $t0, $t1, $t2
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	li $t1, 0
	bne $t0, $t1, label822
	j label820
label822:
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -848($fp)
	lw $t1, -176($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -852($fp)
	lw $t1, -848($fp)
	lw $t2, -852($fp)
	add $t0, $t1, $t2
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	lw $t0, 0($t1)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	li $t1, 0
	bne $t0, $t1, label823
	j label821
label823:
	li $t0, 15130
	li $t1, 33722
	blt $t0, $t1, label820
	j label821
label820:
label821:
label824:
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 0
	sw $t0, -868($fp)
	lw $t0, -24($fp)
	lw $t1, -16($fp)
	beq $t0, $t1, label829
	j label831
label831:
	li $t0, 58941
	li $t1, 0
	bne $t0, $t1, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -868($fp)
label830:
	li $t0, 0
	sw $t0, -872($fp)
	lw $t0, -20($fp)
	li $t1, 0
	bne $t0, $t1, label834
	j label833
label834:
	li $t0, 47312
	li $t1, 0
	bne $t0, $t1, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -872($fp)
label833:
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	lw $t0, -172($fp)
	lw $t1, -180($fp)
	beq $t0, $t1, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -880($fp)
label838:
	lw $t0, -880($fp)
	lw $t1, -172($fp)
	bne $t0, $t1, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -876($fp)
label836:
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 48992
	li $t1, 0
	bne $t0, $t1, label840
	j label839
label839:
	li $t0, 1
	sw $t0, -884($fp)
label840:
	li $t1, 0
	lw $t2, -884($fp)
	sub $t0, $t1, $t2
	sw $t0, -888($fp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_O7
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 20
	move $t0, $v0
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	lw $t2, -24($fp)
	sub $t0, $t1, $t2
	sw $t0, -896($fp)
	lw $t1, -48($fp)
	move $t0, $t1
	sw $t0, -900($fp)
	li $t1, 7
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -904($fp)
	lw $t1, -900($fp)
	lw $t2, -904($fp)
	add $t0, $t1, $t2
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	lw $t0, 0($t1)
	sw $t0, -912($fp)
	lw $t0, -896($fp)
	lw $t1, -912($fp)
	ble $t0, $t1, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -864($fp)
label828:
	lw $t1, -44($fp)
	move $t0, $t1
	sw $t0, -916($fp)
	lw $t1, -864($fp)
	li $t2, 4
	mul $t0, $t1, $t2
	sw $t0, -920($fp)
	lw $t1, -916($fp)
	lw $t2, -920($fp)
	add $t0, $t1, $t2
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	lw $t0, 0($t1)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	li $t1, 0
	bne $t0, $t1, label825
	j label826
label825:
	j label824
label826:
	j label841
label843:
	lw $t0, -20($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -20($fp)
	addi $sp, $sp, 1000
	move $v0, $t0
	jr $ra

lcx_id_ShXDZ:
	addi $sp, $sp, -28
	li $t0, 51683
	sw $t0, -12($fp)
	li $t0, 38290
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t1, 44146
	li $t2, 10206
	mul $t0, $t1, $t2
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	lw $t1, -16($fp)
	beq $t0, $t1, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -20($fp)
label847:
	li $t0, 0
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	lw $t1, -12($fp)
	ble $t0, $t1, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -32($fp)
label851:
	lw $t0, -32($fp)
	lw $t1, -12($fp)
	beq $t0, $t1, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -28($fp)
label849:
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	jal lcx_id_HLYMzB
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $sp, $sp, 8
	move $t0, $v0
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	lw $t0, -16($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 2889
	addi $sp, $sp, 28
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
	jal lcx_id_ShXDZ
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	move $t0, $v0
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 8
	move $a0, $t0
	jal write
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	li $t0, 0
	addi $sp, $sp, 4
	move $v0, $t0
	jr $ra
