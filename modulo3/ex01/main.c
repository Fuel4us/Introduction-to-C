#include <stdio.h>
#include "asm.h"

int main() {

  char str1[25] = "";
  int res;

  printf("String 1 till 25 chars\n");
  scanf("%s", str1);

  ptr1 = str1;

  res = zero_count();

  printf("number of 0's: %d\n", res);

  return 0;
}
