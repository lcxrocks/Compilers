%{
    #include "syntax.tab.h"
    #include <stdio.h>
    int yycolumn = 1;
    #define YY_USER_ACTION \
        yylloc.first_line   = yylloc.last_line = yylineno; \
        yylloc.first_column = yycolumn; \
        yylloc.last_column  = yycolumn + yyleng - 1; \
        yycolumn += yyleng;
    
    struct Node {
        char *token_name;
        struct Node *first_child;
        struct Node *next_sib;
        int first_line;
        int is_token;
        union{
            unsigned int int_value;
            float float_value;
            char *token_text;
        };
    };
    int token_err = 0;
    int nested_comment = 0;
    int cmt_start_line = 0;
    void getToken(char *token_name, char* token_text);
%}

%option yylineno
%x CMT
/* Tokens definitions: */
INT   ([1-9]+[0-9]*)|(0)
OCT   0[0-7]+
HEX   0[xX][a-fA-F0-9]+
FLOAT (([0-9]+\.[0-9]+))|((([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))[eE][+-]?[0-9]+)
ID    [_a-zA-Z][_a-zA-Z0-9]*
RELOP >|<|>=|<=|==|!=
TYPE  int|float
ERROCT 0[0-9]*[8-9]+[0-9]*
ERRHEX 0[xX][a-zA-Z0-9]*[g-zG-Z]+[a-zA-Z0-9]*
ERRFLOAT1 (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))[eE]
ERRID [0-9][_a-zA-Z0-9]*
%%

[\n]        {yycolumn = 1;}
[ \t\r]     {/* ignored */}
{INT}       {getToken("INT", yytext);   return INT;}
{OCT}       {getToken("OCT", yytext);   return INT;}
{HEX}       {getToken("HEX", yytext);   return INT;}
{FLOAT}     {getToken("FLOAT", yytext); return FLOAT;}
";"         {getToken("SEMI", yytext);  return SEMI;}
","         {getToken("COMMA", yytext); return COMMA;}
"="         {getToken("ASSIGNOP", yytext); return ASSIGNOP;}
{RELOP}     {getToken("RELOP", yytext); return RELOP;}
"+"         {getToken("PLUS", yytext);  return PLUS;}
"-"         {getToken("MINUS", yytext); return MINUS;}
"*"         {getToken("STAR", yytext);  return STAR;}
"/"         {getToken("DIV", yytext);   return DIV;}
"&&"        {getToken("AND", yytext);   return AND;}
"||"        {getToken("OR", yytext);    return OR;}
"."         {getToken("DOT", yytext);   return DOT;}
"!"         {getToken("NOT", yytext);   return NOT;}
{TYPE}      {getToken("TYPE", yytext);  return TYPE;}
"("         {getToken("LP", yytext);    return LP;}
")"         {getToken("RP", yytext);    return RP;}
"["         {getToken("LB", yytext);    return LB;}
"]"         {getToken("RB", yytext);    return RB;}
"{"         {getToken("LC", yytext);    return LC;}
"}"         {getToken("RC", yytext);    return RC;}
"struct"    {getToken("STRUCT", yytext); return STRUCT;}
"return"    {getToken("RETURN", yytext); return RETURN;}
"if"        {getToken("IF", yytext);    return IF;}
"else"      {getToken("ELSE", yytext);  return ELSE;}
"while"     {getToken("WHILE", yytext); return WHILE;}
{ID}        {getToken("ID", yytext);    return ID;}
"//".*      {}
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] {}
"/*"        {BEGIN(CMT); cmt_start_line = yylineno;}
<CMT>"*/"   {BEGIN(INITIAL);}
<CMT>\n     {}
<CMT>.      {}
<CMT><<EOF>> {token_err++; fprintf(stderr, "\033[31mError type B at Line: %d: \033[0mOpen Multi-line comment (Start at line[%d]).\n", yylineno, cmt_start_line); BEGIN(INITIAL);}
[*]+[/]     {token_err++; fprintf(stderr, "\033[31mError type B at Line: %d: \033[0mMulti-line comment without start.\n", yylineno);}
{ERROCT}    {token_err++; fprintf(stderr, "\033[31mError type A at Line: %d: \033[0mWrong OCT format.\n", yylineno); return INT;}
{ERRHEX}    {token_err++; fprintf(stderr, "\033[31mError type A at Line: %d: \033[0mWrong HEX format.\n", yylineno); return INT;}
{ERRFLOAT1} {token_err++; fprintf(stderr, "\033[31mError type A at Line: %d: \033[0mWrong FLOAT format, missing the exponentiation.\n", yylineno); return FLOAT;}
{ERRID}     {token_err++; fprintf(stderr, "\033[31mError type A at Line: %d: \033[0mWrong ID format, numbers shouldn't be the prefix.\n", yylineno); return ID;}
.           {token_err++; fprintf(stderr, "\033[31mError type A at Line: %d: \033[0mMysterious characters \'%s\'.\n", yylineno, yytext);}
%%
int yywrap(){
    return 1;
}

/* short for get token value (send to bison stack)*/
void getToken(char *token_name, char* token_text){
    yylval.node = (struct Node *) malloc(sizeof(struct Node));
    yylval.node->token_name = (char *)malloc(strlen(token_name)+1);
    yylval.node->token_text = (char *)malloc(strlen(token_text)+1);
    strcpy(yylval.node->token_name, token_name);
    strcpy(yylval.node->token_text, token_text);
    yylval.node->first_child = NULL;
    yylval.node->next_sib = NULL;
    yylval.node->first_line = 0;
    yylval.node->is_token = 1;
    if(strcmp(token_name, "OCT")==0){
        sscanf(token_text, "%o", &yylval.node->int_value);
        strcpy(yylval.node->token_name, "INT");
    }
    else if(strcmp(token_name, "HEX")==0){
        sscanf(token_text, "%x", &yylval.node->int_value);
        strcpy(yylval.node->token_name, "INT");
    }
    else if(strcmp(token_name, "INT")==0){
        sscanf(token_text, "%u", &yylval.node->int_value);
    }
    else if(strcmp(token_name, "FLOAT")==0){
        sscanf(token_text, "%f", &yylval.node->float_value);
    }
}
