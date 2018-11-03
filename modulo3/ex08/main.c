#include <stdio.h>
#include "even.h"
#include "vec_sum_even.h"

int even;
int num = 10;
int vec[10] = {1,2,3,4,5,6,7,8,9,10};
int *ptrvec = vec;

int main() {

  int res;
  int res2;

  printf("Number?\n");
  scanf("%d", &even);

  res = test_even();
  if(res == 1) {
    printf("%d it's even\n", even);
  } else {
    printf("%d it's not even\n", even);
  }

  res2 = vec_sum_even();
  printf("Even sum: %d\n", res2);

  return 0;
}
