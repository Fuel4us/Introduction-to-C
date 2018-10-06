#include <stdio.h>
#include "palindrome.h"

int main(void) {

  char str[20] = "Never odd or even";
  int ret = palindrome(str);

  if (ret == 0) {
    printf("%s is not a palindrome\n", str);
  } else {
    printf("%s is a palindrome\n", str);
  }

}
