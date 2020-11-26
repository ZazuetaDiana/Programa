# POR:
# No. Control: 
# Archivo Makefile: Codigo que compila un programa definido.
# Fecha: ____
# Materia: Lenguajez de interfaz.

# Makefile
all: programa
programa: programa.o  # enlazarlo para correrlo
	ld -o $@ $+
programa.o: programa.s # compilarlo nos genera el .o
	as -g -mfpu=vfpv2 -o $@ $<
clean:   # limpiar todo que no se ocupa como lo .o basura
	rm -vf first *.o

