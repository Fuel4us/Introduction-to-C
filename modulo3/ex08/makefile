# Exemplo dado no moodle

# variaveis
INCLUDES = even.h vec_sum_even.h
SOURCES = main.c even.s vec_sum_even.s
OBJFILES = even.o main.o vec_sum_even.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c main.c

# como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -Wall -g -c even.s
	gcc -Wall -g -c vec_sum_even.s

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
