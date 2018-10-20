#include <stdio.h>
#include "asm.h"

short numToShort = 5;
char byte1 = 1;
char byte2 = 2;

int main(void) {

  numToShort = swapBytes();
  printf("After swapping bytes = %hd\n", numToShort);

  short res = concatBytes();
  printf("Concatenated bytes = %hd\n", res);

  return 0;
}
