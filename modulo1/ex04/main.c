#include <stdio.h>

void low_to_upper(char *vec) {

  int i = 0;
  while (vec[i] != '\0') { // aqui é enquanto não chegar ao fim da string!
      if (vec[i] >= 'a' && vec[i] <= 'z') {
        vec[i] = vec[i] - (32); // tabela ascii basicamente apanhando a letra se tirares 32 vai para a respectiva letra mas em maiuscula. PODIAS usar 'a'-'A'
      }
      i++;
  }
}

int main(void) {
  char vec[10] = "arqcp";
  low_to_upper(vec);
  printf("%s\n", vec);
}
