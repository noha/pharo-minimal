#!/bin/sh

if [ -z "$VM_ARCH" ];
then
    VM_ARCH=32
fi

if [ ! -f "minimal-pharo.image" ]; then
    wget http://files.pharo.org/image/80/latest-minimal-${VM_ARCH}.zip
    unzip latest-minimal-${VM_ARCH}.zip
    mv Pharo8.0-SNAPSHOT-metacello-${VM_ARCH}bit-*.image minimal-pharo.image
    mv Pharo8.0-SNAPSHOT-metacello-${VM_ARCH}bit-*.changes minimal-pharo.changes
    rm latest-minimal-${VM_ARCH}.zip
fi
