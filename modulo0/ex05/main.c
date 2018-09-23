#include <stdio.h>

  int count_words(char *str) {

    int i = 0;
    int words = 1;

    // while vector doesnt end
    while(str[i] != 0){
      // if it finds a space adds 1 to words
      if(str[i] == ' ') {
      words = words +1;
      }
      i=i+1;
    }
    return words;
  }

  int main(){

    char words[20];
    printf("Input words to count\n");
    fgets(words,20, stdin);
    printf("%d\n", count_words(words));

    return 0;
}
