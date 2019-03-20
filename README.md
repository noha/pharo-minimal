# playground for minimal image creation [![Build Status](https://travis-ci.org/noha/pharo-minimal.svg?branch=master)](https://travis-ci.org/noha/pharo-minimal)

This repository contains scripts and patches in order to build a pharo minimal images. The builds are using the VM_ARCH environment variable to detect which version to build. By using 

    VM_ARCH=32 make ....

will build a 32 bit version. Default is to build 64 bit

## telepharo

In the telepharo directory use

    $ make server

to build a pharo minimal telepharo image. With 

    $ make run-server

it will launc the headless image on port 40423. The client can be build using

    $ make client

It builds a full pharo image with telepharo. It is started using 

    $ make run-client

If you open a playground and execute

    remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423).
    remotePharo openPlayground

you should be connected to the server image

