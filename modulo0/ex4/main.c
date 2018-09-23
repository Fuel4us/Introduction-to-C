#include<stdio.h>
#include"FillVector.c"
int main()
{
int vec[30];
fill_vector(vec);
int i;
int media=0;
for(i=0; i<30; i++)
	{
        media = media + vec[i];
	}
printf("a media é: %d",(media/30));
}


