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

// void init_var(FILE* fp, Operand* op){
//     if(op->op_kind == OP_TEMP){
//         fprintf(fp, "\tt%d: .word 0\n", op->tmp_no);
//     }
//     else if(op->op_kind == OP_VARIABLE){
//         fprintf(fp, "\tv%d: .word 0\n", op->tmp_no);
//     }
//     else{
//         log("init_var: should not have op_kind:[%d]\n", op->op_kind);
//         assert(0);
//     }
// }

// currently not used
void init_var(FILE* fp, int var_no, int temp_no){
    for(int i=1; i<=var_no; i++){
        fprintf(fp, "\tv%d: .word 0\n", i);
    }
    for(int i=1; i<=temp_no; i++){
        fprintf(fp, "\tt%d: .word 0\n", i);
    }
}
// currently not used
void init_memory(FILE* fp, InterCodes *start){
    // should keep record of exsisting var/temp  
    int var_cnt = 0;
    int temp_cnt = 0;
    InterCodes *p = start;
    while(p){
        InterCode *ir = p->code;
        if(ir->ir_kind == IR_DEC){
            fprintf(fp, "");
        }
        else if(ir->unop.op->op_kind == OP_VARIABLE){
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
}

void init_mips(FILE* fp, InterCodes *start){
    fprintf(fp, ".data\n");
    // init_memory(fp, start);
    fprintf(fp, "_prompt: .asciiz \"Enter an integer:\"\n");
    fprintf(fp, "_ret: .asciiz \"\\n\"\n");
    fprintf(fp, ".global main\n");
    fprintf(fp, ".text\n");
    init_read(fp);
    init_write(fp);
}

void reg(Operand *x, int reg_no){ // no: {0, 1, 2, 3}

}

void push_temps(FILE* fp){ // including v/t

}

void translate_ir(){

}



void print_mips(FILE* fp, InterCodes *start){
    init_mips(fp, start);
    InterCodes *p = start;
    while(p!=NULL){
        InterCode *ir = p->code;
        if(ir->ir_kind == IR_FUNCTION){
            translate_mips(fp, p);
        }
        switch (ir->ir_kind)
        {
        case IR_LABEL:
            fprintf(fp, "label%d:", ir->unop.op->label_no);
            break;
        case IR_FUNCTION: 
            // many detail
            if(strcmp(ir->unop.op->func_name, "main")==0){
                // dont have PARAM
                // 1. push ret_addr
                // 2. push $fp
                // 3. push every temporary
                // 4. 
                

            }
            else{
                // including PARAM
                
            }
            break;
        case IR_ASSIGN: // not used currently
            if(ir->lr.op2->op_kind == OP_CONSTANT){
                fprintf(fp, "li %s, %d", reg(ir->lr.op1, 0), ir->lr.op2->const_value);
            }
            else{
                fprintf(fp, "move %s, %s", reg(ir->lr.op1, 0), reg(ir->lr.op2, 1));
            }
            break;
        default:
            break;
        }
        fprintf(fp, "\n");
        p = p->next;
    }
}

