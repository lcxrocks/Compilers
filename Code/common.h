#ifndef _COMMON_H
#define _COMMON_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "syntax.tab.h"

#define IS(a,b) strcmp(a->token_name, b)==0

#define TABLESIZE 0x3fff
#define MAXDEPTH 2000
#define TYPE_INT 1
#define TYPE_FLOAT 2
typedef struct Type_ Type;
typedef struct FieldList_ FieldList;
typedef struct TableEntry_ TableEntry;
typedef struct InterCode_ InterCode;
typedef struct Operand_ Operand;
typedef struct InterCodes_ InterCodes;
typedef struct ArgList_ ArgList;
typedef struct StructTableEntry_ StructTableEntry;
typedef struct RecordEntry_ RecordEntry;
typedef struct FuncRecord_ FuncRecord;

// Lab1
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
        struct{
            InterCodes *comp_head;
            InterCodes *comp_tail;
        };
    };
};


// Lab2
struct Type_{
    enum{ BASIC, ARRAY, STRUCTURE, FUNCTION } kind;
    union{
        int basic;
        struct {Type *elem; int size; int len;} array;
        struct {FieldList *member; int is_defined; }structure;
        struct {int param_cnt; FieldList *param; Type *return_type; int is_defined; int first_line;} func;
    };
};

struct FieldList_{
    char* name;
    int field_size;
    Type* type;
    FieldList* tail;
};

struct TableEntry_{
    int sym_depth;
    char *sym_name;
    Type *sym_type;
    int is_struct_def;
    Operand *ir_var_no;
    TableEntry *next_hash; // hash collision
    TableEntry *next_stack; // same depth
};

struct StructTableEntry_{
    char *sym_name;
    Type *sym_type;
    int offset;
    StructTableEntry *next_hash;
};

struct Table_{
    TableEntry *hashTable[TABLESIZE];
    TableEntry *stack[MAXDEPTH];
};

struct SymbolTable_{
    StructTableEntry *hashTable[TABLESIZE];
};


// Lab3
struct Operand_ {
    enum { OP_VARIABLE, OP_TEMP, OP_CONSTANT, OP_ADDRESS, OP_FUNCTION, OP_LABEL, OP_RELOP} op_kind;
    union {
      int var_no;
      int tmp_no;
      int const_value;
      char* func_name;
      int label_no;
      char* relop;
    };
    enum{ ISVALUE=199, ISADDRESS } addr_pos_kind; // Used when op_kind = OP_ADDRESS. 
    int is_param; // Used when op is param
};

struct InterCode_ {
    enum { 
      IR_LABEL, 
      IR_FUNCTION, 
      IR_ASSIGN, 
      IR_ADD, IR_SUB, IR_MUL, IR_DIV, 
      IR_GET_ADDR,
      IR_GET_ADDR_VAL,
      IR_TO_ADDR,
      IR_GOTO,
      IR_IF,
      IR_RETURN,
      IR_DEC,
      IR_ARG,
      IR_CALL_FUNC,
      IR_PARAM,
      IR_READ, IR_WRITE
    } ir_kind;
    union {
      struct {Operand *op1, *op2; } lr; 
      struct {Operand *op; } unop; // unary
      struct {Operand *result, *op1, *op2; } binop;
      struct {Operand *op1, *relop, *op2, *op3; } cond;
    };
};

struct InterCodes_ {
    InterCode *code;
    InterCodes* prev;
    InterCodes* next;
};

struct ArgList_ {
    Operand *arg;
    ArgList* next;
};

#define printk printf

// assert.h
//#define NDEBUG

#ifdef NDEBUG
  #define Assert(cond) 1
#else
  #define Assert(cond) \
    do { \
      if (!(cond)) { \
        printk("Assertion fail at %s:%d\n", __FILE__, __LINE__); \
        exit(0); \
      } \
    } while (0)
#endif

#ifdef NDEBUG
  #define log(...) ;
#else
  #define log(...) printf(__VA_ARGS__)
#endif

//Lab1
void print_tree(struct Node* cur, int depth);
int yyparse_wrap();

// Lab2
unsigned int hash_pjw(char *name);
void CompSt(struct Node *com, Type *func_type);
void show_table();
void parsing(struct Node* cur, int t_depth);
void check_undefined_func();

// Lab3
TableEntry *search(char *sym_name);
int get_len(Type *var_type);
void add_read_write_function();
void translate_CompSt(struct Node* CompSt);
void translate_Exp(struct Node *Exp, Operand *place);
void translate_FuncDec(struct Node *FuncDec);
void translate_Cond(struct Node* Exp, Operand *label_true, Operand *label_false);
void print_ir(FILE *fp, InterCodes *start);
Operand *get_addr_value(Operand *place);

void insert_struct_symbol_table(StructTableEntry *sym);
StructTableEntry* search_struct_symbol_table(char* sym_name);
void show_struct_symbol_table();
void fill_in_offset(Type *struct_def);

// Lab4
void print_mips(FILE *fp, InterCodes *start);
#endif