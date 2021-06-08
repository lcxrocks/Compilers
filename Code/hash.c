#include "common.h"

int depth; // indicate current stack depth
struct Table_ Table = { 0 };
void CompSt(struct Node *com, Type *func_type);
void show_table();

unsigned int hash_pjw(char *name){
    unsigned int val = 0, i;
    for(; *name; ++name){
        val = (val<<2) + *name;
        if((i = val & ~TABLESIZE)) val = (val ^ (i >> 12)) & TABLESIZE;
    } // TABLESIZE defined in 'common.h'
    return val;
}

void insert(TableEntry *sym){
    //printf("inserting [%s]\n", sym->sym_name);
    //show_table();
    int index = hash_pjw(sym->sym_name);
    sym->next_hash = Table.hashTable[index];
    Table.hashTable[index] = sym;
    sym->next_stack = Table.stack[depth];
    Table.stack[depth] = sym;
}

void delete(int stack_depth){
    //printf("deleting stack depth: %d\n", stack_depth);
    //show_table();
    TableEntry *p = Table.stack[stack_depth];
    while(p!=NULL){
        int index = hash_pjw(p->sym_name);
        //printf("deleting : %s\n", p->sym_name);
        TableEntry *t = Table.hashTable[index];
        Assert(t!=NULL);
        if(t == p) {
           Table.hashTable[index] = p->next_hash; 
        }
        else{
            while(t->next_hash!=p) t = t->next_hash;
            Assert(t->next_hash == p);
            t->next_hash = p->next_hash;
        }
        p = p->next_stack;
    }
    p = Table.stack[stack_depth];
    while(p!=NULL){
        TableEntry *before = p;
        p = p->next_stack;
        free(before);
    }
    Table.stack[stack_depth] = NULL;
    //printf("after\n");
    //show_table();
}

TableEntry *search(char *sym_name){
    int index = hash_pjw(sym_name);
    TableEntry *first_entry = Table.hashTable[index];
    TableEntry *p = first_entry;
    int found = 0;
    if(p==NULL) return p;
    else{
        while(p!=NULL){
            if(strcmp(p->sym_name, sym_name) == 0){
                found = 1;
                break;
            }   
            p = p->next_hash;
        }
        //if(found != 0) printf("found!\n");
        Assert((p==NULL&&found==0)||(found!=0&&p!=NULL));
        return p;
    }
}

TableEntry *VarDec(struct Node *vardec, Type *var_type){
    /*
        VarDec : ID | VarDec LB INT RB
    */
    Assert(IS(vardec, "VarDec"));
    struct Node *p = vardec->first_child;
    TableEntry *t = (TableEntry *)malloc(sizeof(TableEntry));
    t->next_hash = NULL;
    t->next_stack = NULL;
    t->sym_depth = depth;
    t->is_struct_def = 0;
    int last = 1;
    Type *prev_type = NULL;
    while(IS(p, "VarDec")){
        //p->token_name == "VarDec"[r]
    Type *tmp_type = (Type *)malloc(sizeof(Type));
        tmp_type->kind = ARRAY;
        tmp_type->array.size = p->next_sib->next_sib->int_value;
        //printf("arraysize: %d\n", tmp_type->array.size);
        if(last){
            tmp_type->array.elem = var_type;
            last = 0;
        }
        else{
            tmp_type->array.elem = prev_type;
        }
        prev_type = tmp_type;
        p = p->first_child;
    }
    // p->token_name == "ID"
    t->sym_name = p->token_text; //NOTE: str ptr
    if(prev_type == NULL)
        t->sym_type = var_type;
    else
        t->sym_type = prev_type;
    return t;
}

