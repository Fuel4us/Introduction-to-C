#include <stdio.h>
#include "asm.h"

int code, currentSalary;

int main(void) {
  printf("Choose the code\n");
  scanf("%d", &code);

  printf("Choose the salary\n");
  scanf("%d", &currentSalary);

  int raise = salaryRaise();
  printf("New salary is %d\n", raise);

  return 0;
}
