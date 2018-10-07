#include <stdio.h>

int main()
{
    int i =0;
    short shorts[12] = {10,12,15000,10000,15,71,35,3513,3613,0,12700,32700} ;
    int integers[6]  ;
    compress_shorts(shorts,12,integers);
    for(i;i<6;i++){
        printf("%d\n",integers[i]);
    }
    return 0;
}
