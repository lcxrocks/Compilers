#include "common.h"
struct SymbolTable_ struct_symbol_table = { 0 };
//lab3 
void insert_struct_symbol_table(StructTableEntry *sym){
    int index = hash_pjw(sym->sym_name);
    sym->next_hash = struct_symbol_table.hashTable[index];
    struct_symbol_table.hashTable[index] = sym;
}

StructTableEntry* search_struct_symbol_table(char* sym_name){
    int index = hash_pjw(sym_name);
    //log("In search for %s, index: %d\n", sym_name, index);
    StructTableEntry *first_entry = struct_symbol_table.hashTable[index];
    StructTableEntry *p = first_entry;
    int found = 0;
    if(p==NULL) {
        return p;
    }
    else{
        while(p!=NULL){
            if(strcmp(p->sym_name, sym_name) == 0){
                found = 1;
                break;
            }   
            p = p->next_hash;
        }
        Assert((p==NULL&&found==0)||(found!=0&&p!=NULL));
        return p;
    }
}

void show_struct_symbol_table(){
    printf("================================================\n");
    for(int i =0; i< TABLESIZE; i++){
        if(struct_symbol_table.hashTable[i]!=NULL){
            StructTableEntry *p = struct_symbol_table.hashTable[i];
            printf("[%d]\t", i);
            while(p) {
                printf("[%s][offset: %d]", p->sym_name, p->offset);
                if(p->sym_type->kind == STRUCTURE){
                    printf("(array)");
                    // FieldList *t = p->sym_type->structure.member;
                    // printf("including ");
                    // while(t!=NULL){
                    //     printf("%s(%d)", t->name, t->type->kind);
                    //     t = t->tail;
                    // }
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

int get_field_len(Type *struct_def, char* id_name){
    Assert(struct_def->kind == STRUCTURE);
    FieldList *p = struct_def->structure.member;
    int len = 0;
    while(p){
        if(p->type->kind == BASIC || p->type->kind == ARRAY){
            if(strcmp(p->name, id_name)==0){
                break;
            }
            else{
                len += p->field_size;
            }
        }
        else{
            Assert(p->type->kind == STRUCTURE);
            if(strcmp(p->name, id_name)==0){
                break;
            }
            else{
                int tmp = get_field_len(p->type, id_name);
                len += tmp;
            } 
        }
        p = p->tail;
    }
    return len;
}

void fill_in_offset(Type *struct_def){
    Assert(struct_def->kind == STRUCTURE);
    FieldList *p = struct_def->structure.member;
    int offset = 0;
    while(p){
        if(p->type->kind == BASIC || p->type->kind == ARRAY){
            StructTableEntry *tmp = search_struct_symbol_table(p->name);
            tmp->offset = offset;
            offset += p->field_size;
        }
        else{
            Assert(p->type->kind == STRUCTURE);
            StructTableEntry *tmp = search_struct_symbol_table(p->name);
            tmp->offset = offset;
            offset += p->field_size;
            fill_in_offset(p->type);
        }
        p = p->tail;
    }
}
// lab3