#include "common.h"
InterCodes *head = NULL;
InterCodes *tail = NULL;
int new_temp_cnt = 0;
int new_label_cnt = 0;
int new_var_cnt = 0;
int debug_cnt = 0;
extern struct Table_ Table;

void insert_ir(InterCode *ir){
    InterCodes *entry = (InterCodes *)malloc(sizeof(InterCodes));
    entry->next = NULL;
    entry->prev = NULL;
    entry->code = ir;
    if(head == NULL){
        Assert(tail == NULL);
        head = entry;
        tail = entry;
    }
    else{
        Assert(tail != NULL);
        tail->next = entry;
        entry->prev = tail;
        tail = entry;
    }
}

/*
    LABEL, FUNCTION, GOTO, RETURN, ARG, PARAM, READ, WRITE
*/
void gen_ir_1(Operand *op, int ir_kind){
    InterCode *ir = (InterCode *)malloc(sizeof(InterCode));
    ir->ir_kind = ir_kind;
    ir->unop.op = op;
    insert_ir(ir);
}

/*
    ASSIGN, GET_ADDR, GET_ADDR_VAL, TO_ADDR, DEC, CALL
*/
void gen_ir_2(Operand *op1, Operand *op2, int ir_kind){
    InterCode *ir = (InterCode *)malloc(sizeof(InterCode));
    ir->ir_kind = ir_kind;
    ir->lr.op1 = op1;
    ir->lr.op2 = op2;
    insert_ir(ir);
}

void gen_ir_3(Operand *op1, Operand *op2, Operand *result, int ir_kind){
    InterCode *ir = (InterCode *)malloc(sizeof(InterCode));
    ir->ir_kind = ir_kind;
    ir->binop.result = result;
    ir->binop.op1 = op1;
    ir->binop.op2 = op2;
    insert_ir(ir);
}

void gen_if_goto(Operand *op1, Operand *relop, Operand *op2, Operand *op3){
    InterCode *ir = (InterCode *)malloc(sizeof(InterCode));
    ir->ir_kind = IR_IF;
    ir->cond.op1 = op1;
    ir->cond.relop = relop;
    ir->cond.op2 = op2;
    ir->cond.op3 = op3;
    insert_ir(ir);
}

Operand *gen_im(int im){
    Operand *ret = (Operand *)malloc(sizeof(Operand));
    ret->op_kind = OP_CONSTANT;
    ret->const_value = im;
    return ret;
}

Operand *get_var(char *var_name){
    TableEntry *var = search(var_name);
    Assert(var!=NULL);
    if(var->ir_var_no==NULL){
        new_var_cnt++;
        log("new_var: %s (%d)\n", var->sym_name, new_var_cnt);
        Operand *ret = (Operand *)malloc(sizeof(Operand));
        ret->op_kind = OP_VARIABLE;
        ret->var_no = new_var_cnt;
        ret->is_param = 0;
        ret->addr_pos_kind = -1;
        var->ir_var_no = ret;
    }
    return var->ir_var_no;
}

Operand *new_temp(){
    new_temp_cnt ++;
    Operand *ret = (Operand *) malloc(sizeof(Operand));
    //log("new temp: %d\n", new_temp_cnt);
    ret->op_kind = OP_TEMP;
    ret->tmp_no = new_temp_cnt;
    ret->addr_pos_kind = -1;
    return ret;
}

Operand *new_label(){
    new_label_cnt++;
    Operand *ret = (Operand *) malloc(sizeof(Operand));
    ret->op_kind = OP_LABEL;
    ret->label_no = new_label_cnt;
    return ret;
}

void add_arg_list(Operand* new_arg, ArgList* arg_head){
    Assert(new_arg!=NULL && arg_head!=NULL);
    ArgList *t = (ArgList *)malloc(sizeof(ArgList));
    log("arglist updated, [%d], head at: %p\n", new_arg->var_no, arg_head);
    t->arg = new_arg;
    t->next = NULL;
    
    t->next = arg_head->next;
    arg_head->next = t;

    // ArgList *p = arg_head;
    // int cnt =0;
    // while(p){
    //     p = p->next;
    //     cnt++;
    // }
    // log("now arglist has %d args\n", cnt);
}

