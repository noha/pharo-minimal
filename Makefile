all: minimal telepharo seaside

telepharo:
	make -C telepharo
	
clean:
	make -C minimal clean
	make -C telepharo clean
	make -C seaside clean

dist: 
	VM_ARCH=32 make -C minimal dist
	VM_ARCH=32 make -C telepharo dist
	VM_ARCH=32 make -C seaside dist

realclean: clean
	make -C minimal realclean
	make -C telepharo realclean
	make -C seaside realclean
	rm -rf vm/32
	rm -rf vm/64
	
