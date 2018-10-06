#include <stdio.h>
#include "struct.h"

/* Counts the number of time condition() happens */
int increment(int *vec, int size) {

  int sets = 0;
  int number = 0;

  for (int i = 0; i<size; i++) {
    number = condition(vec, size, i);
    if (number == 1) {
      sets++;
    }
  }
  printf("Sets = %d\n", sets);
  return sets;
}
