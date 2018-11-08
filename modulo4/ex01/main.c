#include <stdio.h>
#include "cube.h"

int main() {

  int x;

  printf("Number to do 3rd power\n");
  scanf("%d", x);

  printf("Final result = %d\n", cube(x));

  return 0;
}
