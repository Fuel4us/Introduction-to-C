#include <stdio.h>
#include "string.h"

/* Function that checks if the condition happens*/
int condition(int *vec, int size, int start) {

  int ret = 0;

  if(size - start >= 3) {
    for (int i = start; i<start+2; i++) {
      if (vec[i] < vec[i+1] && vec[i+1] < vec[i+2]) {
        ret = 1;
      } else {
        ret = 0;
      }
    }
  }
  return ret;
}
