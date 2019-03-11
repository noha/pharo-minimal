#!/bin/bash

cp minimal.image telepharo.image
cp minimal.changes telepharo.changes

./pharo telepharo.image eval --save "Metacello new repository: 'github://pharo-ide/TelePharo'; baseline: 'TelePharo'; load: #( 'Server' )"