void translate_Args(struct Node *Args, ArgList *arg_head){
    log("here I come\n");
    struct Node* COMMA = Args->first_child->next_sib;
    if(COMMA == NULL){ // one arg
        Operand *t1 = new_temp();
        translate_Exp(Args->first_child, t1);
        if(t1->op_kind == OP_ADDRESS){
            if(t1->addr_pos_kind==ISVALUE){
                t1 = get_addr_value(t1);
            }
        }
        add_arg_list(t1, arg_head);
    }
    else{
        Assert(IS(COMMA, "COMMA"));
        Operand *t1 = new_temp();
        translate_Exp(Args->first_child, t1);
        if(t1->op_kind == OP_ADDRESS){
            if(t1->addr_pos_kind==ISVALUE){
                t1 = get_addr_value(t1);
            }
        }
        add_arg_list(t1, arg_head);
        translate_Args(COMMA->next_sib, arg_head);
    }// TODO: arg_list could be modified.
    log("there I go\n");
}

Operand *get_addr_value(Operand *place){
    if(place->op_kind!=OP_ADDRESS) return place;
    else{
        if(place->addr_pos_kind == ISVALUE){
            Operand *tmp = new_temp();
            gen_ir_2(tmp, place, IR_GET_ADDR_VAL);
            return tmp;
        }
        else{
            log("Shouldn't be here, place->addr_op_kind: %d\n", place->addr_pos_kind);
            Assert(0);
            return place;
        }
    }
}

Type *get_array_type(struct Node *Exp){
    //Assert(IS(Exp->next_sib, "LB")); not neccesary
    struct Node *p = Exp;
    int array_depth = 0;
    while(IS(p->first_child, "Exp")&&IS(p->first_child->next_sib, "LB")){
        array_depth++;
        p = p->first_child;
    }
    Assert(IS(p, "Exp"));
    struct Node* id = NULL;
    Type *cur_type = NULL;
    if(IS(p->first_child, "ID")){
        id = p->first_child;
        TableEntry* a = search(id->token_text);
        cur_type = a->sym_type;
        //log("(%s), len: %d\n", a->sym_name, a->sym_type->array.len);
    }
    else{
        // STRUCT array
        Assert(p->first_child->next_sib!=NULL);
        Assert(p->first_child->next_sib->next_sib!=NULL);
        Assert(IS(p->first_child->next_sib->next_sib, "ID"));
        id = p->first_child->next_sib->next_sib;
        StructTableEntry *a = search_struct_symbol_table(id->token_text);
        cur_type = a->sym_type;
    }
    log("finished translating base addr for array : %s\n", id->token_text);
    Assert(cur_type->kind==ARRAY);
    int cnt = array_depth;
    while(cnt){
        cnt--;
        cur_type = cur_type->array.elem;
    }
    Assert(cur_type->kind == ARRAY);
    return cur_type;
}

