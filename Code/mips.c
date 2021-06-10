#include "common.h"
extern InterCodes *head;

void init_read(FILE* fp){
    fprintf(fp, "read:\n");
    fprintf(fp, "\tli $a0, _prompt\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tli $v0, 5\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tjr $ra\n");
    fprintf(fp, "\n");
}

void init_write(FILE* fp){
    fprintf(fp, "write:\n");
    fprintf(fp, "\tli $v0, 1\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tli $v0, 4\n");
    fprintf(fp, "\tla $a0, _ret\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tmove $v0, $0\n");
    fprintf(fp, "\tjr $ra\n");
    fprintf(fp, "\n");
}

void init_var(FILE* fp, int var_no, int temp_no){
    for(int i=1; i<=var_no; i++){
        fprintf(fp, "\tv%d: .word 0\n", i);
    }
    for(int i=1; i<=temp_no; i++){
        fprintf(fp, "\tt%d: .word 0\n", i);
    }
}

void init_memory(FILE* fp, InterCodes *start){
    // should keep record of exsisting var/temp  
    int var_cnt = 0;
    int temp_cnt = 0;
    InterCodes *p = start;
    while(p){
        InterCode *ir = p->code;
        if(ir->unop.op->op_kind == OP_VARIABLE){
            if(ir->unop.op->var_no > var_cnt) var_cnt = ir->unop.op->var_no;
            //log("found v%d\n", ir->unop.op->var_no);
        }
        else if(ir->unop.op->op_kind == OP_TEMP){
            if(ir->unop.op->tmp_no > temp_cnt) temp_cnt = ir->unop.op->tmp_no;
            // log("found t%d\n", ir->unop.op->var_no);
        }
        p = p->next;
    }
    log("var_cnt: %d, temp_cnt: %d\n", var_cnt, temp_cnt);
    init_var(fp, var_cnt, temp_cnt);
}

void init_mips(FILE* fp, InterCodes *start){
    fprintf(fp, ".data\n");
    init_memory(fp, start);
    fprintf(fp, "_prompt: .asciiz \"Enter an integer:\"\n");
    fprintf(fp, "_ret: .asciiz \"\\n\"\n");
    fprintf(fp, ".global main\n");
    fprintf(fp, ".text\n");
    init_read(fp);
    init_write(fp);
}

void reg(FILE* fp, Operand *x, int reg_no){ // no: {0, 1, 2, 3}
    Assert(x->op_kind == OP_TEMP || x->op_kind == OP_VARIABLE);
    if(x->op_kind == OP_TEMP){
        fprintf(fp, "lw $t%d, t%d\n", reg_no, x->tmp_no);
    }
    else{
        fprintf(fp, "lw $t%d, v%d\n", reg_no, x->var_no);
    }
}

void spill(FILE* fp, Operand *x, int reg_no){
    Assert(x->op_kind == OP_TEMP || x->op_kind == OP_VARIABLE);
    if(x->op_kind == OP_TEMP){
        fprintf(fp, "sw $t%d, t%d\n", reg_no, x->tmp_no);
    }
    else{
        fprintf(fp, "sw $t%d, v%d\n", reg_no, x->var_no);
    }
}

void print_arith(FILE* fp, InterCode *ir){
    reg(fp, ir->binop.result, 0);
    if(ir->binop.op1->op_kind == OP_CONSTANT){
        fprintf(fp, "li $t1, %d\n", ir->binop.op1->const_value);
        if(ir->binop.op2->op_kind == OP_CONSTANT){
            fprintf(fp, "li $t2, %d\n", ir->binop.op2->const_value);
        }
        else{
            reg(fp, ir->binop.op2, 2);
        }
    }
    else{
        reg(fp, ir->binop.op1, 1);
        if(ir->binop.op2->op_kind == OP_CONSTANT){
            fprintf(fp, "li $t2, %d\n", ir->binop.op2->const_value);
        }
        else{
            reg(fp, ir->binop.op2, 2);
        }
    }
    switch (ir->ir_kind)
    {
    case IR_ADD:
        fprintf(fp, "add $t0, $t1, $t2\n");
        break;
    case IR_SUB:
        fprintf(fp, "sub $t0, $t1, $t2\n");
        break;
    case IR_DIV: 
        fprintf(fp, "div $t1, $t2\n");
        fprintf(fp, "mflo $t0\n");
        break;
    case IR_MUL:
        fprintf(fp, "mul $t1, $t2, $t3\n");
        break;
    default:
        break;
    }
    spill(fp, ir->binop.result, 0);
}

void print_mips(FILE* fp, InterCodes *start){
    init_mips(fp, start);
    InterCodes *p = start;
    while(p!=NULL){
        InterCode *ir = p->code;
        switch (ir->ir_kind)
        {
        case IR_LABEL:
            fprintf(fp, "label%d:\n", ir->unop.op->label_no);
            break;
        case IR_FUNCTION: 
            // many detail 
            break;
        case IR_ASSIGN: // not used currently
            if(ir->lr.op2->op_kind == OP_CONSTANT){
                reg(fp, ir->lr.op1, 0);
                fprintf(fp, "li t%d, %d\n", 0, ir->lr.op2->const_value);
                spill(fp, ir->lr.op1, 0);
            }
            else{
                reg(fp, ir->lr.op1, 0);
                reg(fp, ir->lr.op2, 1);
                fprintf(fp, "move t%d, t%d\n", 0, 1);
                spill(fp, ir->lr.op1, 0);
            }
            break;
        case IR_ADD:
        case IR_SUB:
        case IR_DIV:
        case IR_MUL:
            print_arith(fp, ir);
            break;
        case IR_GET_ADDR: // basically IR_ASSIGN
            reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "move t%d, t%d\n", 0, 1);
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_GET_ADDR_VAL:
            reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "lw $t0, 0($t1)\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_TO_ADDR:
            reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "sw $t1, 0($t0)\n");
            // WARNING: dont need spill
            break;
        case IR_GOTO:
            fprintf(fp, "j label%d\n", ir->unop.op->label_no);
            break;
        case IR_CALL_FUNC:
            //need more details: ARGS
            log("print_mips: IR_CALL_FUNC need more details\n");
            fprintf(fp, "jal %s\n", ir->lr.op2->func_name);
            reg(fp, ir->lr.op1, 0);
            fprintf(fp, "move $t0, $v0\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_RETURN:
            if(ir->unop.op->op_kind==OP_CONSTANT){
                fprintf(fp, "li $t0, %d\n", );
            }
            else{
                reg(fp, ir->unop.op, 0);
            }
            fprintf(fp, "move $v0, ");

        default:
            break;
        }
        fprintf(fp, "\n");
        p = p->next;
    }
}

