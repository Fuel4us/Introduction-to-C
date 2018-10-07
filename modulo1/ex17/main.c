#include <stdio.h>

int main()
{
    char str1[]="esta a funcionar";
    char str2[]="funciona";
    
    if(where_exists(str1,str2)!=0)
    printf("tem");
    else
    printf("não tem");

    return 0;
}
