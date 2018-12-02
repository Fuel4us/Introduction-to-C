typedef struct {
  char age;
  short number;
  char name[80];
  char address[120];
} Student;

void update_address(Student *s, char *new_address);