FieldList *struct_DecList(Type* def_type, struct Node *declist, FieldList *struct_last, int initial, Type *struct_type){
    /*
        DecList : Dec | Dec COMMA DecList 
        Dec : VarDec | VarDec ASSIGNOP EXP
    */
    Assert(IS(declist, "DecList"));
    int first=1;
    do{
        if(first) first--;
        else declist = declist->first_child->next_sib->next_sib;
        TableEntry *vardec_tmp = VarDec(declist->first_child->first_child, def_type);
        if(declist->first_child->first_child->next_sib!=NULL){
            printf("Error type 15 at Line %d: Illegal initialization in struct definition.\n",declist->first_child->first_child->first_line);
            //continue;
        }
        TableEntry * find = search(vardec_tmp->sym_name);
        if(find && find->sym_depth == depth){
            free(vardec_tmp);
            printf("Error type 15 at Line %d: Redefined field \"%s\".\n",declist->first_child->first_child->first_line, vardec_tmp->sym_name);
            continue;
        }
        else 
            insert(vardec_tmp);
        FieldList *new_component = (FieldList *)malloc(sizeof(FieldList));
        
        new_component->type = vardec_tmp->sym_type;
        new_component->name = vardec_tmp->sym_name;
        new_component->tail = NULL;
        if(initial){
            initial = 0;
            struct_type->structure.member = new_component;
            struct_last = struct_type->structure.member;
        }
        else{
            struct_last->tail = new_component;
            struct_last = struct_last->tail;
        }
    }while(declist->first_child->next_sib!=NULL);
    return struct_last;
}

Type* Specifier(struct Node* spec){ // as a child: A -> Specifier ... 
    /*
        Specifier : TYPE | StructSpcifier
    */
    Assert(IS(spec, "Specifier"));
    struct Node* t = spec->first_child;
    Type* type = (Type *) malloc(sizeof(Type));
    if(IS(t, "TYPE")){
        type->kind = BASIC;
        if(strcmp(t->token_text, "int") == 0){
            type->basic = TYPE_INT;
        }
        else{
            Assert(strcmp(t->token_text, "float") == 0);
            type->basic = TYPE_FLOAT;
        }
    }
    else{
        Assert(IS(t, "StructSpecifier"));
        /*
            StructSpecifier : STRUCT OptTag LC DefList RC | STRUCT Tag
        */
        type->kind = STRUCTURE;
        type->structure.member = NULL;
        if(IS(t->first_child->next_sib, "Tag")){
            TableEntry *defined_struct = search(t->first_child->next_sib->first_child->token_text);
            if(defined_struct == NULL || (defined_struct!=NULL && defined_struct->sym_type->structure.is_defined==0)){
                printf("Error type 17 at Line %d: Undefined structure \"%s\".\n", t->first_child->next_sib->first_child->first_line, t->first_child->next_sib->first_child->token_text);
                return NULL;
            }
            type = defined_struct->sym_type;
            return type;
        }
        else{
            Assert(IS(t->first_child->next_sib, "OptTag"));
            /*
                OptTag : ID | e
            */
            struct Node* opttag = t->first_child->next_sib;
            int outer_depth = depth;  // Struct is defined globally
            depth = 0;
            TableEntry *struct_def = (TableEntry *)malloc(sizeof(TableEntry));
            struct_def->sym_name = NULL;
            struct_def->next_hash = NULL;
            struct_def->next_stack = NULL;  
            struct_def->sym_depth = depth;
            struct_def->is_struct_def = 1;
            type->structure.is_defined = 0;
            struct_def->sym_type = type;
            if(opttag->first_child!=NULL){ // insert Table.stack[0]
                struct_def->sym_name = opttag->first_child->token_text;
                TableEntry * find = search(struct_def->sym_name);
                if(find!=NULL) {
                    printf("Error type 16 at Line %d: Duplicated name \"%s\".\n", spec->first_line, struct_def->sym_name);
                    free(struct_def);
                }
                else insert(struct_def);
            }
            else{
                Assert(opttag->first_child == NULL);
            }
            depth = outer_depth;
            /*
                DefList : Def DefList | e
            */
            depth++; // into a new space
            FieldList *struct_last = type->structure.member;
            struct Node* deflist = opttag->next_sib->next_sib;
            int first = 1;
            while(deflist->first_child!=NULL){
                /*
                    Def : Specifier DecList SEMI
                */
                struct Node* def = deflist->first_child;
                Type * def_type = Specifier(def->first_child);
                if(def_type==NULL) {
                    deflist = deflist->first_child->next_sib;
                    continue;
                }
                struct Node* declist = def->first_child->next_sib;                
                struct_last = struct_DecList(def_type, declist, struct_last, first, type);
                if(first) first--;
                deflist = deflist->first_child->next_sib;
            }
            delete(depth);
            depth--;
            type->structure.is_defined = 1;
            struct_def->sym_type = type;
            FieldList *t = type->structure.member;
            // while(t!=NULL){
            //     printf("%s->", t->name);
            //     t = t->tail;
            // }
            // printf("\n");
            
        }
    }
    return type;
}



