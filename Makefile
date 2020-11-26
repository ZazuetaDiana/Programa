
```make
# Makefile
all: programa
programa: programa.o
  ld -o $@ $+
programa.o : programa.s
  as -g -mfpu=vfpv2 -o $@ $<
clean:
 rm -vf programa *.o
```
