int sum_multiples_x(char *vec, int y){
int res=0;
int i=0;
unsigned int x=y;
unsigned int n=255;
x=x>>8;
x=x&n;
while(*(vec+i) && *(vec+i)!='\0')
{
  if(*(vec+i)%x ==0)
   res=res+*(vec+i);
   i++;
  }
return res; 
} 

