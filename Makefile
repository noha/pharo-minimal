all: telepharo

telepharo:
	make -C telepharo
	
clean:
	make -C minimal clean
	make -C telepharo clean

dist: 
	VM_ARCH=32 make -C telepharo dist

realclean: clean
	rm -rf vm/32
	rm -rf vm/64
	
