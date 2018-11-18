#include <stdio.h>
#include "asm.h"


int main(void) {

  char * a = "esta diferente";
  char * b = "esta igual";


  

  printf("1 if equal/0 if different: %d\n", test_equal(a,b));

  return 0;
}
