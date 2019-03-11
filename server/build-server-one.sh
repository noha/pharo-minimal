#!/bin/bash

p32 minimal.image eval --save "ZnMimeType initialize. Metacello new baseline: 'Tonel';repository: 'github://pharo-vcs/tonel:v1.0.9';onWarning: [ :e | Error signal: e messageText in: e signalerContext ]; load: 'core'. Metacello new repository: 'tonel://pharo/src'; baseline: #UnifiedFFI; load. Metacello new repository: 'filetree://source'; baseline: 'KikiMatic'; load: #( 'server' )"
