#include <stdio.h>
#include "asm.h"


int main() {

  char string[20] = "Cjajajaj dqa rkafa";
  ptr1= string;
  int res;
  res = decrypt();
  printf("String decrypted: %s\n", string);
  printf("Number of changes: %d\n", res);
  return 0;
}

