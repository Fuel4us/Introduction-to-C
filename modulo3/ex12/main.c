#include <stdio.h>
#include "zero.h"

short int *ptrvec, num=7;

int main() {
  short int res=0;
  short int vec[7] = {1002,7,1000,7,1001,7,1005};
  ptrvec = vec;

  res = vec_zero();

  printf("Numero de elementos alterados = %d\n", res);
  return 0;
}
