#include <stdio.h>
#include <string.h>

int fillVec(char *str, char c, int *vec) {

    int x = 0;

    for (int i=0; i<strlen(str); i++) {
      if (str[i] == c) {
        vec[x] = i;
        x++;
      }
    }

    return x;
}
