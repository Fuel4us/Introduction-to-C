#include <stdio.h>
#include "asm.h"

int op1 = 2147843646;
int op2 = 1;

int main(void) {

  long long int res = sum2ints();

  printf("%ld+%ld=%lld\n", op1,op2,res);

  return 0;

}
