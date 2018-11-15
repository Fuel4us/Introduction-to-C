#include <stdio.h>

int activate_bits(int a , int left , int right) {

  int i = 0;

  while (i < left || i < right) {

		if (i < left) {
		    a|= 1 << (sizeof(a)*8-i-1);
		}
		if (i < right) {
		    a|= 1 << i;
		}
		  i++;
	 }

   return a;
}
