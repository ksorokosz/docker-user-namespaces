#!/bin/bash -ue
#
# Script creates docker for tests with some user
#

docker build -t testing .
mkdir -p volume
sudo chown dockeruser:dockeruser volume

docker run -it --rm -v $PWD/volume:/data testing
