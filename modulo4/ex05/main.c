#include <stdio.h>
#include "asm.h"

int main() {

  int v1;
  int v2;

  printf("Number 1:\n");
  scanf("%d", &v1);

  printf("Number 2:\n");
  scanf("%d", &v2);

  int *aux = &(v1);

  printf("Decremented value -> %d and Square root -> %d\n", v1, dec_square(aux,v2));

  return 0;
}
