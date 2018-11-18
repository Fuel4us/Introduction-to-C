#include <stdio.h>
#include "encrypt.h"

char string[20] = "Ahahahah boa piada";
char *ptr1 = string;

int main() {

  int res;
  res = encrypt();
  printf("String encrypted: %s\n", string);
  printf("Number of changes: %d\n", res);

  return 0;
}
