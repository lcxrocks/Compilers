#include<stdio.h>
#include "common.h"

int yylex();
int yyrestart();
int yyparse();
extern struct Node* root;
extern int yylineno;
extern int prod_err;
extern int handled_err;
extern int token_err;
extern InterCodes *head;

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
    FILE *fp = NULL;
    
    #ifdef NDEBUG 
    if((fp = fopen(argv[2], "w+"))==NULL){
        perror(argv[2]);
        return 1;
    }
    #endif

    #ifndef NDEBUG
        fp = fopen("out.s", "a+");
    #endif
    // #ifdef YYDEBUG
    //     yydebug = 1;
    // #endif
    yyrestart(f);
    yyparse_wrap();
    if(handled_err<prod_err) 
        fprintf(stderr, "Error type B at Line %d: Mysterious syntax error.\n", yylineno);
    if((prod_err+token_err)==0)
        add_read_write_function();
        parsing(root, 0);
    check_undefined_func();
    
    // show_table();
    // show_struct_symbol_table();
    print_mips(fp, head);
    fclose(fp);
    return 0;
}