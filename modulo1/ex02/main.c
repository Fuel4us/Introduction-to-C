#include <stdio.h>

void fill_vec(int *vec, int n) {
  int i = 0;
  for (i=0; i<n; i++){
    scanf("%d", &vec[i]);
  }
}

int main(void) {
  int i;
  int n = 10;
  int vec[n];
  fill_vec(vec, 10);

  printf("---x---\n");

  printf("Vetor preenchido:\n");
  for(i=0; i<n; i++) {
    printf("%d\n", *(vec+i));
  }
}