TableEntry *FunDec(struct Node *fundec, Type *fun_type){
    /*
        FuncDec : ID LP VarList RP | ID LP RP
    */
    Assert(IS(fundec, "FunDec"));
    TableEntry *t = (TableEntry *)malloc(sizeof(TableEntry));
    t->is_struct_def = 0;
    t->sym_type = (Type *)malloc(sizeof(Type));
    t->next_hash = NULL;
    t->next_stack = NULL;
    t->sym_depth = depth;
    t->sym_name = fundec->first_child->token_text;
    t->sym_type->func.return_type = fun_type;
    t->sym_type->kind = FUNCTION;
    t->sym_type->func.param = NULL;
    t->sym_type->func.is_defined = 0;
    t->sym_type->func.param_cnt = 0;
    t->sym_type->func.first_line = fundec->first_line;
    struct Node *varlist = fundec->first_child->next_sib->next_sib;
    if(strcmp(varlist->token_name, "VarList")!=0) return t;
    /*
        VarList : ParamDec COMMA VarList | ParamDec
        ParamDec : Specifier VarDec
    */
    int first = 1;
    FieldList *para_last = t->sym_type->func.param;
    depth++; //for the params 
    do{
        t->sym_type->func.param_cnt++;
        Assert(para_last==NULL || para_last->tail==NULL);
        if(!first) varlist = varlist->first_child->next_sib->next_sib;
        struct Node *paramdec = varlist->first_child; 
        //Assert(strcmp(paramdec->next_sib->token_name, "COMMA")==0);
        Type *para_type = Specifier(paramdec->first_child);
        TableEntry *para_vardec =  VarDec(paramdec->first_child->next_sib, para_type);
        TableEntry * find = search(para_vardec->sym_name);
        if(find!=NULL) {
            printf("Error type 3 at Line %d: Redefined function parameter\"%s\".\n", paramdec->first_line, para_vardec->sym_name);
            free(para_vardec);
        }
        else insert(para_vardec);
        FieldList *para_component = (FieldList *)malloc(sizeof(FieldList));
        para_component->name = para_vardec->sym_name;
        para_component->type = para_vardec->sym_type;
        para_component->tail = NULL;
        if(first){
            first--;
            t->sym_type->func.param = para_component;
            para_last = t->sym_type->func.param;
        }
        else{
            Assert(para_last->tail == NULL);
            para_last->tail = para_component;
            para_last = para_last->tail;
        }
    }while(varlist->first_child->next_sib!=NULL);
    // delete(depth); save till CompSt
    depth--;
    return t;
}

int compare_type(Type *t1, Type *t2){
    if(t1==NULL || t2==NULL) return 2;
    int same = 0;
    if(t1->kind == t2->kind){
        if(t1->kind==BASIC){
            if(t1->basic==t2->basic) same = 1;
            else same = 0;
        }
        else if(t1->kind == ARRAY){     
            Type *t1_elem = t1->array.elem;
            Type *t2_elem = t2->array.elem;
            if(compare_type(t1_elem, t2_elem)==1) same = 1;
            else same = 0; 
        }
        else if(t1->kind == STRUCTURE){
            FieldList *t1_field = t1->structure.member;
            FieldList *t2_field = t2->structure.member;
            //printf("comparing %s, %s\n", t1_field->name, t2_field->name);
            while(t1_field!= NULL && t2_field!=NULL){
                if(compare_type(t1_field->type, t2_field->type)==1) same = 1;
                else{
                    same = 0;
                    break;
                }
                t1_field = t1_field->tail;
                t2_field = t2_field->tail;
            }
            if((t1_field==NULL && t2_field!=NULL) || (t1_field!=NULL && t2_field==NULL))
                same = 0;
        }
        return same;
    }
    else
        return 0;
}

