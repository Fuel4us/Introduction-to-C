#include <stdio.h>
#include <string.h>

/* Method that will check for char c in str and will put it in vec*/
int fillVec(char *str, char c, int *vec) {

    int x = 0; // starts at 0 for vec[x]

    for (int i=0; i<strlen(str); i++) {
      if (str[i] == c) { // if its equal
        vec[x] = i; // will add to vec[0] the position it found it
        x++; // will increment the vector
      }
    }

    return x; // return the number of incrementals to save how many were needed
}
