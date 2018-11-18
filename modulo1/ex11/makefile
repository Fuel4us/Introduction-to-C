# Exemplo dado no moodle

# variaveis
INCLUDES = capitalizer.h
SOURCES = capitalizer.c main.c
OBJFILES = capitalizer.o main.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c main.c
	gcc -Wall -g -c capitalizer.c

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}




