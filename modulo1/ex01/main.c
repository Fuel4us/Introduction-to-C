#include <stdio.h>

int main(void) {

  int x = 5;
  int* xPtr = &x;
  short y = *xPtr + 3;
  int vec[] = {10, 11, 12, 13};

  printf("The value of x is %d and y is %hu\n", x, y);
  printf("The adress of x is %0.4x in hexadecimal and y is %0.4x in hexadecimal\n", &x, &xPtr);
  printf("The value pointed by xPtr is %d\n", *xPtr);
  printf("The address of vec %x\n", &vec);
  printf("The values of vec[0] is %d, vec[1] is %d, vec[2] is %d, vec[3] is %d\n", vec[0], vec[1], vec[2], vec[3]);
  printf("The addresses are: vec[0] is %x, vec[1] is %x, vec[2] is %x, vec[3] is %x\n", &vec[0], &vec[1], &vec[2], &vec[3]);

  return 0;
}
