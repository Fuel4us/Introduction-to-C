#include <stdio.h>
#include "greater.h"

int main() {

  unsigned int date1 = 0b11000000000010011111111111111110;
	unsigned int date2 = 0b10000100000000011111111111111110;

	int greater = greater_date(date1, date2);

	if (date1 == greater)
		printf("First date is greater\n");
	else if(date2 == greater)
		printf("Second date is greater\n");
	else
		printf("Same values were inputed %x - %x\n",date1,date2);

  return 0;
}
