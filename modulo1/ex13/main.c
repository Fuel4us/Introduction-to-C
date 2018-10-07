#include <stdio.h>

int main()
{
    int i;
    float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75} ;
    int freq[20];
    frequencies(grades,11,freq);
    i=0;
    for(i;i<=20;i++){
        printf("%d\n" , freq[i]);
    }
    return 0;
}
