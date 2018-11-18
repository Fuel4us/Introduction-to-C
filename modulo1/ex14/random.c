#include <stdio.h>
#include <stdlib.h> // to use rand

/* Adds a random number to the position of the vector */
void populate(int *vec, int size) {

  for (int i = 0; i < size; i++) {
    vec[i] = rand() % 21; // % -> means any number [0,21[
    printf("%d\n", vec[i]); // print it so I can know what generated i guess
  }

}
