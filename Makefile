all: ex1

libex2.so: ex2.o
	gcc -m32 --share $< -o $@

ex1: ex1.o | libex2.so
	gcc -m32 $< -L. -lex2 -o $@

%.o : %.c
	gcc -m32 -c $< -o $@

install: ex1 libex2.so 
	mkdir -p  $(PREFIX)/usr/bin $(PREFIX)/usr/lib
	cp ex1 $(PREFIX)/usr/bin
	cp libex2.so $(PREFIX)/usr/lib

clean: 
	rm -f ex2.o libex2.so ex1.o ex1

uninstall:
	rm -f $(PREFIX)/usr/bin/ex1
	rm -f $(PREFIX)/usr/lib/libex2.so
