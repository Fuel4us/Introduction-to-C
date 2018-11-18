#include <stdio.h>
#include "asm.h"

int A = 5;
int B = 10;

int main(void) {

  char res = isMultiple();
  if (res == 1)  printf("%d is multiple of %d\n", A, B);
  if (res == 0) printf("%d isn't multiple of %d\n", A, B);
  
  return 0;
}
