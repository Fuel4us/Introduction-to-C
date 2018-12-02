# Exemplo dado no moodle

# variaveis
INCLUDES = struct.h structv2.h
SOURCES = main.c
OBJFILES = main.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -ansi -Wall -g -c main.c

${EXEC}: ${OBJFILES}
	gcc -ansi -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
