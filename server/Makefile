server: server.image

PharoV60.sources: 
	touch PharoV60.sources 

pharo-vm: PharoV60.sources
	../bin/download-vm.sh

minimal-pharo.image: pharo-vm build-minimal-pharo.sh
	./build-minimal-pharo.sh

minimal.image: pharo-vm minimal-pharo.image build-minimal.sh
	./build-minimal.sh

server.image: pharo-vm minimal.image build-server.sh
	./build-server.sh

run: server.image run.sh
	./run.sh

clean:
	rm -f pharo pharo-ui PharoV60.sources PharoDebug.log
	rm -rf pharo-vm
	rm -f *.image *.sources
	rm -f *.changes
	rm -rf pharo-local
	rm -rf github-cache


