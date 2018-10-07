#include <stdio.h>
#include "media.h"
int main()
{
double v[]={1,2};
double r=0;
r=media(v[0], v[1]);
printf("media =%f\n", r);
r=average_vetor(v, 2);
printf("media =%f\n", r);
return 0;
}
