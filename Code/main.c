#include<stdio.h>
#include"syntax.tab.h"

int yylex();
int yyrestart();
int yyparse();
extern struct Node* root;
extern int yylineno;
extern int prod_err;
extern int handled_err;
extern int token_err;
void print_tree(struct Node* cur, int depth);
int yyparse_wrap();
//#define YYABORT // yyparse() immediately returns after syntax error 

#ifdef YYDEBUG
    extern int yydebug;
#endif

int main(int argc, char** argv){
    if(argc <= 1){
        yyparse();
        return 1;
    }
    FILE* f = fopen(argv[1], "r");
    if(!f){
        perror(argv[1]);
        return 1;
    }
    // #ifdef YYDEBUG
    //     yydebug = 1;
    // #endif
    yyrestart(f);
    yyparse_wrap();
    if(handled_err<prod_err) 
        fprintf(stderr, "\033[31mError type B at Line: %d: \033[0mMysterious syntax error.\n", yylineno);
    if((prod_err+token_err)==0)
        print_tree(root, 0);
    return 0;
}