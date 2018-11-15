#include <stdio.h>
#include "asm.h"



int main() {

        int vec[6] = {6,3,2,1,2,5};

	int *ptrvec=vec;

        int num=  6; 
        printf("%d", vec_count_bits_zero(ptrvec,num)); 
    return 0; 
} 
