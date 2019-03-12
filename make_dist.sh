#!/bin/sh

mkdir -p telepharo
cp server/server.* telepharo/
cp client/client.* telepharo/
zip -r telepharo.zip telepharo

