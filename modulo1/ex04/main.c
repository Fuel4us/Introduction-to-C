#include <stdio.h>

void low_to_upper(char *vec) {

  int i = 0;
  while (vec[i] != '\0') {
      if (vec[i] >= 'a' && vec[i] <= 'z') {
        vec[i] = vec[i] - 32;
      }
      i++;
  }
}

int main(void) {
  char vec[10] = "arqcp";
  low_to_upper(vec);
  printf("%s\n", vec);
}
