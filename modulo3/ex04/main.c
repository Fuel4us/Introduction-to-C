#include <stdio.h>
#include "vec_sum.h"
#include "vec_avg.h"

  int vec_size = 10;
  int vec[10] = {1,2,3,4,5,6,7,8,9,5};
  int *ptrvec = vec;
  int sum = 0;

int main() {

  sum = vec_sum();
  printf ("%d\n", sum);

  int avg = vec_avg();
  printf("%d\n", avg);

  return 0;
}
