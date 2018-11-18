# Exemplo dado no moodle

# variaveis
INCLUDES = calc.h
SOURCES = main.c calc.s
OBJFILES = calc.o main.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c main.c

# como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -Wall -g -c calc.s

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
