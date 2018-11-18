#include <stdio.h>
#include "asm.h"

short numToShort = 5;

int main(void) {

  numToShort = swapBytes();
  printf("After swapping bytes = %hd\n", numToShort);

  return 0;
}
