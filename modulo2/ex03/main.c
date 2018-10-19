#include <stdio.h>
#include "asm.h"

int op1=0, op2=0, op3=0, op4=0, res=0;

int main(void) {

  printf("Valor op1");
  scanf("%d", &op1);

  printf("Valor op2");
  scanf("%d", &op2);

  printf("Valor op3");
  scanf("%d", &op3);

  printf("Valor op4");
  scanf("%d", &op4);

  operation();

  printf("Operation = %d\n", res);

  return 0;

}
