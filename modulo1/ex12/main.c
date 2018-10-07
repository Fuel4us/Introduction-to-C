#include <stdio.h>
#include <string.h>
#include "fillVec.h"

int main(void) {

  char c = 'b';
  char str[10] ="ababababab";
  int vec[strlen(str)];

  int length = fillVec(str, c, vec); // saves the amount of length needed

  /* Easy function to print a vector */
  for (int i=0; i<length; i++) {
    printf("%d\n", vec[i]);
  }


}
