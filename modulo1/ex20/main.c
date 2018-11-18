#include <stdio.h>


int main()
{
    char str1[]="another";
    char str2[]="a";

    if(find_word(str1,str2,&str1[0])!=0)
    printf("tem");
    else
    printf("não tem");

    return 0;
}
