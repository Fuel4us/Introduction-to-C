#include <stdio.h>
#include "struct.h"

int main () {

  int resLeft = rotate_left(10,1);
  int resRight = rotate_right(10,1);

  printf("10 rotated left: %x\n", resLeft);
  printf("10 rotated right: %x\n", resRight);

  return 0;
}
