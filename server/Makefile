server: pharo-vm telepharo.image

PharoV60.sources: 
	touch PharoV60.sources 

pharo-vm: PharoV60.sources download-vm.sh
	./download-vm.sh

minimal-pharo.image: pharo-vm build-minimal-pharo.sh
	./build-minimal-pharo.sh

minimal.image: pharo-vm minimal-pharo.image build-minimal.sh
	./build-minimal.sh

telepharo.image: pharo-vm minimal.image build-telepharo.sh
	./build-telepharo.sh

run: telepharo.image run.sh
	./run.sh

clean:
	rm -f pharo pharo-ui PharoV60.sources
	rm -rf pharo-vm
	rm -f *.image
	rm -f *.changes
	rm -rf pharo-local
	rm -rf github-cache


