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

void init_mips(FILE* fp){
    fprintf(fp, ".data\n");
    fprintf(fp, "_prompt: .asciiz \"Enter an integer:\"\n");
    fprintf(fp, "_ret: .asciiz \"\\n\"\n");
    fprintf(fp, ".global main\n");
    fprintf(fp, ".text\n");
    init_read(fp);
    init_write(fp);
}

void reg(Operand *x){

}

void print_mips(FILE* fp, InterCodes *start){
    InterCodes *p = start;
    while(p!=NULL){
        InterCode *ir = p->code;
        switch (ir->ir_kind)
        {
        case IR_LABEL:
            fprintf(fp, "label%d:", ir->unop.op->label_no);
            break;
        case IR_ASSIGN:
            if()
            break;
        
        default:
            break;
        }
        fprintf(fp, "\n");
        p = p->next;
    }
}

void print_op(FILE *fp, Operand *op){
    switch (op->op_kind)
    {
    case OP_VARIABLE:
        fprintf(fp, "v%d", op->var_no);
        break;
    case OP_TEMP: 
        fprintf(fp, "t%d", op->tmp_no);
        break;
    case OP_CONSTANT:
        fprintf(fp, "#%d", op->const_value);
        break;
    case OP_ADDRESS:
        fprintf(fp, "t%d", op->tmp_no); //(address)
        break;
    case OP_FUNCTION:
        fprintf(fp, "%s", op->func_name);
        break;
    case OP_LABEL:
        fprintf(fp, "label%d", op->label_no);
        break;
    case OP_RELOP: 
        fprintf(fp, "%s", op->relop);
        break;
    default:
        log("TODO: print op kind[%d]\n", op->op_kind);
        break;
    }
}

void print_binop( FILE* fp, InterCode *ir){
    print_op(fp, ir->binop.result);
    fprintf(fp, " := ");
    print_op(fp, ir->binop.op1);
    switch (ir->ir_kind)
    {
    case IR_ADD:
        fprintf(fp, " + ");
        break;
    case IR_SUB:
        fprintf(fp, " - ");
        break;
    case IR_DIV: 
        fprintf(fp, " / ");
        break;
    case IR_MUL:
        fprintf(fp, " * ");
        break;
    default:
        break;
    }
    print_op(fp, ir->binop.op2);
}

void print_ir(FILE *fp, InterCodes *start){
    InterCodes *p = start;
    // int cnt = 0;
    // while(p!=NULL){
    //     p = p->next;
    //     cnt ++;
    // }
   // log("last OP: %p\n", p->prev);
    while(p!=NULL){
        InterCode *ir = p->code;
        switch (ir->ir_kind)
        {
        case IR_LABEL:
            fprintf(fp, "LABEL label%d :", ir->unop.op->label_no);
            break;
        case IR_FUNCTION:
            fprintf(fp, "FUNCTION %s :", ir->unop.op->func_name);
            break;
        case IR_ASSIGN:
            print_op(fp, ir->lr.op1);
            fprintf(fp, " := ");
            print_op(fp, ir->lr.op2);
            break;
        case IR_ADD:
        case IR_SUB:
        case IR_DIV:
        case IR_MUL:
            print_binop(fp, ir);
            break;
        case IR_GET_ADDR:
            print_op(fp, ir->lr.op1);
            fprintf(fp, " := &");
            print_op(fp, ir->lr.op2);
            break;
        case IR_GET_ADDR_VAL:
            print_op(fp, ir->lr.op1);
            fprintf(fp, " := *");
            print_op(fp, ir->lr.op2);
            break;
        case IR_TO_ADDR:
            fprintf(fp, "*");
            print_op(fp, ir->lr.op1);
            fprintf(fp, " := ");
            print_op(fp, ir->lr.op2);
            break;
        case IR_GOTO:
            fprintf(fp, "GOTO ");
            print_op(fp, ir->unop.op);
            break;
        case IR_IF:
            fprintf(fp, "IF ");
            print_op(fp, ir->cond.op1);
            fprintf(fp, " ");
            print_op(fp, ir->cond.relop);
            fprintf(fp, " ");
            print_op(fp, ir->cond.op2);
            fprintf(fp, " GOTO ");
            print_op(fp, ir->cond.op3);
            break;
        case IR_RETURN: 
            fprintf(fp, "RETURN ");
            print_op(fp, ir->unop.op);
            break;
        case IR_DEC:
            fprintf(fp, "DEC ");
            print_op(fp, ir->lr.op1);
            fprintf(fp, " %d", ir->lr.op2->const_value);
            break;
        case IR_ARG: 
            fprintf(fp, "ARG ");
            // if(ir->unop.op->op_kind==OP_ADDRESS)
            //     fprintf(fp, "&");
            print_op(fp, ir->unop.op);
            break;
        case IR_CALL_FUNC: 
            print_op(fp, ir->lr.op1);
            fprintf(fp, " := CALL ");
            print_op(fp, ir->lr.op2);
            break;
        case IR_PARAM:
            fprintf(fp, "PARAM ");
            print_op(fp, ir->unop.op);
            break;
        case IR_READ:
            fprintf(fp, "READ ");
            print_op(fp, ir->unop.op);
            break;
        case IR_WRITE: 
            fprintf(fp, "WRITE ");
            print_op(fp, ir->unop.op);
            break;
        default:
            log("one ir not implemented!");
            break;
        }
        fprintf(fp, "\n");
        p = p->next;
    }
}

