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

  int g = 1;
  char f = 'c';

  char *bla = &g;

  printf("%p\n", bla);

    return 0;
}
