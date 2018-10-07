#include <stdio.h>
#include <limits.h>
#include "add_ovf.h"

int main()
{
    int result =0;
    int a=50;
    int b=INT_MAX -5;
    int flag =0;
    flag = add_ovf(&result,a, b);
    if(flag!=0){
    printf("overflow");
	}
    else
	{
    printf("%d", result);
	}

    return 0;
}

