#include "common.h"
extern InterCodes *head;

void init_read(FILE* fp){
    fprintf(fp, "\n");
    fprintf(fp, "read:\n");
    fprintf(fp, "\tli $v0, 4\n");
    fprintf(fp, "\tla $a0, _prompt\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tli $v0, 5\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tjr $ra\n");
}

void init_write(FILE* fp){
    fprintf(fp, "\n");
    fprintf(fp, "write:\n");
    fprintf(fp, "\tli $v0, 1\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tli $v0, 4\n");
    fprintf(fp, "\tla $a0, _ret\n");
    fprintf(fp, "\tsyscall\n");
    fprintf(fp, "\tmove $v0, $0\n");
    fprintf(fp, "\tjr $ra\n");
}

void init_var(FILE* fp, int var_no, int temp_no){
    for(int i=1; i<=var_no; i++){
        fprintf(fp, "v%d: .word 0\n", i);
    }
    for(int i=1; i<=temp_no; i++){
        fprintf(fp, "t%d: .word 0\n", i);
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
    fprintf(fp, ".globl main\n");
    fprintf(fp, ".text\n");
    init_read(fp);
    init_write(fp);
}

void reg(FILE* fp, Operand *x, int reg_no){ // no: {0, 1, 2, 3}
    if(x->op_kind == OP_TEMP || x->op_kind == OP_ADDRESS){
        fprintf(fp, "\tlw $t%d, t%d\n", reg_no, x->tmp_no);
    }
    else if(x->op_kind == OP_VARIABLE){
        fprintf(fp, "\tlw $t%d, v%d\n", reg_no, x->var_no);
    }
    else{
        Assert(x->op_kind == OP_CONSTANT);
        fprintf(fp, "\tli $t%d, %d\n", reg_no, x->const_value);
    }
}

void spill(FILE* fp, Operand *x, int reg_no){
    Assert(x->op_kind == OP_TEMP || x->op_kind == OP_VARIABLE  || x->op_kind == OP_ADDRESS);
    if(x->op_kind == OP_TEMP || x->op_kind == OP_ADDRESS){
        fprintf(fp, "\tsw $t%d, t%d\n", reg_no, x->tmp_no);
    }
    else{
        fprintf(fp, "\tsw $t%d, v%d\n", reg_no, x->var_no);
    }
}

void print_arith(FILE* fp, InterCode *ir){
    // reg(fp, ir->binop.result, 0);
    reg(fp, ir->binop.op1, 1);
    reg(fp, ir->binop.op2, 2);
    // if(ir->binop.op1->op_kind == OP_CONSTANT){
    //     fprintf(fp, "\tli $t1, %d\n", ir->binop.op1->const_value);
    //     if(ir->binop.op2->op_kind == OP_CONSTANT){
    //         fprintf(fp, "\tli $t2, %d\n", ir->binop.op2->const_value);
    //     }
    //     else{
    //         reg(fp, ir->binop.op2, 2);
    //     }
    // }
    // else{
    //     reg(fp, ir->binop.op1, 1);
    //     if(ir->binop.op2->op_kind == OP_CONSTANT){
    //         fprintf(fp, "\tli $t2, %d\n", ir->binop.op2->const_value);
    //     }
    //     else{
    //         reg(fp, ir->binop.op2, 2);
    //     }
    // }
    switch (ir->ir_kind)
    {
    case IR_ADD:
        fprintf(fp, "\tadd $t0, $t1, $t2\n");
        break;
    case IR_SUB:
        fprintf(fp, "\tsub $t0, $t1, $t2\n");
        break;
    case IR_DIV: 
        fprintf(fp, "\tdiv $t1, $t2\n");
        fprintf(fp, "\tmflo $t0\n");
        break;
    case IR_MUL:
        fprintf(fp, "\tmul $t0, $t1, $t2\n");
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
        case IR_ASSIGN: // not used currently
            if(ir->lr.op2->op_kind == OP_CONSTANT){
                // reg(fp, ir->lr.op1, 0);
                fprintf(fp, "\tli $t0, %d\n", ir->lr.op2->const_value);
                spill(fp, ir->lr.op1, 0);
            }
            else{
                // reg(fp, ir->lr.op1, 0);
                reg(fp, ir->lr.op2, 1);
                fprintf(fp, "\tmove $t0, $t1\n");
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
            // reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "\tmove $t0, $t1\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_GET_ADDR_VAL:
            // reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "\tlw $t0, 0($t1)\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_TO_ADDR:
            reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "\tsw $t1, 0($t0)\n");
            // WARNING: dont need spill
            break;
        case IR_GOTO:
            fprintf(fp, "\tj label%d\n", ir->unop.op->label_no);
            break;
        case IR_IF:
            reg(fp, ir->cond.op1, 0);
            reg(fp, ir->cond.op2, 1);
            if(strcmp(ir->cond.relop->relop, "==")==0){
                fprintf(fp, "\tbeq $t0, $t1, label%d\n", ir->cond.op3->label_no);
            }
            else if(strcmp(ir->cond.relop->relop, "!=")==0){
                fprintf(fp, "\tbne $t0, $t1, label%d\n", ir->cond.op3->label_no);
            }
            else if(strcmp(ir->cond.relop->relop, ">")==0){
                fprintf(fp, "\tbgt $t0, $t1, label%d\n", ir->cond.op3->label_no);
            }
            else if(strcmp(ir->cond.relop->relop, "<")==0){
                fprintf(fp, "\tblt $t0, $t1, label%d\n", ir->cond.op3->label_no);
            }
            else if(strcmp(ir->cond.relop->relop, ">=")==0){
                fprintf(fp, "\tbge $t0, $t1, label%d\n", ir->cond.op3->label_no);
            }
            else if(strcmp(ir->cond.relop->relop, "<=")==0){
                fprintf(fp, "\tble $t0, $t1, label%d\n", ir->cond.op3->label_no);
            }
            break;

        case IR_READ:
            fprintf(fp, "\taddi $sp, $sp, -4\n");
            fprintf(fp, "\tsw $ra, 0($sp)\n");
            fprintf(fp, "\tjal read\n");
            fprintf(fp, "\tmove $t0, $v0\n");
            fprintf(fp, "\tlw $ra, 0($sp)\n");
            fprintf(fp, "\taddi $sp, $sp, 4\n");
            spill(fp, ir->unop.op, 0);
            break;
        case IR_WRITE: 
            reg(fp, ir->unop.op, 0);
            fprintf(fp, "\taddi $sp, $sp, -4\n");
            fprintf(fp, "\tsw $t0, 0($sp)\n");
            fprintf(fp, "\taddi $sp, $sp, -4\n");
            fprintf(fp, "\tsw $ra, 0($sp)\n");
            fprintf(fp, "\tmove $a0, $t0\n");
            fprintf(fp, "\tjal write\n");
            fprintf(fp, "\tlw $ra, 0($sp)\n");
            fprintf(fp, "\taddi $sp, $sp, 4\n");
            fprintf(fp, "\tlw $t0, 0($sp)\n");
            fprintf(fp, "\taddi $sp, $sp, 4\n");
            break;
        case IR_DEC:
            // array
            fprintf(fp, "\tsw $sp, v%d\n", ir->lr.op1->var_no);
            fprintf(fp, "\taddi $sp, $sp, -%d\n", ir->lr.op2->const_value);
            break;
        case IR_FUNCTION: 
            // dont care PARAM
            fprintf(fp, "\n");
            fprintf(fp, "%s:\n", ir->unop.op->func_name);
            break;
        case IR_CALL_FUNC:
            //need more details: ARGS
            log("print_mips: IR_CALL_FUNC need more details\n");
            InterCodes *arg = p->next;
            int arg_cnt = 0;
            while(arg->code->ir_kind == IR_ARG){
                arg_cnt++;
                reg(fp, arg->code->unop.op, 0);
                fprintf(fp, "\taddi $sp, $sp, -4\n");
                fprintf(fp, "\tsw $t0, 0($sp)\n");
                arg = arg->next;
            }
            arg = arg->prev;
            if(arg_cnt > 0) Assert(arg->code->ir_kind == IR_ARG); // first arg
            fprintf(fp, "\taddi $sp, $sp, -4\n");
            fprintf(fp, "\tsw $ra, 0($sp)\n");
            fprintf(fp, "\tjal %s\n", ir->lr.op2->func_name);
            reg(fp, ir->lr.op1, 0);
            fprintf(fp, "\tmove $t0, $v0\n");
            spill(fp, ir->lr.op1, 0);
            fprintf(fp, "\tlw $ra, 0($sp)\n");
            fprintf(fp, "\taddi $sp, $sp, 4\n");
            while(arg->code->ir_kind == IR_ARG){
                arg_cnt--;
                fprintf(fp, "\tlw $t0, 0($sp)\n");
                fprintf(fp, "\taddi $sp, $sp, 4\n");
                spill(fp, arg->code->unop.op, 0);
                arg = arg->prev;
            }
            Assert(arg_cnt == 0);
            break;
        case IR_RETURN:
            reg(fp, ir->unop.op, 0);
            fprintf(fp, "\tmove $v0, $t0\n");
            fprintf(fp, "\tjr $ra\n");
            break;
        default:
            break;
        }
        p = p->next;
    }
}

