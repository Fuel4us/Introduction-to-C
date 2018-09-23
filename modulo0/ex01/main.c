#include <stdio.h>

// Exercise to display the size of various data types

int main() {

  printf("Char -> %d\n", sizeof(char)*8);
  printf("Int -> %d\n", sizeof(int)*8);
  printf("Unsigned int -> %d\n", sizeof(unsigned int)*8);
  printf("Long -> %d\n", sizeof(long)*8);
  printf("Short -> %d\n", sizeof(short)*8);
  printf("Long long -> %d\n", sizeof(long long)*8);
  printf("Float -> %d\n", sizeof(float)*8);
  printf("Double -> %d\n", sizeof(double)*8);

  return 0;
}
