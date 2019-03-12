client: client.image

pharo-vm: download-vm.sh
	./download-vm.sh

Pharo.image: pharo-vm download-image.sh
	./download-image.sh

client.image: Pharo.image build-client.sh
	./build-client.sh

run: 
	./pharo-ui client.image

clean:
	rm -f pharo pharo-ui *bak* *.sources PharoDebug.log
	rm -rf pharo-vm image.*
	rm -f *.image
	rm -f *.changes
	rm -rf pharo-local
	rm -rf github-cache


