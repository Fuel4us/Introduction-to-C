#include <stdio.h>
#include "asm.h"



int main() 
{
    char v[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,0}; 
    char *c = v;
    int x= 0x400;
    printf("%d", sum_multiples_x(c,x)); 

    
    return 0; 
} 


