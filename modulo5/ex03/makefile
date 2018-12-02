# Exemplo dado no moodle

# variaveis
INCLUDES = struct.h fill_student.h
SOURCES = main.c fill_student.c
OBJFILES = main.o fill_student.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -ansi -Wall -g -c main.c
	gcc -ansi -Wall -g -c fill_student.c

${EXEC}: ${OBJFILES}
	gcc -ansi -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
