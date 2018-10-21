# Exemplo dado no moodle

# variaveis
INCLUDES = asm.h func.h
SOURCES = main.c asm.s func.c
OBJFILES = main.o asm.o func.o
EXEC = exec

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -ansi -Wall -g -c main.c
	gcc -ansi -Wall -g -c func.c

# como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -ansi -Wall -g -c asm.s

${EXEC}: ${OBJFILES}
	gcc -ansi -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
