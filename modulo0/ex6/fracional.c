#include<stdio.h>
	
int fracional(char *str)
	{
	int i=0;
	int num = 0;
	do{
		i++;
	}while(str[i]!='.');
	i++;
	do{
		num =num * 10 + (str[i] - '0');
		i++;
	}while(str[i]!=0);

	return num;
	}
