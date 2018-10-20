#include <stdio.h>
#include "asm.h"

long op1 = 100;
long op2 = 150;

int main(void) {

  long long int res = sum2ints();

  printf("%ld+%ld=%lld\n", op1,op2,res);

  return 0;

}
