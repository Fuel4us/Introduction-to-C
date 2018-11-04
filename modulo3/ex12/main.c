#include <stdio.h>
#include "zero.h"

short int *ptrvec, num=7;

int main() {
  short int res=0;
  short int vec[7] = {132,109,104,14,100,22,99};
  ptrvec = vec;

  res = vec_zero();

  printf("Elements changed = %d\n", res);
  return 0;
}
