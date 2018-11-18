#include <stdio.h>
#include "count.h"



int main() 
{ 
    int a = -1;
 	printf("o numero era:%d", a); 


    int* b = &a;
    changes(b);
    printf("o numero é:%d", a); 

    return 0; 
} 


