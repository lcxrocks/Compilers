%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <stdarg.h>
    int yylex();
    int yyerror();
    struct Node* root;
    struct YYLTYPE;
    int prod_err = 0;
    int handled_err = 0;
    struct Node* insert_node(char *token_name, struct YYLTYPE node_loc, int num_nodes, ...);
    void print_error(char *msg);
    int yyparse_wrap();
%}

/* declared types */
/* (Use yyval.node->foo in `lexical.l` to put val onto Bison stack) */
%union {
    struct Node* node;
}

%locations

/* declared terminals */
%token <node> INT
%token <node> FLOAT
%token <node> DOUBLE
%token <node> ID
%token <node> SEMI COMMA ASSIGNOP PLUS MINUS STAR DIV AND OR DOT NOT LP RP LB RB LC RC  
%token <node> RELOP
%token <node> TYPE 
%token <node> STRUCT RETURN IF ELSE WHILE

/* declared non-terminals */
%type <node> Program ExtDefList ExtDef ExtDecList
%type <node> Specifier StructSpecifier OptTag Tag
%type <node> VarDec FunDec VarList ParamDec
%type <node> CompSt StmtList Stmt
%type <node> DefList Def DecList Dec
%type <node> Exp Args

/* declared precedence */
%right ASSIGNOP
%left OR
%left AND
%left RELOP
%left PLUS MINUS
%left STAR DIV
%right NOT UMINUS
%left LB RB LP RP DOT

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%
Program     : ExtDefList                    {$$ = insert_node("Program", @$, 1, $1); root = $$;}
            ;

ExtDefList  : ExtDef ExtDefList             {$$ = insert_node("ExtDefList", @$, 2, $1, $2);}
            |                               {$$ = insert_node("ExtDefList", @$, 0); }
            ;

ExtDef      : Specifier ExtDecList SEMI     {$$ = insert_node("ExtDef", @$, 3, $1, $2, $3);}
            | Specifier SEMI                {$$ = insert_node("ExtDef", @$, 2, $1, $2);}
            | Specifier FunDec CompSt       {$$ = insert_node("ExtDef", @$, 3, $1, $2, $3);}
            | Specifier FunDec SEMI         {$$ = insert_node("ExtDef", @$, 3, $1, $2, $3);}
            | error SEMI                    {print_error("Wrong ExtDef1");}
            | error RC                      {print_error("Wrong ExtDef2");}
            ;

ExtDecList  : VarDec                        {$$ = insert_node("ExtDecList", @$, 1, $1);}
            | VarDec COMMA ExtDecList       {$$ = insert_node("ExtDecList", @$, 3, $1, $2, $3);}
            | error RB                      {print_error("Wrong ExtDecList1");}
            | error ID                      {print_error("Wrong ExtDecList2");}
            ;

Specifier   : TYPE                          {$$ = insert_node("Specifier", @$, 1, $1);}
            | StructSpecifier               {$$ = insert_node("Specifier", @$, 1, $1);}
            ;

StructSpecifier: STRUCT OptTag LC DefList RC {$$ = insert_node("StructSpecifier", @$, 5, $1, $2, $3, $4, $5);}
            | STRUCT Tag                     {$$ = insert_node("StructSpecifier", @$, 2, $1, $2);}
            | STRUCT error RC                {print_error("Wrong StructSpecifier");}
            ;

OptTag      : ID                            {$$ = insert_node("OptTag", @$, 1, $1);}
            |                               {$$ = insert_node("OptTag", @$, 0);}
            ;

Tag         : ID                            {$$ = insert_node("Tag", @$, 1, $1);}
            ;      

VarDec      : ID                            {$$ = insert_node("VarDec", @$, 1, $1);}
            | VarDec LB INT RB              {$$ = insert_node("VarDec", @$, 4, $1, $2, $3, $4);}
            ;

FunDec      : ID LP VarList RP              {$$ = insert_node("FunDec", @$, 4, $1, $2, $3, $4);}
            | ID LP RP                      {$$ = insert_node("FunDec", @$, 3, $1, $2, $3);}
            | error RP                      {print_error("Wrong FunDec");}
            ;

VarList     : ParamDec COMMA VarList        {$$ = insert_node("VarList", @$, 3, $1, $2, $3);}
            | ParamDec                      {$$ = insert_node("VarList", @$, 1, $1);}
            | error RB                      {print_error("Wrong VarList1");}
            | error ID                      {print_error("Wrong VarList2");}
            ;

ParamDec    : Specifier VarDec              {$$ = insert_node("ParamDec", @$, 2, $1, $2);}
            ;

CompSt      : LC DefList StmtList RC        {$$ = insert_node("CompSt", @$, 4, $1, $2, $3, $4);}
            | error RC                      {print_error("Wrong CompSt");}
            ;

StmtList    : Stmt StmtList                 {$$ = insert_node("StmtList", @$, 2, $1, $2);}
            |                               {$$ = insert_node("StmtList", @$, 0); }
            ;

Stmt        : Exp SEMI                      {$$ = insert_node("Stmt", @$, 2, $1, $2);}
            | CompSt                        {$$ = insert_node("Stmt", @$, 1, $1);}
            | RETURN Exp SEMI               {$$ = insert_node("Stmt", @$, 3, $1, $2, $3);}
            | IF LP Exp RP Stmt %prec LOWER_THAN_ELSE {$$ = insert_node("Stmt", @$,5,$1,$2,$3,$4,$5);}
            | IF LP Exp RP Stmt ELSE Stmt   {$$ = insert_node("Stmt", @$, 7,$1 ,$2 ,$3, $4, $5, $6, $7);}
            | WHILE LP Exp RP Stmt          {$$ = insert_node("Stmt", @$, 5,$1 ,$2 ,$3, $4, $5);}
            | error SEMI                    {print_error("Wrong Stmt");}
            ;