void translate_Exp(struct Node *Exp, Operand *place){
    /*
        Exp : Exp (op) Exp  # binary operator 
            | LP Exp RP  # just parentheses
            | MINUS Exp | NOT Exp  # unary operator
            | ID | INT | FLOAT 
    */
    struct Node *fc = Exp->first_child;
    if(IS(fc, "INT")){
        if(place == NULL) return;
        //log("op: t[%d] op_kind: %d\n", place->tmp_no, place->op_kind);
        if(place->op_kind==OP_TEMP) new_temp_cnt--;
        place->op_kind = OP_CONSTANT;
        place->const_value = fc->int_value;
    }
    else if(IS(fc, "ID") && fc->next_sib == NULL){
        //log("Exp ID met ID: %s\n", fc->token_text);
        if(place == NULL) return;
        TableEntry* variable = search(fc->token_text);
        Operand* var = get_var(variable->sym_name);
        if(variable->sym_type->kind == STRUCTURE){
            Operand *base_addr = var;
            place->op_kind = OP_ADDRESS;
            if(var->is_param==0){
                gen_ir_2(place, var, IR_GET_ADDR);
            }
            else{
                gen_ir_2(place, var, IR_ASSIGN);
            }
            // log("TODO: STRUCTURE in EXP\n");
        }
        else if(variable->sym_type->kind == ARRAY){
            // Exp : Exp LB Exp RB
            //log("TODO: ARRAY in EXP\n");
            Operand *base_addr = var;
            place->op_kind = OP_ADDRESS;
            if(var->is_param==0){
                gen_ir_2(place, var, IR_GET_ADDR);
            }
            else{
                gen_ir_2(place, var, IR_ASSIGN);
            }
        }
        else {
            Assert(variable->sym_type->kind == BASIC);
            if(place->op_kind == OP_TEMP) new_temp_cnt--;
            place->op_kind = OP_VARIABLE;
            place->var_no = var->var_no; 
        }
    }
    else if(IS(fc->next_sib, "ASSIGNOP")){ // TODO: ARRAY and STRUCT
        // if(place==NULL){
        //     Operand *t = new_temp();
        //     place = t;
        // }
        Operand *r = new_temp();
        translate_Exp(fc->next_sib->next_sib, r);
        Operand *l = new_temp();
        translate_Exp(fc, l);
        // If Exp2 is array or struct, then t1 is addr
        if(r->op_kind == OP_ADDRESS){
            if(l->op_kind == OP_ADDRESS){
                if(r->addr_pos_kind == ISVALUE){
                    Assert(l->addr_pos_kind == ISVALUE);
                    Operand *tmp = new_temp();
                    gen_ir_2(tmp, r, IR_GET_ADDR_VAL);
                    gen_ir_2(l, tmp, IR_TO_ADDR);
                    if(place!=NULL) gen_ir_2(place, tmp, IR_ASSIGN);
                }
                else{
                    //Assert(l->addr_pos_kind == ISADDRESS);
                    // ARRAY addr = ARRAY addr, a[][] = b[] or a = b 
                    Type *cur_type_a = get_array_type(fc);
                    Type *cur_type_b = get_array_type(fc->next_sib->next_sib);
                    int a_mem_size = cur_type_a->array.len * cur_type_a->array.size;
                    int b_mem_size = cur_type_b->array.len * cur_type_b->array.size;
                    log("a_len: %d, b_len: %d\n", a_mem_size, b_mem_size);
                    Operand *iter = new_temp();
                    Operand *loop = new_label();
                    Operand *im_0 = gen_im(0);
                    Operand *im_4 = gen_im(4);
                    Operand *temp = new_temp();
                    gen_ir_2(iter, im_0, IR_ASSIGN);
                    gen_ir_1(loop, IR_LABEL);
                    gen_ir_2(temp, r, IR_GET_ADDR_VAL);
                    gen_ir_2(l, temp, IR_TO_ADDR);
                    gen_ir_3(l, im_4, l, IR_ADD);
                    gen_ir_3(r, im_4, r, IR_ADD);
                    gen_ir_3(iter, im_4, iter, IR_ADD);
                    Operand *less = (Operand *)malloc(sizeof(Operand));
                    less->op_kind = OP_RELOP;
                    less->relop = (char *)malloc(sizeof(char[2]));
                    strcpy(less->relop, "<");
                    Operand *array_size = gen_im(b_mem_size);
                    gen_if_goto(iter, less, array_size, loop);
                    // Assert(0);
                }
            }
            else{
                if(r->addr_pos_kind == ISVALUE){
                    gen_ir_2(l, r, IR_GET_ADDR_VAL);
                    if(place!=NULL) gen_ir_2(place, l, IR_ASSIGN);
                }
                else{
                    log("Warning!!!!!!!!: Assignment from addr to temp");
                    gen_ir_2(l, r, IR_ASSIGN);
                    Assert(0);
                }
            }
        }
        else{ // r->op_kind != ADDR
            if(l->op_kind == OP_ADDRESS){
                if(l->addr_pos_kind == ISVALUE){
                    gen_ir_2(l, r, IR_TO_ADDR);
                    if(place!=NULL) gen_ir_2(place, r, IR_ASSIGN);
                }
                else{
                    log("Warning!!!!!!!!: Assignment from temp to addr");
                    gen_ir_2(l, r, IR_ASSIGN);
                    Assert(0);
                }
            }
            else{
                gen_ir_2(l, r, IR_ASSIGN);
                if(place!=NULL) gen_ir_2(place, l, IR_ASSIGN);
            }
        }
    }
    else if(IS(fc, "LP")){
        translate_Exp(fc->next_sib, place);
    }
    else if(IS(fc->next_sib, "PLUS") || IS(fc->next_sib, "MINUS") \
        || IS(fc->next_sib, "STAR") || IS(fc->next_sib, "DIV")){
        // if(place == NULL){
        //     Operand *tmp = new_temp();
        //     place = tmp;
        // } 
        Operand *t1 = new_temp();
        int ir_kind = -1;
        if(IS(fc->next_sib, "PLUS")) ir_kind = IR_ADD;
        else if(IS(fc->next_sib, "MINUS")) ir_kind = IR_SUB;
        else if(IS(fc->next_sib, "STAR")) ir_kind = IR_MUL;
        else if(IS(fc->next_sib, "DIV")) ir_kind = IR_DIV;
        translate_Exp(fc, t1);
        
        t1 = get_addr_value(t1);
        Operand *t2 = new_temp();
        translate_Exp(fc->next_sib->next_sib, t2);
        
        t2 = get_addr_value(t2);
        if(place!=NULL) gen_ir_3(t1, t2, place, ir_kind);
    }
    else if(IS(fc, "MINUS")){
        if(place == NULL){
            Operand *tmp = new_temp();
            place = tmp;
        } 
        Operand *t1 = new_temp();
        Operand *im_0 = gen_im(0);
        translate_Exp(fc->next_sib, t1);
        
        t1 = get_addr_value(t1);
        if(place!=NULL) gen_ir_3(im_0, t1, place, IR_SUB);
    }
    else if(IS(fc, "NOT") || IS(fc->next_sib, "RELOP") ||\
        IS(fc->next_sib, "AND") || IS(fc->next_sib, "OR")){
        // if(place == NULL){
        //     Operand *tmp = new_temp();
        //     place = tmp;
        // } 
        Operand *label1 = new_label();
        Operand *label2 = new_label();
        Operand *im_0 = gen_im(0);
        if(place!=NULL) gen_ir_2(place, im_0, IR_ASSIGN);
        //log("Before Cond : %s\n", fc->first_child->token_text);
        translate_Cond(Exp, label1, label2);
        gen_ir_1(label1, IR_LABEL);
        Operand *im_1 = gen_im(1);
        if(place!=NULL) gen_ir_2(place, im_1, IR_ASSIGN);
        gen_ir_1(label2, IR_LABEL);
    }
    else if(IS(fc->next_sib, "LP")){
        struct Node* Args = fc->next_sib->next_sib;
        if(IS(Args, "Args")){
            TableEntry* func = search(fc->token_text);
            Assert(func!=NULL);
            ArgList *arg_head = (ArgList *)malloc(sizeof(ArgList));
            arg_head->next = NULL;
            translate_Args(Args, arg_head);
            
            if(strcmp(func->sym_name, "write")==0){
                gen_ir_1(arg_head->next->arg, IR_WRITE);
                return ;
            }
            ArgList *p = arg_head->next;
            while(p!=NULL){
                log("Returned!\n");
                Assert(p->arg!=NULL);
                gen_ir_1(p->arg, IR_ARG);
                p = p->next;
            };
            Operand *f = (Operand *)malloc(sizeof(Operand));
            f->op_kind = OP_FUNCTION;
            f->func_name = func->sym_name;
            if(place==NULL){
                Operand *tmp = new_temp();
                place = tmp;
            } 
            gen_ir_2(place, f, IR_CALL_FUNC);
        }
        else{
            Assert(IS(Args, "RP"));
            TableEntry* func = search(fc->token_text);
            Assert(func!=NULL);
            if(strcmp(func->sym_name, "read") == 0){
                gen_ir_1(place, IR_READ);
                return ;
            }
            Operand *f = (Operand *)malloc(sizeof(Operand));
            f->op_kind = OP_FUNCTION;
            f->func_name = func->sym_name;
            log("funcname: %s\n", f->func_name);
            if(place==NULL){
                Operand *tmp = new_temp();
                place = tmp;
            }
            gen_ir_2(place, f, IR_CALL_FUNC);
        }
        log("finished translate function\n");
    }
    /*
    Exp : Exp LB Exp RB  # array 
        | Exp DOT ID # struct member

        goal: place.addr = dest.addr
    */
   else if(IS(fc->next_sib, "LB")){
        log("In Exp ARRAY\n");
        Operand *idx = new_temp(); //t2
        // get base and prepare idx:
        translate_Exp(fc->next_sib->next_sib, idx); // get idx
        Operand *base_addr = new_temp(); //t3
        translate_Exp(fc, base_addr);
        
        // get length:
        Type *cur_type = get_array_type(fc);
        Operand *len = gen_im(cur_type->array.len);
        
        // add together
        Operand *offset = new_temp();
        gen_ir_3(idx, len, offset, IR_MUL);
        
        // get final address
        if(place == NULL){
            Operand *tmp = new_temp();
            place = tmp;
        } 
        // case 1. return value 
        if(cur_type->array.elem->kind == BASIC){
            place->addr_pos_kind = ISVALUE;
        }
        else{ //case 2. return address
            place->addr_pos_kind = ISADDRESS;
        }
        place->op_kind = OP_ADDRESS;
        gen_ir_3(base_addr, offset, place, IR_ADD);
   }
   else if(IS(fc->next_sib, "DOT")){
        log("In Exp STRUCT\n");
        Operand *base_addr = new_temp();
        translate_Exp(fc, base_addr);
        
        
        // get offset:
        struct Node *ID = fc->next_sib->next_sib;
        Assert(IS(ID, "ID"));
        log("finished translating base addr of [%s]\n", ID->token_text);
        struct Node *p = fc;
        int struct_depth = 0;
        while(IS(p->first_child,"Exp")&&IS(p->first_child->next_sib, "DOT")){
            struct_depth++;
            p = p->first_child;
        }
        log("struct depth: %d\n", struct_depth);
        if(IS(p->first_child, "ID")){

        }
        StructTableEntry *member = search_struct_symbol_table(ID->token_text);
        int offset_len = member->offset;
        Operand *offset = gen_im(offset_len);
        
        if(place == NULL){
            Operand *tmp = new_temp();
            place = tmp;
        } 
        // case 1: return value
        if(member->sym_type->kind == BASIC){
            place->addr_pos_kind = ISVALUE;
        }
        else{ //
            place->addr_pos_kind = ISADDRESS;
        }
        place->op_kind = OP_ADDRESS;
        gen_ir_3(base_addr, offset, place, IR_ADD);
   }
}

