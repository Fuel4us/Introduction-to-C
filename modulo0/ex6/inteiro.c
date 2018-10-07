#include<stdio.h>
int inteiro(char *str)
	{
	int i=0;
	int num = 0;
	do{
		num =num * 10 + (str[i] - '0');
		i++;
	}while(str[i]!='.');
	return num;
	}
