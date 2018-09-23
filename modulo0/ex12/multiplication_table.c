#include<stdio.h>
#include"multiplication_table_n.c"

void multiplication_table(){
int i;
for(i=1;i<11;i++){
multiplication_table_n(i);
}
}
