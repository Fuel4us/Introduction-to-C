#include <stdio.h>
#include "sort.h"

int num=6;
int *ptrsrc;
int *ptrdest;

int main() {

	int res;
	int src[6] = {1,4,3,2,5,2};
	int dest[6];
	int i;
	ptrsrc = src;
	ptrdest = dest;

	res = sort_without_reps();

    printf("original: ");

	for(i = 0; i < num; i++){

		printf("%d; ", src[i]);

	}

	printf("final: ");

	for(i = 0; i < res; i++){

		printf("%d; ", dest[i]);

 	}

	printf("Items placed in result array = %d\n", res);

	return 0;
}
