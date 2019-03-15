#!/bin/sh

#rm pharo pharo-ui
#rm -rf pharo-vm

BIN_PATH=`dirname $0`

if [ -z "$VM_ARCH" ];
then
    VM_ARCH=64
fi

VM_PATH="$BIN_PATH/../vm/$VM_ARCH"

if [ ! -d "$VM_PATH" ]; then
    mkdir -p $VM_PATH
    echo "downloading get.pharo.org/${VM_ARCH}/vm80"
    cd $VM_PATH && curl get.pharo.org/${VM_ARCH}/vm80 | bash
fi

