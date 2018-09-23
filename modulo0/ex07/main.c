#include <stdio.h>


char* integer_base(char *vec){
	
	int binario  = 1, octal = 1,  hexa =1 ;
	int i = 0;
	while(vec[i] != 0){

		if(vec[i] > '1') binario = 0;
		if(vec[i] > '7') octal = 0;
		if(vec[i] > '9') return "Hexadecimal";


		i++;
		}
		if (binario) return "Binario";
		if(octal ) return "Octal";
		return "Decimal";


	}

int main(void){


  //Exercicio 7
 fgets(num1,10,num1);

 printf("%s",integer_base(num1));



}
