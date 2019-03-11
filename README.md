# playground for minimal image creation

This repository contains scripts and patches in order to build a pharo minimal telepharo image. 

Use 

    $ make server

to build a 32 bit pharo minimal telepharo image. With 

    $ make run-server

it will launc the headless image on port 40423. The client can be build using

    $ make client

It builds a 64 bit full pharo image with telepharo. It is started using 

    $ make run-client

If you open a playground and execute

    remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423).
    remotePharo openPlayground

you should be connected to the server image

