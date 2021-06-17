#include "common.h"
extern InterCodes *head;
FuncRecord* record_head = NULL;
FuncRecord* cur_function = NULL;

ArgList* search_tempo(FuncRecord* func, Operand* x){
    int found = 0;
    ArgList* tempo = func->tempos;
    if(x->op_kind == OP_TEMP || x->op_kind == OP_ADDRESS){
        while(tempo!=NULL){
            if(tempo->arg->op_kind==OP_TEMP && x->tmp_no == tempo->arg->tmp_no){
                found = 1;
                break;
            }
            else if(tempo->arg->op_kind==OP_ADDRESS && x->tmp_no == tempo->arg->tmp_no){
                found = 1;
                break;
            }
            tempo = tempo->next;
        }
    }
    else{
        Assert(x->op_kind == OP_VARIABLE);
        while(tempo!=NULL){
            if(tempo->arg->op_kind==OP_VARIABLE && x->var_no == tempo->arg->var_no){
                found = 1;
                break;
            }
            tempo = tempo->next;
        }
    }
    if(found==0) Assert(tempo==NULL);
    return tempo;
}

FuncRecord* search_function(char *func_name){
    FuncRecord* tmp = record_head;
    while(tmp!=NULL){
        if(strcmp(func_name, tmp->func_name)==0) {
            break;
        }
        else tmp = tmp->next;
    }
    Assert(tmp!=NULL);
    return tmp;
}

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

void init_record(Operand *x){
    if(x->op_kind == OP_FUNCTION) return;
    if(search_tempo(record_head, x)==NULL){
        ArgList* new_tempo = (ArgList *)malloc(sizeof(ArgList));
        new_tempo->arg = x;
        new_tempo->next = record_head->tempos;
        new_tempo->offset = record_head->tempo_size;
        record_head->tempos = new_tempo;
        record_head->tempo_size+=4;
    }
}

void init_memory(FILE* fp, InterCodes *start){
    // should keep record of exsisting var/temp  
    int function_cnt = 0;
    InterCodes *p = start;
    while(p){
        InterCode *ir = p->code;
        if(ir->ir_kind == IR_FUNCTION){
            function_cnt++;
            FuncRecord *func = (FuncRecord *)malloc(sizeof(FuncRecord));
            Assert(p->code->unop.op->func_name!=NULL);
            func->func_name = p->code->unop.op->func_name;
            func->func_no = function_cnt;
            func->tempo_size = 0;
            func->array_size = 0;
            func->tempos = NULL;
            func->args = NULL;
            func->next = NULL;
            InterCodes *param = p->next;
            //int offset = 0;
            while(param->code->ir_kind == IR_PARAM){
                ArgList *arg_tmp = (ArgList *)malloc(sizeof(ArgList));
                arg_tmp->arg = param->code->unop.op;
                arg_tmp->next = func->args;
                arg_tmp->offset = 0;
                func->args = arg_tmp;
                param = param->next;
            }
            //p = param->prev;
            if(record_head==NULL){
                record_head = func;
            }
            else{
                func->next = record_head;
                record_head = func;
            }
        }
        else if(ir->ir_kind == IR_ADD || ir->ir_kind == IR_SUB ||\
               ir->ir_kind == IR_MUL || ir->ir_kind == IR_DIV){
            Assert(record_head!=NULL);
            init_record(ir->binop.result);
            init_record(ir->binop.op1);
            init_record(ir->binop.op2);
        }
        else if(ir->ir_kind == IR_ASSIGN || ir->ir_kind == IR_GET_ADDR || \
                ir->ir_kind == IR_GET_ADDR_VAL || ir->ir_kind == IR_TO_ADDR || \
                ir->ir_kind == IR_CALL_FUNC){
            Assert(record_head!=NULL);
            init_record(ir->lr.op1);
            init_record(ir->lr.op2);
        }
        else{
            if(ir->unop.op->op_kind == OP_VARIABLE || \
                ir->unop.op->op_kind == OP_TEMP || \
                ir->unop.op->op_kind == OP_ADDRESS){
            init_record(ir->unop.op);
            }
        }
        p = p->next;
    }
    FuncRecord* func_tmp = record_head;
    while(func_tmp!=NULL){
        log("Function: %s (total offset: %d)\n", func_tmp->func_name, func_tmp->tempo_size);
        ArgList* temps = func_tmp->tempos;
        while (temps!=NULL)
        {
            if(temps->arg->op_kind==OP_VARIABLE){
                log("v%d, offset: %d\n", temps->arg->var_no, temps->offset);
            }
            else{
                log("t%d, offset: %d\n", temps->arg->tmp_no, temps->offset);
            } 
            temps = temps->next;
        }
        func_tmp = func_tmp->next;
    }
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
    if(x->op_kind == OP_TEMP || x->op_kind == OP_ADDRESS || x->op_kind == OP_VARIABLE){
        ArgList* tmp = search_tempo(cur_function, x);
        Assert(tmp!=NULL);
        fprintf(fp, "\tlw $t%d, -%d($fp)\n", reg_no, tmp->offset+12);
    }
    else{
        Assert(x->op_kind == OP_CONSTANT);
        fprintf(fp, "\tli $t%d, %d\n", reg_no, x->const_value);
    }
}

