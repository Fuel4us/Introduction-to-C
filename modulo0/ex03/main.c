#include <stdio.h>

// Calculate average of 2 numbers using the functions of exercise 2

int main() {

  // function made by my colleague
  int string_to_int(char *str)
    {
    int i=0;
    int num = 0;
    do{
        num =num * 10 + str[i];
        i++;
    }while(str[i]!=0);
    return num;
    }

    // It returns a int so when solving ex3 we just do

  char* number1;
  char* number2;

  printf("Insert the numbers to calculate their average\n");
  scanf("%c %c\n", &number1, &number2);

  int n1 = string_to_int(number1);
  int n2 = string_to_int(number2);

  double media = ((n1+n2)/2);
  printf("Média é %f\n", media);

  return 0;
}
