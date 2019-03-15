client: client.image

pharo-vm:
	../bin/download-vm.sh

Pharo.image: pharo-vm 
	../bin/download-image.sh

client.image: Pharo.image build-client.sh
	./build-client.sh

run: 
	../bin/pharo-ui client.image st start.st

clean:
	rm -f pharo pharo-ui *bak* *.sources PharoDebug.log
	rm -rf pharo-vm image.*
	rm -f *.image
	rm -f *.changes
	rm -rf pharo-local
	rm -rf github-cache


