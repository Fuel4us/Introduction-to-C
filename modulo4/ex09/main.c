#include <stdio.h>
#include "calc.h"

int main(){

	int a, b1, c;

  printf("Number 1: \n");
  scanf("%d", &a);
  printf("Number 2: \n");
  scanf("%d", &b1);
  printf("Number 3: \n");
  scanf("%d", &c);
  
	int *b = &b1;

	printf("%d\n", calc(a,b,c));

	return 0;
}
