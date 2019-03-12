#!/bin/bash

cp Pharo.image telepharo-client.image
cp Pharo.changes telepharo-client.changes

./pharo telepharo-client.image eval --save "Metacello new repository: 'github://pharo-ide/TelePharo'; baseline: 'TelePharo'; load: #( 'Client' )"