Type *Exp(struct Node* exp){
    /*
        Exp : Exp (op) Exp  # binary operator 
            | LP Exp RP  # just parentheses
            | MINUS Exp | NOT Exp  # unary operator
            | ID LP Args RP | ID LP RP  # calling for function
            | Exp LB Exp RB  # array 
            | Exp DOT ID # struct member
            | ID | INT | FLOAT 
    */
    Assert(IS(exp, "Exp"));
    if(IS(exp->first_child, "ID")){
        if(exp->first_child->next_sib==NULL){
            TableEntry * id= search(exp->first_child->token_text);
            if(id != NULL) {
                if(id->is_struct_def){
                    printf("Error type 1 at Line %d: Undefined variable \"%s\".\n", exp->first_child->first_line, exp->first_child->token_text);
                    return NULL;
                }
                else return id->sym_type;
            } 
            else{
                printf("Error type 1 at Line %d: Undefined variable \"%s\".\n", exp->first_child->first_line, exp->first_child->token_text);
                return NULL;
            }    
        }
        else{
            Assert(IS(exp->first_child->next_sib, "LP"));
            struct Node* func_id = exp->first_child;
            TableEntry *func_def = search(func_id->token_text);
            if(func_def==NULL){
                printf("Error type 2 at Line %d: Undefined function \"%s\".\n", func_id->first_line, func_id->token_text);
                return NULL;
            }
            if(func_def->sym_type->kind!=FUNCTION){
                printf("Error type 11 at Line %d: \"%s\" is not a function.\n", func_id->first_line, func_id->token_text);
                return NULL;
            }
            // Now check args
            struct Node* args = func_id->next_sib->next_sib;
            if(IS(args, "Args")){
                /*
                    Args : Exp COMMA Args | Exp;
                */
                FieldList *func_def_param = func_def->sym_type->func.param;
                struct Node *p = args;
                //Assert(p->first_child->next_sib!=NULL);
                int arg_cnt = 0;
                do{
                    arg_cnt++;
                    if(arg_cnt!=1) {
                        p = p->first_child->next_sib->next_sib;  
                        if(func_def_param->tail!=NULL) func_def_param = func_def_param->tail;
                        else {
                            Assert(arg_cnt!=func_def->sym_type->func.param_cnt);
                            break;
                        }
                    }
                    Type *arg_type_tmp = Exp(p->first_child);
                    Type *func_def_type_tmp = func_def_param->type;
                    if(func_def_type_tmp!=NULL && compare_type(arg_type_tmp, func_def_type_tmp)!=1){
                        printf("Error type 9 at Line %d: Function \"%s\" is not applicable for given arguments.\n", p->first_line, func_def->sym_name);
                        return NULL;
                    } // in case of func_def.param_cnt == 0
                }while(p->first_child->next_sib!=NULL);
                if(arg_cnt != func_def->sym_type->func.param_cnt){
                    //printf("func_def: %d, given args: %d\n", func_def->sym_type->func.param_cnt, arg_cnt);
                    printf("Error type 9 at Line %d: Wrong parameter number for function \"%s\".\n", p->first_line, func_def->sym_name);
                    return NULL;
                }
            }
            else{
                Assert(IS(args, "RP"));
            }
            return func_def->sym_type->func.return_type;
        }
                
    }
    else if(IS(exp->first_child, "INT")){
        Type *int_type = (Type *)malloc(sizeof(Type));
        int_type->kind = BASIC;
        int_type->basic = TYPE_INT;
        return int_type;
    }
    else if(IS(exp->first_child, "FLOAT")){
        Type *float_type = (Type *)malloc(sizeof(Type));
        float_type->kind = BASIC;
        float_type->basic = TYPE_FLOAT;
        return float_type;
    }
    else if(IS(exp->first_child, "LP")||IS(exp->first_child, "MINUS")||IS(exp->first_child, "NOT")){
        Assert(IS(exp->first_child->next_sib, "Exp"));
        return Exp(exp->first_child->next_sib);
    }
    else{
        Assert(IS(exp->first_child, "Exp"));
        if(IS(exp->first_child->next_sib, "LB")){// array
            //Exp : Exp LB Exp RB  # array 
            //printf("checking on %s\n", exp->first_child->first_child->token_text);
            struct Node *array = exp->first_child;
            struct Node *index = array->next_sib->next_sib;
            Type *array_type = Exp(array);
            Type *index_type = Exp(index);
            if(array_type == NULL) return NULL; // handling Errors
            else{ //TODO : how to get a more specified info?
                if(array_type->kind!=ARRAY){
                    printf("Error type 10 at Line %d: Variable is not an array.\n", exp->first_line);
                    return NULL;
                }
                else if(index_type->kind!=BASIC || index_type->basic!=TYPE_INT){
                    printf("Error type 12 at Line %d: Index is not an integer.\n", exp->first_line);
                    return NULL;
                }
                else{
                    return array_type->array.elem;
                }
            } 
        }
        else if(IS(exp->first_child->next_sib, "DOT")){ //struct
            //Exp : Exp DOT ID # struct member
            Type *struct_type = Exp(exp->first_child);
            if(struct_type == NULL) return NULL;
            else{
                if(struct_type->kind!=STRUCTURE){
                    printf("Error type 13 at Line %d: Illegal use of \".\".\n", exp->first_line);
                    return NULL;
                }
                else{// check field
                    struct Node *struct_field = exp->first_child->next_sib->next_sib;
                    FieldList *p = struct_type->structure.member;
                    while(p!=NULL){
                        if(strcmp(p->name, struct_field->token_text)==0){
                            return p->type;
                        }
                        p = p->tail;
                    } 
                    printf("Error type 14 at Line %d: Non-existent field \"%s\".\n", exp->first_line, struct_field->token_text);
                    return NULL;
                }
            }
        }
        else{
            Type *left_type = Exp(exp->first_child);
            // if(left_type==NULL){
            //     return NULL;
            // }
            Assert(IS(exp->first_child->next_sib->next_sib, "Exp"));//other binary operator
            /*
                Exp : Exp ASSIGNOP Exp | AND(OR) | RELOP | PLUS(MINUS) | STAR(DIV) 
            */
            if(IS(exp->first_child->next_sib, "ASSIGNOP")){
                //Possible : ID / Exp LB Exp RB / Exp DOT ID
                Type *right_type = Exp(exp->first_child->next_sib->next_sib);
                if((exp->first_child->first_child->next_sib==NULL && IS(exp->first_child->first_child, "ID")) ||\
                    (IS(exp->first_child->first_child, "Exp")&& \
                        (IS(exp->first_child->first_child->next_sib, "LB")|| \
                            IS(exp->first_child->first_child->next_sib, "DOT")))){
                                //printf("checking on (%s, %s)\n", exp->first_child->first_child->token_text, exp->first_child->next_sib->next_sib->first_child->token_text);
                    //struct Node *b = exp->first_child->first_child;
                    //struct Node *A = exp->first_child->next_sib->next_sib->first_child->first_child;
                    //printf("left,right: (%d, %d)\n", left_type->kind, 1);
                    int check = compare_type(left_type, right_type);
                    if(check==1) return left_type;
                    else{
                        if(check==0)
                            printf("Error type 5 at Line %d: Type mismatched for assignment.\n", exp->first_line);
                        return NULL;
                    }
                }
                else{
                    printf("Error type 6 at Line %d: The left-hand side of an assignment must be a variable.\n", exp->first_line);
                    return NULL;
                }
            }
            else if(IS(exp->first_child->next_sib, "PLUS")||IS(exp->first_child->next_sib, "MINUS")||\
                    IS(exp->first_child->next_sib, "STAR")||IS(exp->first_child->next_sib, "DIV")){
                Type *right_type = Exp(exp->first_child->next_sib->next_sib);
                int check = compare_type(left_type, right_type);
                if(check==1) return left_type;
                else{
                    if(check == 0)
                        printf("Error type 7 at Line %d: Type mismatched for operands.\n", exp->first_line);
                    return NULL;
                }
            }
            else{
                Assert(IS(exp->first_child->next_sib, "AND")||IS(exp->first_child->next_sib, "OR")||\
                    IS(exp->first_child->next_sib, "RELOP"));
                Type *right_type = Exp(exp->first_child->next_sib->next_sib);
                int check = compare_type(left_type, right_type);
                if(check==1){
                    Type *tmp = (Type *)malloc(sizeof(Type));
                    tmp->kind = BASIC;
                    tmp->basic = TYPE_INT;
                    return tmp; 
                } 
                else{
                    if(check==0)
                        printf("Error type 7 at Line %d: Type mismatched for operands.\n", exp->first_line);
                    return NULL;
                }
            }
        }
    }
}

