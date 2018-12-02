#include <stdio.h>
#include <string.h>
#include "update_address.h"

int main(void){
	Student stud;
	Student *s;
	s = &stud;
  char new_address[120] = "ISEP2";

	char name1[80] = "Linda";
	char age1= 21;
	short number1 = 20;
	char address1[120] = "ISEP";

  s->age = age1;
	s->number = number1;
	strcpy (s -> name, name1);
	strcpy (s -> address, address1);

  printf("%d\n", sizeof(s));
  
	update_address(s,new_address);

  printf("Address: %s\n", s->address);

	return 0;
}
