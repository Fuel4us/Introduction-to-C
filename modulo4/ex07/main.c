#include <stdio.h>
#include "count_odd.h"

int main(){

	short vec[10] = {1,2,3,4,5,6,7,8,9,11};
	int n = 10;
	int res = count_odd(vec,n);

	printf("%d\n",res);

	return 0;
}
