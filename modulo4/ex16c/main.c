#include <stdio.h>
#include "asm.h"



int main() 
{ 
    int vec[6] = {6,3,2,1,2,5};

    int* ptr = vec;
    int num =6;
    changes_vec(ptr,num);

    return 0; 
} 
