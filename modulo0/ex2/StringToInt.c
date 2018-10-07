#include<stdio.h>
int string_to_int(char *str)
	{
	int i=0;
	int num = 0;
	do{
		num =num * 10 + (str[i]-'0');
		i++;
	}while(str[i]!=0);
	return num;
	}
	 
