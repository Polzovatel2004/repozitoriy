#
# Makefile
#

CC = gcc
CFLAGS = 
LIBS = -lm

calcul: calculate.o main.o
	$(CC) calculate.o main.o -o calcul $(LIBS)

calculate.o: calculate.c calculate.h
	$(CC) -c calculate.c $(CFLAGS)
	
main.o: main.c calculate.h
	$(CC) -c main.c $(CFLAGS)

clean: 
	-rm calcul *.0 *~
	
#End Makefile
