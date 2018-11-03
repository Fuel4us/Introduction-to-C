# Exemplo dado no moodle

# variaveis
INCLUDES = vec_sum.h vec_avg.h
SOURCES = main.c vec_sum.s vec_avg.s
OBJFILES = main.o vec_sum.o vec_avg.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -ansi -Wall -g -c main.c

# como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -ansi -Wall -g -c vec_sum.s
	gcc -ansi -Wall -g -c vec_avg.s

${EXEC}: ${OBJFILES}
	gcc -ansi -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
