#include <stdio.h>
#include "smallest.h"

int main() {

  int a;
  int b;
  int c;

  printf("Number 1\n");
  scanf("%d", &a);
  printf("Number 2\n");
  scanf("%d", &b);
  printf("Number 3\n");
  scanf("%d", &c);

  printf("Smallest number is %d\n", smallest(a,b,c));

  return 0;
}
