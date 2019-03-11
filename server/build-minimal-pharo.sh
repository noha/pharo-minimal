#!/bin/sh

set -e

wget http://files.pharo.org/image/80/latest-minimal-32.zip
unzip latest-minimal-32.zip
mv Pharo8.0-SNAPSHOT-metacello-32bit-*.image minimal-pharo.image
mv Pharo8.0-SNAPSHOT-metacello-32bit-*.changes minimal-pharo.changes
rm latest-minimal-32.zip

if [ ! -z "ls -A patches-pharo/" ];
then
    echo "found patches in patches-pharo. Installing..."
    for patchfile in `echo patches-pharo/*`; do
        echo "patching image with ${patchfile}"
        ./pharo minimal-pharo.image eval --save "'${patchfile}' asFileReference fileIn"
    done
fi