void translate_Cond(struct Node* Exp, Operand *label_true, Operand *label_false){
    Assert(IS(Exp, "Exp"));
    struct Node* fc = Exp->first_child; 
    struct Node* rel = fc->next_sib;
    if(rel == NULL){
        Operand *t1 = new_temp();
        translate_Exp(Exp, t1);
        
        t1 = get_addr_value(t1);
        Operand *im_0 = gen_im(0);
            Operand *neq = (Operand *)malloc(sizeof(Operand));
            neq->op_kind = OP_RELOP;
            neq->relop = (char *)malloc(sizeof(char[3]));
            strcpy(neq->relop, "!=");
        gen_if_goto(t1, neq, im_0, label_true);
        gen_ir_1(label_false, IR_GOTO);
    }
    else if(IS(fc, "NOT")){
        translate_Cond(fc->next_sib, label_false, label_true);
    }
    else if(IS(rel, "RELOP")){
        Operand *t1 = new_temp();
        Operand *r = (Operand *)malloc(sizeof(Operand));
        r->op_kind = OP_RELOP;
        r->relop = rel->token_text; 
        translate_Exp(fc, t1);
        
        t1 = get_addr_value(t1);
        Operand *t2 = new_temp();
        translate_Exp(rel->next_sib, t2);
        
        t2 = get_addr_value(t2);
        gen_if_goto(t1, r, t2, label_true);
        gen_ir_1(label_false, IR_GOTO);
    }
    else if(IS(rel, "AND")){
        Operand *label1 = new_label();
        translate_Cond(fc, label1, label_false);
        gen_ir_1(label1, IR_LABEL);
        translate_Cond(rel->next_sib, label_true, label_false);
    }
    else if(IS(rel, "OR")){
        Operand *label1 = new_label();
        translate_Cond(fc, label_true, label1);
        gen_ir_1(label1, IR_LABEL);
        translate_Cond(rel->next_sib, label_true, label_false);
    }
    else{
        Operand *t1 = new_temp();
        translate_Exp(Exp, t1);
        
        t1 = get_addr_value(t1);
        Operand *im_0 = gen_im(0);
            Operand *neq = (Operand *)malloc(sizeof(Operand));
            neq->op_kind = OP_RELOP;
            neq->relop = (char *)malloc(sizeof(char[3]));
            strcpy(neq->relop, "!=");
        gen_if_goto(t1, neq, im_0, label_true);
        gen_ir_1(label_false, IR_GOTO);
    }
}

