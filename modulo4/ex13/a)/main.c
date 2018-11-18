#include <stdio.h>
#include "struct.h"

int main(){
	int a = 0;
	int left = 4;
	int right = 3;

	int b = activate_bits(a,left,right);
	printf("\nOriginal: %x\nNovo: %x\n",a,b);
	return 0;
}
