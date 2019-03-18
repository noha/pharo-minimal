#!/bin/sh

set -e

../bin/download-minimal-image.sh

if [ ! -z "ls -A patches-pharo/" ];
then
    echo "found patches in patches-pharo. Installing..."
    for patchfile in `echo patches-pharo/*`; do
        echo "patching image with ${patchfile}"
        ../bin/pharo minimal-pharo.image eval --save "'${patchfile}' asFileReference fileIn"
    done
fi
