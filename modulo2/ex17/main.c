#include <stdio.h>
#include "asm.h"

int A = 54;
int B = 51;

int main(void) {
  int minutes = function();
  printf("It will take %d minutes to go from %dºC to %dºC\n", minutes, A, B);

  return 0;
}
