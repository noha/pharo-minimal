#!/bin/bash

cp minimal-pharo.image minimal.image
cp minimal-pharo.changes minimal.changes

../bin/pharo minimal.image eval --save "ZnMimeType initialize"

../bin/pharo minimal.image  eval --save "Metacello new baseline: 'Tonel';repository: 'github://pharo-vcs/tonel:v1.0.13'; load: 'core'"

../bin/pharo minimal.image eval --save "Metacello new baseline: 'SUnit';repository: 'github://pharo-project/pharo:Pharo8.0/src'; load"

if [ ! -z "ls -A patches-minimal/" ];
then
    for patchfile in `echo patches-minimal/*`; do
        echo "patching image with ${patchfile}"
        ../bin/pharo minimal.image eval --save "'${patchfile}' asFileReference fileIn"
    done
fi
