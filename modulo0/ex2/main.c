#include<stdio.h>
#include"StringToInt.c"
int main(){
    int num;
    char vet[6] = "13452";
    num = string_to_int(vet);
    printf("o numero é:%d ",num);

return 0;
}
