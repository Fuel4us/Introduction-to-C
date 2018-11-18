#include <stdio.h>
#include "asm.h"

int A = 10;
int B = 20;
int C = 50;
int D = 2;

int main(void) {

  int res = operation();
  printf("((%d*%d)+%d)/%d=%d\n", A, B, C, D, res);
  return 0;
}
