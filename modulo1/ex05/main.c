#include "power_ref.h"
#include <stdio.h>

int main()
{
    int x=2, y=3;
    power_ref(&x,y);
    printf("x ^ y = %d\n", x);

    return 0;
}

