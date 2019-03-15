all: server 

server:
	VM_ARCH=32 make -C server
	
client:
	VM_ARCH=64 make -C client
	
run-server: 
	VM_ARCH=32 make -C server run
	
run-client: 
	VM_ARCH=64 make -C client run

dist: server client
	./make_dist.sh

clean:
	make -C server clean
	make -C client clean
	rm -rf telepharo
	rm -f telepharo.zip

realclean: 
	rm -rf vm/32
	rm -rf vm/64
	
.PHONY: server run-server client run-client
