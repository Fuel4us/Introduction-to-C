# include <stdio.h>
# include "asm.h"
int main () {
int res =0;

A=9;
B=5;
/* res = op1 + op2; */
res = operation();
printf ("%d + %d flag = %d \n" ,A,B, res  );

A= -99991;
B= -2000000000;
/* res = op1 + op2; */
res = operation();
printf ("%d + %d flag = %d \n" ,A,B, res  );


A=2147483643;
B=10;
/* res = op1 + op2; */
res = operation();
printf ("%d + %d flag = %d \n" ,A,B, res  );

return 0;
}
