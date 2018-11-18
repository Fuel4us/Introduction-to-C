#include <stdio.h>
#include "asm.h"

char vecGrades[] =  {2,0,1,15,16,20,4,2,5,1,3,5,1,15,3};
char *ptrgrades = vecGrades;
int num = 15;
int vecFreq[] =  {0,0,0,0,0,0, 0,0,0,0,0,  0,0,0,0,0, 0,0,0,0,0};
int *ptrfreq = vecFreq;

int main(void) {
    int i;
    frequencies();
    printf("Vec notas: {2,0,1}\n\n");
    printf("Vec freq esperado: {1,0,0,0,0,0,1,0,1,0,1,0,3,0,1,0,2,0,1,0,0} \nVec freq obtido:   {");
    for (i = 0; i < 20; i++){
		 printf("%d,", *(ptrfreq+i));
	}
	printf("%d}\n",*(ptrfreq+20));
	
    return 0;
}
