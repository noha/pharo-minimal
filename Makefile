all: server 

server:
	make -C server
	
client:
	make -C client
	
run-server: 
	make -C server run
	
run-client: 
	make -C client run

dist: server client
	./make_dist.sh

clean:
	make -C server clean
	make -C client clean
	rm -rf telepharo
	rm -f telepharo.zip
	
.PHONY: server run-server client run-client
