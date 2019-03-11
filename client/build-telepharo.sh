#!/bin/bash

cp Pharo.image telepharo.image
cp Pharo.changes telepharo.changes

./pharo telepharo.image eval --save "Metacello new repository: 'github://pharo-ide/TelePharo'; baseline: 'TelePharo'; load: #( 'Client' )"