void Def(struct Node *def){
    /*
        Def : Specifier DecList SEMI
        DecList : Dec | Dec COMMA DecList 
        Dec : VarDec | VarDec ASSIGNOP EXP
    */
    Assert(IS(def, "Def"));
    Type * def_type = Specifier(def->first_child);
    struct Node* declist = def->first_child->next_sib;
    // fill the table
    int first = 1;
    do{
        if(first) first--;
        else declist = declist->first_child->next_sib->next_sib;
        struct Node* dec = declist->first_child;
        TableEntry *vardec_tmp = VarDec(dec->first_child, def_type);
        //printf("varName: %s\n", vardec_tmp->sym_name);
        TableEntry *find = search(vardec_tmp->sym_name);
        if((find!=NULL && find->sym_depth == depth) || (find!=NULL && find->is_struct_def==1)){
            printf("Error type 3 at Line %d: Redefined variable \"%s\".\n", dec->first_line, vardec_tmp->sym_name);
            free(vardec_tmp);
        }     
        else 
            insert(vardec_tmp);
        if(dec->first_child->next_sib!=NULL){
            // Check for Exp
            struct Node* exp = dec->first_child->next_sib->next_sib;
            Type *exp_type = Exp(exp);
            if(compare_type(exp_type, vardec_tmp->sym_type)!=1)
                printf("Error type 5 at Line %d: Type mismatched for assignment.\n", dec->first_line);
        } 
    }while(declist->first_child->next_sib!=NULL);
}

