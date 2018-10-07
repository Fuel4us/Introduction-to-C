#include "is_little_endian.h"
#include <stdio.h>
int main()
{
    int flag;

    flag=is_little_endian();

    if(flag==1)
	printf("is little endian\n");
    else
	printf("is big endian\n");

    return 0;
}
