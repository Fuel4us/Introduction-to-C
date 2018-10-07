#include <stdio.h>
#include "coef.h"

void table() {
  int x, y;

  for(y=0; y<10;y=y+1){
    for (x=0;x<10;x=x+1){
      printf("%d\n", coef(x,y));
    }
    printf("\n");
  }
}
