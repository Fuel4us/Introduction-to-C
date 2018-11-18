# Exemplo dado no moodle

# variaveis
INCLUDES = compress_shorts.h
SOURCES = compress_shorts.c main.c
OBJFILES = compress_shorts.o main.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c main.c
	gcc -Wall -g -c compress_shorts.c

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}



