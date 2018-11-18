#include <stdio.h>

/*
Printa a string em hexadecimal de 2 em 2.
*/

void show_bytes(unsigned char *start, int len){
      int i;
      for (i = 0; i < len; i++) // percorre a string
      printf(" %.2x", start[i]); // printa em hexadecimal de 2 em 2.
      printf("\n"); // dá uma linha
}

int main(void) {

  short p = 0xAABB;
  short mx = -p;
  show_bytes((unsigned char*) &p, sizeof(short)); show_bytes((unsigned char*) &mx, sizeof(short));

  short v = -12345;
  unsigned short uv = (unsigned short) v;
  int x = (int)v;
  unsigned int ux = (unsigned int)uv;
  char str[]= "I learn a lot in ARQCP";

  show_bytes((unsigned char*) &str, sizeof(str));
}
