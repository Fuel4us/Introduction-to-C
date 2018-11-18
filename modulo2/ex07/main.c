#include <stdio.h>
#include "asm.h"

short numToShort = 5;
char byte1 = 1;
char byte2 = 2;
short short1 = 5;
short short2 = 6;

int main(void) {

  numToShort = swapBytes();
  printf("After swapping bytes = %hd\n", numToShort);

  short res = concatBytes();
  printf("Concatenated bytes = %hd\n", res);

  short result = crossSumBytes();
  printf("Crossed added shorts = %hd\n", result);

  return 0;
}
