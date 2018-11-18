#include <stdio.h>
#include "count_seq.h"

int *ptrvec;
int num = 6;

int main() {

	int res=0;
	int vec[6] = {6,3,2,1,2,5};

	ptrvec=vec;

	res=count_seq();

	printf("Number of times the condition happens = %d\n", res);

	return 0;
}
