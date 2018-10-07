#include <stdio.h>
#include <math.h>

int main(void) {

  int a = 1000000;
  int b = 1000000;
  long long c = a * b;

  printf("C gets us %lld\n", c);

  // It's expected to give us C = 1000000000000. But it gives us -727379968
  //
}
