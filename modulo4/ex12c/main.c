#include <stdio.h>
#include "asm.h"
int main() 
{ 
    int x = 1;
    int * ptr = &x;
 printf("o numero era:%d", *ptr); 

    int pos = 0;
    activate_2bits(ptr,pos);
    printf("o numero é:%d ", *ptr); 
    return 0; 
} 