void translate_VarList(struct Node *VarList){
    /*
        VarList : ParamDec COMMA VarList | ParamDec
    */
    Assert(IS(VarList, "VarList"));
    struct Node *p = VarList;
    while(IS(p, "VarList")){
        struct Node *paramdec = p->first_child;  
        /*
            ParamDec : Specifier VarDec
            VarDec : ID | VarDec LB INT RB
        */
        struct Node *vardec = paramdec->first_child->next_sib;  
        //TODO: STRUCT and ARRAY
        while (vardec->first_child->next_sib!=NULL)
        {
            vardec = vardec->first_child;
        }
        Assert(IS(vardec->first_child, "ID"));
        Operand * v= get_var(vardec->first_child->token_text);
        v->is_param = 1;
        gen_ir_1(v, IR_PARAM);
        if(paramdec->next_sib!=NULL) p = paramdec->next_sib->next_sib;
        else break;
    }
}

void translate_FuncDec(struct Node *FuncDec){
    /*
        FunDec : ID LP VarList RP | ID LP RP
    */
    Assert(IS(FuncDec, "FunDec"));
    Operand *fundec = (Operand *)malloc(sizeof(Operand));
    fundec->op_kind = FUNCTION;
    fundec->func_name = FuncDec->first_child->token_text;
    gen_ir_1(fundec, IR_FUNCTION);
    // PARAM
    if(IS(FuncDec->first_child->next_sib->next_sib, "VarList")){
        // gen param
        struct Node* VarList = FuncDec->first_child->next_sib->next_sib;
        translate_VarList(VarList);
    }
}



