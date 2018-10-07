#include <stdio.h>

int main(void) {

  // https://stackoverflow.com/questions/8060170/printing-hexadecimal-characters-in-c

  char c = -3;
  short sc = (short)c;
  int x = -17;
  unsigned int ux = x;

  printf("Decimal -> %d\n", c);
  printf("Hexadecimal -> %#x\n", c);

  printf("Decimal -> %d\n", sc);
  printf("Hexadecimal -> %#x\n", sc);

  printf("Decimal -> %d\n", x);
  printf("Hexadecimal -> %#x\n", x);

  printf("Decimal -> %d\n", ux);
  printf("Hexadecimal -> %#x\n", ux);
}
