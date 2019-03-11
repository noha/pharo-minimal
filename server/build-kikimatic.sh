#!/bin/bash

cp telepharo.image kiki-matic.image
cp telepharo.changes kiki-matic.changes

./pharo kiki-matic.image eval --save "Metacello new baseline: 'UnifiedFFI';repository: 'github://pharo-project/pharo:Pharo8.0/src'; load"

./pharo kiki-matic.image eval --save "Metacello new repository: 'filetree://source'; baseline: 'KikiMatic'; onConflictUseLoaded; load: #( 'server' )"