void translate_Stmt(struct Node* Stmt){
    /*
        Stmt : Exp SEMI | CompSt | RETURN Exp SEMI 
             | IF LP Exp RP Stmt | IF LP Exp RP Stmt ELSE Stmt
             | WHILE LP Exp RP Stmt
    */
    Assert(IS(Stmt, "Stmt"));
    struct Node* fc = Stmt->first_child;
    if(IS(fc, "Exp")){
        translate_Exp(fc, NULL);
    }
    else if(IS(fc, "CompSt")){
        // Need stiching.
        if(fc->comp_tail==NULL && fc->comp_head==NULL){
            log("skipping empty CompSt\n");
            return;
        }
        Assert(fc->comp_head!=NULL && fc->comp_tail!=NULL);
        fc->comp_head->prev = tail;
        tail->next = fc->comp_head;
        tail = fc->comp_tail;
        Assert(tail->next==NULL);
    }
    else if(IS(fc, "RETURN")){
        Operand *t1 = new_temp();
        translate_Exp(fc->next_sib, t1); // code 1
        
        t1 = get_addr_value(t1);
        gen_ir_1(t1, IR_RETURN);
    }
    else if(IS(fc, "IF")){
        struct Node* ELSE = fc->next_sib->next_sib->next_sib->next_sib->next_sib;
        if(ELSE==NULL){
            Operand *label1 = new_label();
            Operand *label2 = new_label();
            //log("fc->nextSIB is : %s\n", fc->next_sib->next_sib->token_name);
            translate_Cond(fc->next_sib->next_sib, label1, label2);
            gen_ir_1(label1, IR_LABEL);
            translate_Stmt(fc->next_sib->next_sib->next_sib->next_sib);
            gen_ir_1(label2, IR_LABEL);
        }
        else{
            Assert(IS(ELSE, "ELSE"));
            Operand *label1 = new_label();
            Operand *label2 = new_label();
            Operand *label3 = new_label();
            translate_Cond(fc->next_sib->next_sib, label1, label2);
            gen_ir_1(label1, IR_LABEL);
            translate_Stmt(fc->next_sib->next_sib->next_sib->next_sib);
            gen_ir_1(label3, IR_GOTO);
            gen_ir_1(label2, IR_LABEL);
            translate_Stmt(ELSE->next_sib);
            gen_ir_1(label3, IR_LABEL);
        }
    }
    else if(IS(fc, "WHILE")){
        Operand *label1 = new_label();
        Operand *label2 = new_label();
        Operand *label3 = new_label();
        gen_ir_1(label1, IR_LABEL);
        translate_Cond(fc->next_sib->next_sib, label2, label3);
        gen_ir_1(label2, IR_LABEL);
        translate_Stmt(fc->next_sib->next_sib->next_sib->next_sib);
        gen_ir_1(label1, IR_GOTO);
        gen_ir_1(label3, IR_LABEL);
    }
}

