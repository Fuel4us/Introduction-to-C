#include<stdio.h>
#include"fracional.c"
#include"inteiro.c"
 int main()
{
    int maior,menor;
    char vet[6] = "134.2";
    menor = fracional(vet);
    maior = inteiro(vet);
    printf("parte inteira:%d \nparte fracionaria:%d ",maior,menor);

return 0;
}