DefList     : Def DefList                   {$$ = insert_node("DefList", @$, 2, $1, $2);}
            |                               {$$ = insert_node("DefList", @$, 0); }
            ;

Def         : Specifier DecList SEMI        {$$ = insert_node("Def", @$, 3, $1, $2, $3);}
            | Specifier error SEMI          {print_error("Wrong Def");}
            ;

DecList     : Dec                           {$$ = insert_node("DecList", @$, 1, $1);}
            | Dec COMMA DecList             {$$ = insert_node("DecList", @$, 3, $1, $2, $3);}
            ;

Dec         : VarDec                        {$$ = insert_node("Dec", @$, 1, $1);}
            | VarDec ASSIGNOP Exp           {$$ = insert_node("Dec", @$, 3, $1, $2, $3);}
            ;

Exp         : Exp ASSIGNOP Exp              {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp AND Exp                   {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp OR Exp                    {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp RELOP Exp                 {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp PLUS Exp                  {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp MINUS Exp                 {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp STAR Exp                  {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp DIV Exp                   {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | LP Exp RP                     {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | MINUS Exp %prec UMINUS        {$$ = insert_node("Exp", @$, 2, $1, $2);}
            | NOT Exp                       {$$ = insert_node("Exp", @$, 2, $1, $2);}
            | ID LP Args RP                 {$$ = insert_node("Exp", @$, 4, $1, $2, $3, $4);}
            | ID LP RP                      {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | Exp LB Exp RB                 {$$ = insert_node("Exp", @$, 4, $1, $2, $3, $4);}
            | Exp DOT ID                    {$$ = insert_node("Exp", @$, 3, $1, $2, $3);}
            | ID                            {$$ = insert_node("Exp", @$, 1, $1);}
            | INT                           {$$ = insert_node("Exp", @$, 1, $1);}
            | FLOAT                         {$$ = insert_node("Exp", @$, 1, $1);}
            | LP error RP                   {print_error("Wrong Exp1");}
            | Exp LB error RB               {print_error("Wrong Exp2");}
            | ID LP error RP                {print_error("Wrong Exp3");}
            ;

Args        : Exp COMMA Args                {$$ = insert_node("Args", @$, 3, $1, $2, $3);}
            | Exp                           {$$ = insert_node("Args", @$, 1, $1);}
            ;

%%

#include "lex.yy.c"

struct Node* insert_node(char *node_name, struct YYLTYPE node_loc, int num_nodes, ...){
    va_list ap;
    va_start(ap, num_nodes);
    //printf("insert_node[%s], num_nodes: %d\n", node_name, num_nodes);
    struct Node *cur = (struct Node *)malloc(sizeof(struct Node));
    cur->token_name = (char *)malloc(strlen(node_name)+1);
    strcpy(cur->token_name, node_name);
    struct YYLTYPE cur_loc = node_loc;
    cur->first_line = node_loc.first_line;
    if(num_nodes==0){
        cur->first_child = NULL;
        cur->is_token = 2; // produces NULL
        va_end(ap);
        return cur;
    }
    struct Node *tmp = va_arg(ap, struct Node*);
    cur->first_child = tmp;
    cur->is_token = 0;
    for(int i=1; i<num_nodes; i++){
        tmp->next_sib = va_arg(ap, struct Node*);
        if(tmp->next_sib!=NULL)
            tmp = tmp->next_sib;
    }
    tmp->next_sib = NULL;
    va_end(ap);
    return cur;
}

void print_tree(struct Node* cur, int depth){
    if(cur == NULL) return;
    if(cur->is_token!=2){
        for(int i=0; i<depth; i++) printf("  ");
        if(cur->is_token==0)
            printf("%s (%d)\n", cur->token_name, cur->first_line);
        else if(cur->is_token==1){ // Token, need to print extra info.
            printf("%s", cur->token_name);
            if(!strcmp(cur->token_name, "ID"))
                printf(": %s\n", cur->token_text);
            else if(!strcmp(cur->token_name, "TYPE"))
                printf(": %s\n", cur->token_text);
            else if(!strcmp(cur->token_name, "INT"))
                printf(": %u\n", cur->int_value);
            else if(!strcmp(cur->token_name, "FLOAT"))
                printf(": %f\n", cur->float_value);
            else 
                printf("\n");
        }
    }
    if(cur->first_child!=NULL)
        print_tree(cur->first_child, depth+1);
    if(cur->next_sib!=NULL)
        print_tree(cur->next_sib, depth);
}

int yyerror(char *msg){
    prod_err++;
}

void print_error(char *msg){
    handled_err++;
    if(handled_err>prod_err) prod_err = handled_err; // in case of consecutive errors
    int lineno = yylineno;
    // int length = strlen(msg);
    // if(strcmp(msg+length-3, "';'")==0) lineno--;
    fprintf(stderr, "Error type B at Line %d: %s.\n", lineno, msg);
}

int yyparse_wrap() {
    #if YYDEBUG
    yydebug = 1;        
    #endif
    return yyparse();   
}