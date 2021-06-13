#include "common.h"
extern InterCodes *head;
FuncRecord* record_head = NULL;
FuncRecord* cur_function = NULL;

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

int search_tempo(FuncRecord* func, Operand* x){
    int found = 0;
    ArgList* tempo = func->tempos;
    if(x->op_kind == OP_TEMP){
        while(tempo!=NULL){
            if(tempo->arg->op_kind==OP_TEMP && x->tmp_no == tempo->arg->tmp_no){
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
    return found;
}

void init_memory(FILE* fp, InterCodes *start){
    // should keep record of exsisting var/temp  
    int var_cnt = 0;
    int temp_cnt = 0;
    int function_cnt = 0;
    InterCodes *p = start;
    while(p){
        InterCode *ir = p->code;
        if(ir->unop.op->op_kind == OP_VARIABLE){
            Assert(record_head!=NULL);
            if(ir->unop.op->var_no > var_cnt) var_cnt = ir->unop.op->var_no;
            if(search_tempo(record_head, ir->unop.op)==0){
                ArgList* new_tempo = (ArgList *)malloc(sizeof(ArgList));
                new_tempo->arg = ir->unop.op;
                new_tempo->next = record_head->tempos;
                new_tempo->offset = record_head->tempo_size;
                record_head->tempos = new_tempo;
                record_head->tempo_size+=4;
            }
            //log("found v%d\n", ir->unop.op->var_no);
        }
        else if(ir->unop.op->op_kind == OP_TEMP){
            Assert(record_head!=NULL);
            if(ir->unop.op->tmp_no > temp_cnt) temp_cnt = ir->unop.op->tmp_no;
            if(search_tempo(record_head, ir->unop.op)==0){
                ArgList* new_tempo = (ArgList *)malloc(sizeof(ArgList));
                new_tempo->arg = ir->unop.op;
                new_tempo->next = record_head->tempos;
                new_tempo->offset = record_head->tempo_size;
                record_head->tempos = new_tempo;
                record_head->tempo_size+=4;
            }
            // log("found t%d\n", ir->unop.op->var_no);
        }
        else if(ir->ir_kind == IR_FUNCTION){
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
        p = p->next;
    }
    log("var_cnt: %d, temp_cnt: %d ,func_cnt: %d\n", var_cnt, temp_cnt, function_cnt);
    FuncRecord* func_tmp = record_head;
    while(func_tmp!=NULL){
        log("Function: %s (total offset: %d)\n", func_tmp->func_name, func_tmp->tempo_size);
        ArgList* temps = func_tmp->tempos;
        while (temps!=NULL)
        {
            if(temps->arg->op_kind==OP_VARIABLE) log("v%d, offset: %d\n", temps->arg->var_no, temps->offset);
            else log("t%d, offset: %d\n", temps->arg->tmp_no, temps->offset);
            temps = temps->next;
        }
        func_tmp = func_tmp->next;
    }
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
    if(x->op_kind == OP_TEMP || x->op_kind == OP_ADDRESS){
        fprintf(fp, "\tsw $t%d, t%d\n", reg_no, x->tmp_no);
    }
    else if(x->op_kind == OP_VARIABLE){
        fprintf(fp, "\tsw $t%d, v%d\n", reg_no, x->var_no);
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
    fprintf(fp, "\taddi $sp, $sp, -4\n");
    fprintf(fp, "\tsw $ra, 0($sp)\n");
}

void pop_ra(FILE* fp){
    fprintf(fp, "\tlw $ra, 0($sp)\n");
    fprintf(fp, "\taddi $sp, $sp, 4\n");
}

FuncRecord* find_function(char *func_name){
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

void push_tempos(FILE* fp){
    Assert(cur_function!=NULL);
    ArgList* temps = cur_function->tempos;
    fprintf(fp, "\taddi $sp, $sp, -%d\n", cur_function->tempo_size);
    while (temps!=NULL)
    {
        reg(fp, temps->arg, 0);
        fprintf(fp, "\tsw $t0, %d($sp)\n", temps->offset);
        temps = temps->next;
    }
}

void pop_tempos(FILE* fp){
    Assert(cur_function!=NULL);
    ArgList* temps = cur_function->tempos;
    while (temps!=NULL)
    {
        fprintf(fp, "\tlw $t0, %d($sp)\n", temps->offset);
        spill(fp, temps->arg, 0);
        temps = temps->next;
    }
    fprintf(fp, "\taddi $sp, $sp, %d\n", cur_function->tempo_size);
}

void print_mips(FILE* fp, InterCodes *start){
    init_mips(fp, start);
    InterCodes *p = start;
    int cnt = 0;
    while(p!=NULL){
        cnt++;
        log("translating ir: %d\n", cnt);
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
            push_ra(fp);
            fprintf(fp, "\tjal read\n");
            fprintf(fp, "\tmove $t0, $v0\n");
            spill(fp, ir->unop.op, 0);
            pop_ra(fp);
            break;
        case IR_WRITE: 
            reg(fp, ir->unop.op, 0);
            fprintf(fp, "\taddi $sp, $sp, -4\n");
            fprintf(fp, "\tsw $t0, 0($sp)\n");
            push_ra(fp);
            fprintf(fp, "\tmove $a0, $t0\n");
            fprintf(fp, "\tjal write\n");
            pop_ra(fp);
            fprintf(fp, "\tlw $t0, 0($sp)\n");
            fprintf(fp, "\taddi $sp, $sp, 4\n");
            break;
        case IR_DEC:
            // array
            fprintf(fp, "\taddi $sp, $sp, -%d\n", ir->lr.op2->const_value);
            fprintf(fp, "\tsw $sp, v%d\n", ir->lr.op1->var_no);
            Assert(cur_function!=NULL);
            cur_function->array_size += ir->lr.op2->const_value;
            break;
        case IR_FUNCTION: 
            fprintf(fp, "\n");
            if(strcmp(ir->unop.op->func_name, "main")!=0){
                fprintf(fp, "lcx_%s:\n", ir->unop.op->func_name);
            }
            else{
                fprintf(fp, "main:\n");
            }
            cur_function = find_function(ir->unop.op->func_name);
            break;
        
        case IR_ARG: // call function with args
            ;
            InterCodes *arg_begin = p;
            InterCodes *a = arg_begin;
            int arg_cnt = 0;
            Assert(a->code->ir_kind == IR_ARG);
            // find the function to be called and save its args
            push_tempos(fp);
            // 1. save PARAMs
            while(a->code->ir_kind == IR_ARG){
                a = a->next;
            }
            
            p = a;
            Assert(p->code->ir_kind == IR_CALL_FUNC);
            FuncRecord* tmp = find_function(a->code->lr.op2->func_name);
            ArgList* func_args = tmp->args; // last param
            // 2. change args
            InterCodes *arg_end = a->prev;
            Assert(arg_end->code->ir_kind == IR_ARG); 
            int param_offset = 0;
            a = arg_begin;
            while(a->code->ir_kind == IR_ARG){
                cnt++;
                //param_offset += 4;
                reg(fp, func_args->arg, 0);
                fprintf(fp, "\taddi $sp, $sp, -4\n");
                fprintf(fp, "\tsw $t0, 0($sp)\n");
                reg(fp, a->code->unop.op, 0);
                spill(fp, func_args->arg, 0);

                func_args = func_args->next;
                a = a->next;
            }
            Assert(func_args == NULL);
            
            // core:
            ir = p->code;
            Assert(ir->ir_kind == IR_CALL_FUNC);
            
            push_ra(fp);
            if(strcmp(ir->lr.op2->func_name, "main")!=0){
                fprintf(fp, "\tjal lcx_%s\n", ir->lr.op2->func_name);
            }  
            else{
                fprintf(fp, "\tjal main\n");
            }
            pop_ra(fp);

            func_args = tmp->args; // last param
            while(func_args!=NULL){
                //param_offset -= 4;
                fprintf(fp, "\tlw $t0, %d($sp)\n", 0);
                fprintf(fp, "\taddi $sp, $sp, 4\n");
                spill(fp, func_args->arg, 0);
                func_args = func_args->next;
            }
            pop_tempos(fp);
            fprintf(fp, "\tmove $t0, $v0\n");
            spill(fp, ir->lr.op1, 0);
            Assert(arg_cnt == 0);
            break;
        case IR_CALL_FUNC: // no args
            push_tempos(fp);
            push_ra(fp);
            if(strcmp(ir->lr.op2->func_name, "main")!=0){
                fprintf(fp, "\tjal lcx_%s\n", ir->lr.op2->func_name);
            }  
            else{
                fprintf(fp, "\tjal main\n");
            }
            //reg(fp, ir->lr.op1, 0);
            fprintf(fp, "\tmove $t0, $v0\n");
            spill(fp, ir->lr.op1, 0);
            pop_ra(fp);
            pop_tempos(fp);
            break;
        case IR_RETURN:
            Assert(cur_function!=NULL);
            // 1. $sp + array_size
            if(cur_function->array_size!=0){
                fprintf(fp, "\taddi $sp, $sp, %d\n", cur_function->array_size);
            }
            //cur_function = NULL;
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

