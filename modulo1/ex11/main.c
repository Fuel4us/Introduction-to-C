#include <stdio.h>

int main()
{
    char vec[] = "The number must be saved";
    capitalizer(vec);
    int i = 0;
    do{
        printf("%c",vec[i]);
        i++;
       
    }while(vec[i]!='\0');

	return 0;
}

