all: server 

server:
	make -C server
	
client:
	make -C client
	
run-server: 
	make -C server run
	
run-client: 
	make -C client run

clean:
	make -C server clean
	make -C client clean
	
.PHONY: server run-server client run-client
