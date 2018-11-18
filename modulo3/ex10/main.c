#include <stdio.h>
#include "concatenate.h"

char c1[40] = "Teste 1";
char c2[40] = " Teste 2";
char c3[80];

char *ptr1 = c1;
char *ptr2 = c2;
char *ptr3 = c3;

int main() {
  str_cat();

  printf("%s\n", c3);
  return 0;
}
