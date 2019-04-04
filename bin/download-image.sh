#!/bin/sh

if [ -z "$VM_ARCH" ];
then
    VM_ARCH=32
fi

curl get.pharo.org/${VM_ARCH}/80 | bash
