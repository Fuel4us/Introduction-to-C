# Exemplo dado no moodle

# variaveis
INCLUDES = exists.h vec_diff.h
SOURCES = main.c exists.s vec_diff.s
OBJFILES = main.o exists.o vec_diff.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -ansi -Wall -g -c main.c

# como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -ansi -Wall -g -c exists.s
	gcc -ansi -Wall -g -c vec_diff.s

${EXEC}: ${OBJFILES}
	gcc -ansi -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