void spill(FILE* fp, Operand *x, int reg_no){
    if(x->op_kind == OP_TEMP || x->op_kind == OP_ADDRESS || x->op_kind == OP_VARIABLE){
        ArgList* tmp = search_tempo(cur_function, x);
        Assert(tmp!=NULL);
        fprintf(fp, "\tsw $t%d, -%d($fp)\n", reg_no, tmp->offset+12);
    }
    else{
        Assert(x->op_kind == OP_CONSTANT);
        return;
    }
}

void print_arith(FILE* fp, InterCode *ir){
    reg(fp, ir->binop.op1, 1);
    reg(fp, ir->binop.op2, 2);
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

void push_ra(FILE* fp){
    fprintf(fp, "\taddi $sp, $sp, -8\n");
    fprintf(fp, "\tsw $ra, 4($sp)\n");
    fprintf(fp, "\tsw $fp, 0($sp)\n");
    fprintf(fp, "\taddi $fp, $sp, 8\n");
}

void pop_ra(FILE* fp){
    fprintf(fp, "\tlw $fp, 0($sp)\n");
    fprintf(fp, "\tlw $ra, 4($sp)\n");
    fprintf(fp, "\taddi $sp, $sp, 8\n");
}

void malloc_tempos(FILE* fp){
    Assert(cur_function!=NULL);
    fprintf(fp, "\taddi $sp, $sp, -%d\n", cur_function->tempo_size);
}

void free_tempos(FILE* fp){
    Assert(cur_function!=NULL);
    fprintf(fp, "\taddi $t4, $fp, -8\n");
    fprintf(fp, "\tmove $sp, $t4\n");
}

void print_mips(FILE* fp, InterCodes *start){
    init_mips(fp, start);
    InterCodes *p = start;
    int cnt = 0;
    int param_offset = 0;
    int arg_offset = 0;
    while(p!=NULL){
        cnt++;
        log("translating ir: %d\n", cnt);
        InterCode *ir = p->code;
        switch (ir->ir_kind)
        {
        case IR_LABEL:
            fprintf(fp, "label%d:\n", ir->unop.op->label_no);
            break;
        case IR_ASSIGN: 
            if(ir->lr.op2->op_kind == OP_CONSTANT){
                fprintf(fp, "\tli $t0, %d\n", ir->lr.op2->const_value);
                spill(fp, ir->lr.op1, 0);
            }
            else{
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
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "\tmove $t0, $t1\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_GET_ADDR_VAL:
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "\tlw $t0, 0($t1)\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_TO_ADDR:
            reg(fp, ir->lr.op1, 0);
            reg(fp, ir->lr.op2, 1);
            fprintf(fp, "\tsw $t1, 0($t0)\n");
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
            push_ra(fp);
            fprintf(fp, "\tjal read\n");
            pop_ra(fp);
            fprintf(fp, "\tmove $t0, $v0\n");
            spill(fp, ir->unop.op, 0);
            break;
        case IR_WRITE: 
            reg(fp, ir->unop.op, 0);
            fprintf(fp, "\tmove $a0, $t0\n");
            push_ra(fp);
            fprintf(fp, "\tjal write\n");
            pop_ra(fp);
            break;
        case IR_DEC:
            // array
            fprintf(fp, "\taddi $sp, $sp, -%d\n", ir->lr.op2->const_value);
            fprintf(fp, "\tmove $t0, $sp\n");
            Assert(ir->lr.op2->const_value%4==0);
            spill(fp, ir->lr.op1, 0);
            Assert(cur_function!=NULL);
            cur_function->array_size += ir->lr.op2->const_value;
            break;
        case IR_FUNCTION: 
            fprintf(fp, "\n");
            param_offset = 0;
            arg_offset = 0;
            if(strcmp(ir->unop.op->func_name, "main")!=0){
                fprintf(fp, "lcx_%s:\n", ir->unop.op->func_name);
            }
            else{
                fprintf(fp, "main:\n");
                push_ra(fp);
            }
            cur_function = search_function(ir->unop.op->func_name);
            malloc_tempos(fp);
            break;
        case IR_PARAM:
            fprintf(fp, "\tlw $t0, %d($fp)\n", param_offset);
            spill(fp, ir->unop.op, 0);
            param_offset += 4;
            break;
        case IR_ARG: // call function with args
            fprintf(fp, "\taddi $sp, $sp, -4\n");
            reg(fp, ir->unop.op, 0);
            fprintf(fp, "\tsw $t0, 0($sp)\n");
            arg_offset += 4;
            break;
        case IR_CALL_FUNC:
            if(strcmp(ir->lr.op2->func_name, "main")!=0){
                push_ra(fp);
                fprintf(fp, "\tjal lcx_%s\n", ir->lr.op2->func_name);
                pop_ra(fp);
            }  
            else{
                fprintf(fp, "\tjal main\n");
            }
            if(arg_offset!=0) {
                Assert(arg_offset%4==0);
                fprintf(fp, "\taddi $sp, $sp, %d\n", arg_offset);
                arg_offset = 0;
            }
            fprintf(fp, "\tmove $t0, $v0\n");
            spill(fp, ir->lr.op1, 0);
            break;
        case IR_RETURN:
            Assert(cur_function!=NULL);
            reg(fp, ir->unop.op, 0);
            free_tempos(fp);
            if(strcmp(cur_function->func_name, "main")==0) pop_ra(fp);
            fprintf(fp, "\tmove $v0, $t0\n");
            fprintf(fp, "\tjr $ra\n");
            break;
        default:
            break;
        }
        p = p->next;
    }
}

