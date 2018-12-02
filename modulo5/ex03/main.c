#include <stdio.h>
#include "struct.h"
#include "fill_student.h"

int main() {

	Student s;

	fill_student(&s, 21, 1150503, "Gonçalo", "Matosinhos");

	printf("%d\n", s.age);
	printf("%hu\n", &s.number);
	printf("%s\n", s.name);
	printf("%s\n", s.address);

	return 0;
 }
