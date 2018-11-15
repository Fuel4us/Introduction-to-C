#include <stdio.h>
#include "count.h"



int main() 
{ 
    int x = 19;
    int * ptr = &x;
 printf("o numero era:%d", *ptr); 

    int pos = 3;
    printf("o numero é:%d e tinha/nao tinha o bit ativo:%d", *ptr, activate_bit(ptr,pos)); 
    return 0; 
} 

