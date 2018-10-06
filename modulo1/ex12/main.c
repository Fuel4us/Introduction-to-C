#include <stdio.h>
#include <string.h>
#include "fillVec.h"

int main(void) {

  char c = 'b';
  char str[10] ="ababababab";
  int vec[strlen(str)];

  int length= fillVec(str, c, vec);

  for (int i=0; i<length; i++) {
    printf("%d\n", vec[i]);
  }


}
