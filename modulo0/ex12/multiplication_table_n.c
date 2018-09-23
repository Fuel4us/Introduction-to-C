#include<stdio.h>
#include"line.c"

void multiplication_table_n(int n){
int i;
for(i=1;i<11;i++){
	line(n,i);
}
}
