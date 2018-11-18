#include <stdio.h>
#include "asm.h"

int num1=10;
int num2=5;

int main(void) {

  sum();
	printf("Sum is %d\n", res);

	subtraction();
	printf("subtraction is %d\n", res);

	multiplication();
	printf("Multiplication is %d\n", res);

  division();
  printf("Division is %d\n", res);

  modulos();
  printf("Modulus is %d\n", res);

  powers2();
  printf("2nd Power of the sum is %d\n", res);

  powers3();
  printf("3rd Power of the sum is %d\n", res);


	return 0;
}
