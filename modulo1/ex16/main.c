#include <stdio.h>
#include <math.h>

int main(void) {

  int a = 1000000;
  int b = 1000000;
  long long int c = (long long)a * (long long)b;

  printf("%d*%d=%lld\n", a,b,c);

}
