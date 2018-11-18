#include <stdio.h>

 void print_even(int *vec, int n)
{
    int i, b=0;
    for(i=0; i<n ; i=i+1){
        if(*(vec+i)%2 == 0) {
            b=b+1;
    printf("number %d is: %d\n", b , *(vec+i));
        }
}
}
