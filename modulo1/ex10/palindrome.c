#include <stdio.h>
#include <string.h> // to use strlen()
#include <ctype.h> // to use toupper()

/*
This method will remove spaces from the string so I can compare it on palindrome()
*/
char* deblank(char *input) {
    int i,j;
    char *output=input; // create output and paste it my previous phrase

    for (i = 0, j = 0; i<strlen(input); i++,j++) {
        if (input[i]!=' ') // if it doesnt find a space
            output[j]=input[i]; // will write it
        else
            j--; // will just go for the next char
    }
    output[j]=0;
    return output;
}

/* Main method that will dictate if char[] is palindrome */
int palindrome(char *str) {

  deblank(str); // removes spaces

  int x = 0; // starting point
  int k = strlen(str); // length minus 1 space

  while (k > x) {
    if (toupper(str[x++]) != toupper(str[k--])) { // if it doesnt match up returns 0 which means its not a palindrome
        return 0;
    }
  }
  return 1;
}
