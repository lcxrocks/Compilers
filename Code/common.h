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

struct Type_{
    enum{ BASIC, ARRAY, STRUCTURE, FUNCTION } kind;
    union{
        int basic;
        struct {Type *elem; int size; } array;
        struct {FieldList *member; int is_defined; }structure;
        struct {int param_cnt; FieldList *param; Type *return_type; int is_defined; int first_line;} func;
    };
};

struct FieldList_{
    char* name;
    Type* type;
    FieldList* tail;
};

struct TableEntry_{
    int sym_depth;
    char *sym_name;
    Type *sym_type;
    int is_struct_def;
    TableEntry *next_hash; // hash collision
    TableEntry *next_stack; // same depth
};

struct Table_{
    TableEntry *hashTable[TABLESIZE];
    TableEntry *stack[MAXDEPTH];
};

#define printk printf

// assert.h
#define NDEBUG

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

#endif