#include <stdio.h>

/* Super simple. it switches the value of the vec[i] to the other vector */
void swap(int *vec, int *vec2) {
  int temp = *vec;
  *vec = *vec2;
  *vec2 = temp;
}