void translate_VarDec(struct Node *VarDec, Operand* place){
    /*
        VarDec : ID | VarDec LB INT RB
    */
    Assert(IS(VarDec, "VarDec"));
    struct Node* fc = VarDec->first_child;
    if(IS(fc, "ID")){
        TableEntry* var = search(fc->token_text);
        if(var->sym_type->kind==BASIC){
            if(place!=NULL){
                Operand *v = get_var(var->sym_name);
                place->op_kind = OP_VARIABLE;
                place->var_no = v->var_no;
            }
        }
        else if(var->sym_type->kind == ARRAY){
            if(place!=NULL){ 
                log("TODO: ASSIGNMENT FOR WHOLE ARRAY(declaration in VarDec)\n");
                // Operand *v = get_var(var->sym_name);
                // Operand *t = new_temp();
                // t->op_kind = OP_ADDRESS;
                // place->op_kind = OP_ADDRESS;
                // gen_ir_2(t, v, IR_GET_ADDR);
                // gen_ir_2(place, t, IR_ASSIGN);
            }
            else{
                log("Not gonna happen\n");
            }
        }
        else{ // TODO: Structure assignment
            log("TODO: ASSIGNMENT FOR Struct(declaration in VarDec)\n"); 
            if(place!=NULL){
                log("TODO: ASSIGNMENT FOR WHOLE STRUCT(declaration in VarDec)\n");
            }
            else{
                log("Struct Dec\n");
                FieldList *p = var->sym_type->structure.member;
                int struct_size = 0;
                while(p!=NULL){
                    struct_size += p->field_size;
                    p = p->tail;
                }
                Operand *v = get_var(var->sym_name);
                Operand *s = gen_im(struct_size);
                gen_ir_2(v, s, IR_DEC);
            }
        }
    }
    else{ // ARRAY
        int array_depth = 0;
        while(IS(fc, "VarDec")){
            fc = fc->first_child;
            array_depth++;
        }
        Assert(IS(fc, "ID"));
        TableEntry *var = search(fc->token_text);
        Assert(var->sym_type->kind==ARRAY);
        if(place!=NULL){
            log("TODO: ASSIGNMENT FOR ARRAY(declaration in VarDec)\n"); 
            // vardec = place
            // place = exp;
            // Operand *base_addr = new_temp();
            // int len = 0;
            
            // if(IS(fc, "VarDec")){
            //     translate_VarDec(fc, base_addr);
            // }
        }
        else{ // DEC
            Operand *v = get_var(var->sym_name);
            int len = var->sym_type->array.len * var->sym_type->array.size;
            Operand *s = gen_im(len);
            gen_ir_2(v, s, IR_DEC);
        }
    }
}

