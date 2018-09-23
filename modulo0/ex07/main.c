#include <stdio.h>


char* integer_base(char *vec){

	int binario  = 1, octal = 1,  hexa = 1, i = 0;

	while(vec[i] != 0){

		if(vec[i] > '1') binario = 0;
		if(vec[i] > '7') octal = 0;
		if(vec[i] > '9') return "Hexadecimal";

    i++;
	 }
    if (binario) return "\nBinario";
		if (octal) return "\nOctal";
		return "\nDecimal";
	}

int main(){

  char num[20];

  printf("Número\n");
  fgets(num,20,stdin);

  printf("%s\n",integer_base(num));

  return 0;
}
