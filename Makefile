all: telepharo

telepharo:
	make -C telepharo
	
clean:
	make -C telepharo clean

dist: 
	make -C telepharo dist

realclean: 
	rm -rf vm/32
	rm -rf vm/64
	
