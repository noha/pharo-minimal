seaside: seaside.image

pharo-vm: 
	../bin/download-vm.sh

Pharo.image: 
	../bin/download-image.sh

seaside.image: pharo-vm Pharo.image 
	touch PharoV60.sources 
	cp Pharo.image seaside.image
	cp Pharo.changes seaside.changes
	../bin/pharo seaside.image eval --save "Metacello new repository: 'github://SeasideSt/Seaside:v3.3.2/repository'; baseline: 'Seaside3'; load"

dist: seaside.image
	zip seaside seaside.image seaside.changes

run-server: seaside.image 
	../bin/pharo server.image eval --no-quit "TlpRemoteUIManager registerOnPort: 40423"


.PHONY: seaside pharo-vm 

clean:
	rm -f *.sources PharoDebug.log
	rm -rf image.*
	rm -f *.image *.changes
	rm -f seaside.zip

realclean: clean
	rm -rf pharo-local
	rm -rf github-cache
