#include <stdio.h>
#include "struct.h"

int main(void) {

  // creation of the vectors for test purposes
  int vec[5] = {1,2,3,4,5};
  int vec2[5] = {6,7,8,9,10};

  // it will swap each value one at a time
  for (int i = 0; i<5; i++) {
    swap(&vec[i], &vec2[i]);
  }

  // print vec 1
  for(int i = 0; i<5; i++) {
    printf("Vec 1 -> %d\n", vec[i]);
  }

  printf("----x----\n");

  // print vec2
  for(int i = 0; i<5; i++) {
    printf("Vec 2 -> %d\n", vec2[i]);
  }

}
