server: server.image

client: client.image

Pharo.image:
	../bin/download-image.sh

minimal.image: 
	make -C ../minimal
	cp ../minimal/minimal.image ../minimal/minimal.changes ../minimal/PharoV60.sources .

server.image: minimal.image build-server.sh
	./build-server.sh

client.image: Pharo.image build-client.sh
	../bin/download-vm.sh
	touch PharoV60.sources 
	./build-client.sh

dist: server.image client.image
	zip telepharo server.image client.image

run-server: server.image 
	../bin/pharo server.image eval --no-quit "TlpRemoteUIManager registerOnPort: 40423"

run-client: client.image
	../bin/pharo-ui client.image st start.st

.PHONY: server client run-client run-server

clean-client: 
	rm -f Pharo.image Pharo.changes client.image client.changes
	rm -f PharoV60.sources

clean-server:
	rm -f minimal.image minimal.changes server.image server.changes

clean: clean-client clean-server
	rm -f *.sources PharoDebug.log
	rm -f telepharo.zip

realclean: clean
	rm -rf pharo-local
	rm -rf github-cache




