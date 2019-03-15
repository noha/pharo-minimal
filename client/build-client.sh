#!/bin/bash

cp Pharo.image client.image
cp Pharo.changes client.changes

../bin/pharo client.image eval --save "Metacello new repository: 'github://pharo-ide/TelePharo'; baseline: 'TelePharo'; load: #( 'Client' )"
