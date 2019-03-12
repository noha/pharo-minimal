#!/bin/bash

cp minimal.image server.image
cp minimal.changes server.changes

./pharo server.image eval --save "Metacello new repository: 'github://pharo-ide/TelePharo'; baseline: 'TelePharo'; load: #( 'Server' )"
