#include <stdio.h>
#include "struct.h"
#include "structv2.h"

int main() {

  union union_u1 struct1;

  struct struct_s1 struct2;

  printf("Size 1: %d Size 2: %d\n", sizeof(struct1), sizeof(struct2));

  return 0;
}
