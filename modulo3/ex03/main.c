#include <stdio.h>
#include "asm.h"

int main() {

  char str1[25] = "";
	char str2[25] = "";

  printf("String 1 till 25 chars\n");
  scanf("%s", str1);

  ptr1 = str1;
  ptr2 = str2;

  str_copy_p2();

  printf("String changed: %s\n", ptr2);

  return 0;
}

