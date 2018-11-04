#include <stdio.h>
#include "exists.h"
#include "vec_diff.h"

short int vec1[5] = {1,2,3,4,5};
short int vecAux[5];
short int x = 3;
int num = 5;
short int *prtvec = vec1, ptrvecAux=vecAux;

int main() {

  int res = exists();
  if (res == 1) {
    printf("It has duplicates\n");
  } else {
    printf("It doesnt have duplicates\n");
  }

  int res2 = vec_diff();

  for(int i=0;i<res2; i++) {
    printf("%hd\n", *(ptrvecAux+i));
  }

  return 0;
}
