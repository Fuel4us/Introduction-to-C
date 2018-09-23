# Exemplo dado no moodle

# variaveis
INCLUDES = coef.h
SOURCES = coef.c main.c table.c
OBJFILES = coef.o main.o table.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c main.c
	gcc -Wall -g -c table.c
	gcc -Wall -g -c coef.c

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