void translate_Def(struct Node* Def){
    Assert(IS(Def, "Def"));
    /*
        Def : Specifier DecList SEMI
    */
    struct Node *DecList = Def->first_child->next_sib;
    /*
        DecList : Dec | Dec COMMA DecList
    */
    struct Node *Dec = DecList->first_child;
    while(IS(Dec, "Dec")){
        /*
            Dec : VarDec | VarDec ASSIGNOP Exp
        */
        struct Node *VarDec = Dec->first_child;
        if(VarDec->next_sib == NULL){
            translate_VarDec(VarDec, NULL);
        }
        else{// TODO: ARRAY AND STRUCT
            Operand *v1 = get_var(VarDec->first_child->token_text);
            Operand *t1 = new_temp();
            translate_VarDec(VarDec, v1);
            translate_Exp(VarDec->next_sib->next_sib, t1);
            t1 = get_addr_value(t1);
            // log("[%d]:%d [%d]:%d\n", v1->op_kind, v1->var_no, t1->op_kind, t1->tmp_no);
            gen_ir_2(v1, t1, IR_ASSIGN);
        }
        if(Dec->next_sib!=NULL){
            Dec = Dec->next_sib->next_sib->first_child;
        } 
        else break;
    }
}

void translate_CompSt(struct Node* CompSt){
    /*
        CompSt : LC DefList StmtList RC
    */  
    Assert(IS(CompSt, "CompSt"));
    // Stiching:
    CompSt->comp_head = tail;
    CompSt->comp_tail = tail;
    Assert(CompSt->comp_tail->next==NULL);
    //
    struct Node *DefList = CompSt->first_child->next_sib;
    struct Node *StmtList = DefList->next_sib;
    struct Node *p = DefList;
    while(p->first_child!=NULL){
        log("Translating Def\n");
        translate_Def(p->first_child);
        p = p->first_child->next_sib;
    }
    p = StmtList;
    while(p->first_child!=NULL){
        log("Translating Stmt, Stmt->fc: %s\n", p->first_child->first_child->token_text);        
        translate_Stmt(p->first_child);
        p = p->first_child->next_sib;
    }
    if(CompSt->comp_tail == tail){
        Assert(CompSt->comp_tail->next==NULL);
        log("Didn't gen anything. compst tail: %p\n", CompSt->comp_tail);
        CompSt->comp_head = NULL;
        CompSt->comp_tail = NULL;
        return;
    }
    CompSt->comp_head = CompSt->comp_head->next;
    CompSt->comp_tail->next = NULL;
    CompSt->comp_tail = tail;
    tail = CompSt->comp_head->prev;
    tail->next = NULL;
    // log("tail: %p\n", tail);
    Assert(CompSt->comp_head!=NULL);
    // FILE *fp = fopen("lcx.ir", "a+");
    // fprintf(fp, "debug_cnt: %d\n", debug_cnt);
    // debug_cnt++;
    // print_ir(fp, comp_head);
    // fclose(fp);
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