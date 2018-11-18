# Exemplo dado no moodle

# variaveis
INCLUDES = struct.h
SOURCES = random.c main.c condition.c sets.c
OBJFILES = random.o main.o condition.o sets.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c main.c
	gcc -Wall -g -c random.c
	gcc -Wall -g -c sets.c
	gcc -Wall -g -c condition.c

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
