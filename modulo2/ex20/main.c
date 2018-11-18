# include <stdio.h>
# include "asm.h"
# include "func.h"
int main () {
int res =0;
printf (" Value i?: " );
scanf ("%d" ,&i);
printf (" Value j?: " );
scanf ("%d" ,&j);
printf (" Value g?: " );
scanf ("%d" ,&g);
printf (" Value h?: " );
scanf ("%d" ,&h);
printf (" Value r?: " );
scanf ("%d" ,&r);



res = f(i, j , h);
printf ("%d \n" , res  );
res= fs();
printf ("%d \n" , res  );

res= f2(i , j , h);
printf ("%d \n" , res  );
res= f2s();
printf ("%d \n" , res  );

res= f3(i , j , h , g , r);
printf ("%d \n" , res  );
res= f3s();
printf ("%d \n" , res  );

res= f4(i , j , h);
printf ("%d \n" , res  );
res= f4s();
printf ("%d \n" , res  );

return 0;
}
