# include <stdio.h>
# include "asm.h"
int main () {
long long int res =0;
printf (" Value A?: " );
scanf ("%d" ,&A);

printf (" Value B?: " );
scanf ("%hd" ,&B);

printf (" Value C?: " );
scanf ("%d" ,&C);

printf (" Value D?: " );
scanf ("%d" ,&D);

/* res = op1 + op2; */
res = operation();
printf ("%d + %d -%d +%hd  = %lld \n" ,C,A,D,B, res  );
return 0;
}
