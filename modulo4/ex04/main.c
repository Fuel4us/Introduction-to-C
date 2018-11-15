#include <stdio.h>
#include "asm.h"

int main(){

	int num1 = 3;
	int num2 = 10;
        int small =0;
	int *smaller = &small;
	int res = sub_greater(num1, num2, smaller);

	printf("num1 - num2 =%d and smaller is %d\n",res, small);

	return 0;
}

