#include <stdio.h>
#include "struct.h"

int main(void) {

  int vec[100];
  populate(vec, 100);
  int sets = increment(vec, 100);

  printf("It happens %d times.\n", sets);
}