void Stmt(struct Node *stmt, Type *func_type){
    /*
        Stmt : Exp SEMI | CompSt | RETURN Exp SEMI 
             | IF LP Exp RP Stmt | IF LP Exp RP Stmt ELSE Stmt
             | WHILE LP Exp RP Stmt
    */
    Assert(IS(stmt, "Stmt"));
    if(IS(stmt->first_child, "Exp")){
        Exp(stmt->first_child);
    }
    else if(IS(stmt->first_child, "CompSt")){
        CompSt(stmt->first_child, func_type);
    }
    else if(IS(stmt->first_child, "RETURN")){
        Type *ret_type = Exp(stmt->first_child->next_sib); // Error 8 return type
        if(compare_type(func_type, ret_type)!=1){
            //printf("func_type: %d, ret_type: %d", func_type->kind, ret_type->kind);
            printf("Error type 8 at Line %d: Type mismatched for return.\n", stmt->first_line);
        }

    }
    else if(IS(stmt->first_child, "IF")){
        Type* exp_type = Exp(stmt->first_child->next_sib->next_sib);
        if(exp_type != NULL){
            if(exp_type->kind!=BASIC && exp_type != NULL){
                printf("Error type 7 at Line %d: Type mismatched for operands.\n", stmt->first_line);
            }
        }
        Stmt(stmt->first_child->next_sib->next_sib->next_sib->next_sib, func_type);
        struct Node* else_token = stmt->first_child->next_sib->next_sib->next_sib->next_sib->next_sib;
        if(else_token != NULL)
            Stmt(else_token->next_sib, func_type);
    }
    else{
        Assert(IS(stmt->first_child, "WHILE"));
        Type* exp_type = Exp(stmt->first_child->next_sib->next_sib);
        if(exp_type != NULL){
            if(exp_type->kind!=BASIC && exp_type != NULL){
                printf("Error type 7 at Line %d: Type mismatched for operands.\n", stmt->first_line);
            }
        }
        Stmt(stmt->first_child->next_sib->next_sib->next_sib->next_sib, func_type);
    }
}

