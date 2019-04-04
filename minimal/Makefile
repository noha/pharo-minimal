all: minimal.image 

Pharo.image: 
	../bin/download-image.sh

minimal-pharo.image: build-minimal-pharo.sh
	../bin/download-vm.sh
	touch PharoV60.sources 
	./build-minimal-pharo.sh

minimal.image: minimal-pharo.image build-minimal.sh
	./build-minimal.sh

dist: minimal.image minimal.image
	zip minimal minimal.image minimal.image

clean:
	rm -f *.sources PharoDebug.log
	rm -rf image.*
	rm -f *.image *.changes
	rm -f minimal.zip

realclean: clean
	rm -rf pharo-local
	rm -rf github-cache
