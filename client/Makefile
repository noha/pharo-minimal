client: pharo-vm telepharo.image

pharo-vm: download-vm.sh
	./download-vm.sh

Pharo.image: pharo-vm download-image.sh
	./download-image.sh

telepharo.image: Pharo.image build-telepharo.sh
	./build-telepharo.sh

run: 
	./pharo-ui telepharo.image

clean:
	rm -f pharo pharo-ui *bak* *.sources
	rm -rf pharo-vm image.*
	rm -f *.image
	rm -f *.changes
	rm -rf pharo-local
	rm -rf github-cache