void CompSt(struct Node *com, Type* func_type){
    /*
        CompSt : LC DefList StmtList RC
    */
    depth++;
    struct Node *deflist = com->first_child->next_sib;
    struct Node *stmtlist = deflist->next_sib;
    while(deflist->first_child!=NULL){
        /*
            DefList : Def DefList | e
        */
        Def(deflist->first_child);
        deflist = deflist->first_child->next_sib;
    }
    while(stmtlist->first_child!=NULL){
        /*
            StmtList : Stmt StmtList | e
        */
        Stmt(stmtlist->first_child, func_type);
        stmtlist = stmtlist->first_child->next_sib;
    }
   delete(depth);
   depth--;
}


int check_func_equiv(TableEntry *f1, TableEntry *f2){
    int found_err = 0;
    //check for return type
    if(compare_type(f2->sym_type->func.return_type, f1->sym_type->func.return_type)==1){
        //check for param cnt
        if(f2->sym_type->func.param_cnt == f1->sym_type->func.param_cnt){
            //check for param type
            FieldList *f = f2->sym_type->func.param;
            FieldList *t_f = f1->sym_type->func.param;
            while(t_f!=NULL&&f!=NULL){
                if(compare_type(t_f->type, f->type)!=1){
                    found_err = 1;
                    break;
                }
                t_f = t_f->tail;
                f = f->tail;
                Assert(!(f==NULL && t_f!=NULL) && !(f!=NULL && t_f==NULL));
            }
        }
        else
            found_err = 1;
    }
    else found_err = 1;
    return found_err;
}

