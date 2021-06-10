.data
	v1: .word 0
	v2: .word 0
	v3: .word 0
	v4: .word 0
	v5: .word 0
	v6: .word 0
	v7: .word 0
	v8: .word 0
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
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.global main
.text
read:
	li $a0, _prompt
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

