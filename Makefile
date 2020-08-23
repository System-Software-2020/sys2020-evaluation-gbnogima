all: build_libex2 build_ex1

build_libex2:
	gcc -m32 ex2.c -o ex2.o 
	gcc -m32 --share ex2.c -o libex2.so

build_ex1:
	gcc -m32 ex1.c -o ex1.o
	gcc -m32 ex1.o -L. -lex2 -o ex1

install: all
	mkdir -p  $(PREFIX)/usr/bin $(PREFIX)/usr/lib
	cp ex1 $(PREFIX)/usr/bin
	cp libex2.so $(PREFIX)/usr/lib

clean: 
	rm ex2.o libex2.so ex1.o ex1

uninstall:
	mv */usr/bin/ex1.o */usr/bin/ex2.o .
	mv */usr/lib/libex2.so .
	rm -r $(firstword $(subst /, ,$(shell find */usr -type d)))