void ExtDef(struct Node* node){
    /*
        ExtDef : Specifier ExtDecList SEMI
               | Specifier SEMI
               | Specifier FunDec CompSt
               | Specifier FunDec SEMI
    */
    struct Node* spec = node->first_child;
    Type *sym_type = Specifier(spec);
    TableEntry *t = (TableEntry *) malloc(sizeof(TableEntry));
    t->next_hash = NULL;
    t->next_stack = NULL;
    t->sym_name = NULL;
    t->sym_type = sym_type;
    t->is_struct_def = 0;
    struct Node *p = spec->next_sib; // p == 'ExtDecList'/ 'SEMI' / 'FunDec'
    if(IS(p, "SEMI")) ;
    else if (IS(p, "FunDec")){
        int is_func_dec = 0;
        if(IS(p->next_sib, "SEMI")) is_func_dec = 1;
        //FuncDec : ID LP VarList RP | ID LP RP
        TableEntry *funcdec = FunDec(p, sym_type);
        TableEntry *t_funcdec = search(funcdec->sym_name);
        if(t_funcdec!=NULL) {            
            if(t_funcdec->sym_type->func.is_defined){
                //t_func is def
                if(!is_func_dec){
                    printf("Error type 4 at Line %d: Redefined function \"%s\".\n", p->first_child->first_line, funcdec->sym_name);
                }
                else{// this is a dec
                    int found_err = check_func_equiv(t_funcdec, funcdec);
                    if(found_err){
                        printf("Error type 19 at Line %d: Inconsistent declaration of function \"%s\" (different return type).\n", p->first_child->first_line, funcdec->sym_name);
                    }
                }
            }
            else{
                //t_func is dec
                //check for types
                int found_err = check_func_equiv(t_funcdec, funcdec);
                
                if(found_err){
                    printf("Error type 19 at Line %d: Inconsistent declaration of function \"%s\" (different return type).\n", p->first_child->first_line, funcdec->sym_name);
                }
                //Optional: 
                if(!is_func_dec)
                    t_funcdec->sym_type->func.is_defined = 1;
                
            }
        }
        else insert(funcdec);
        struct Node *compst = p->next_sib;
        if(IS(compst, "CompSt")){ //def
            CompSt(compst, funcdec->sym_type->func.return_type); 
            funcdec->sym_type->func.is_defined = 1;
        }
        else{//dec
            Assert(IS(compst, "SEMI"));  
            delete(depth+1);
        }
    }
    else{
        Assert(IS(p, "ExtDecList"));
        //ExtDecList : VarDec | VarDec COMMA ExtDecList
        while(p->first_child->next_sib!=NULL){// ExtDecList
            TableEntry *vardec = VarDec(p->first_child, sym_type);
            //printf("Got symbol: %s\n", vardec->sym_name);
            TableEntry *find = search(vardec->sym_name);
            if(find!=NULL && find->sym_depth == depth) {
                printf("Error type 3 at Line %d: Redefined variable \"%s\".\n", p->first_child->first_line, vardec->sym_name);
                free(vardec);
            }
            else insert(vardec);
            p = p->first_child->next_sib->next_sib;
        }
        TableEntry *fin = VarDec(p->first_child, sym_type);
        //printf("Got symbol: %s\n", fin->sym_name);
        TableEntry *find = search(fin->sym_name);
        if(find!=NULL && find->sym_depth == depth) {
            printf("Error type 3 at Line %d: Redefined variable \"%s\".\n", p->first_child->first_line, fin->sym_name);
            free(fin);
        }
        else insert(fin);
    }
}

void parsing(struct Node* cur, int t_depth){
    if(cur == NULL) return;
    if(IS(cur, "ExtDef"))
        ExtDef(cur);
    if(cur->first_child!=NULL)
        parsing(cur->first_child, t_depth+1);
    if(cur->next_sib!=NULL)
        parsing(cur->next_sib, t_depth);
}

void check_undefined_func(){
    Assert(depth==0);
    TableEntry *p = Table.stack[depth];
    while(p!=NULL){
        if(p->sym_type->kind==FUNCTION && p->sym_type->func.is_defined==0){
            printf("Error type 18 at Line %d: Undefined function \"%s\".\n", p->sym_type->func.first_line, p->sym_name);
        }
        p = p->next_stack;
    }
}

void show_table(){
    printf("================================================\n");
    for(int i =0; i< TABLESIZE; i++){
        if(Table.hashTable[i]!=NULL){
            TableEntry *p = Table.hashTable[i];
            printf("[%d]\t", i);
            while(p) {
                printf("[%s][%d](at depth: %d)", p->sym_name, p->sym_type->kind, p->sym_depth);
                if(p->sym_type->kind == STRUCTURE){
                    FieldList *t = p->sym_type->structure.member;
                    printf("including ");
                    while(t!=NULL){
                        printf("%s(%d)", t->name, t->type->kind);
                        t = t->tail;
                    }
                }
                else if(p->sym_type->kind == FUNCTION){
                    printf(" return type: %d, para_cnt: %d", p->sym_type->func.return_type->basic, p->sym_type->func.param_cnt);
                    FieldList *t = p->sym_type->func.param;
                    while(t!=NULL){
                        printf("%s(%d)", t->name, t->type->kind);
                        t = t->tail;
                    }
                }
                else if(p->sym_type->kind == ARRAY){
                    printf("(array)");
                }
                printf(" ---->");
                p = p->next_hash;
            }
            printf("NULL\n");
        }
    }
    printf("================================================\n");
}