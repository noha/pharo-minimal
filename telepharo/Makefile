server: server.image

client: client.image

Pharo.image: 
	../bin/download-image.sh

minimal-pharo.image: build-minimal-pharo.sh
	../bin/download-vm.sh
	touch PharoV60.sources 
	./build-minimal-pharo.sh

minimal.image: minimal-pharo.image build-minimal.sh
	./build-minimal.sh

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
clean:
	rm -f *.sources PharoDebug.log
	rm -rf image.*
	rm -f *.image *.changes
	rm -rf pharo-local
	rm -rf github-cache
	rm -f telepharo.zip



