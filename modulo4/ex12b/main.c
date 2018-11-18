#include <stdio.h>
#include "asm.h"
int main() 
{ 
    int x = 1;
    int * ptr = &x;
 printf("o numero era:%d", *ptr); 

    int pos = 0;
    printf("o numero é:%d e tinha/nao tinha o bit ativo:%d", *ptr, activate_bit(ptr,pos)); 
    return 0; 
} 

