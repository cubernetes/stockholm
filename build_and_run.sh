#!/bin/sh
docker build -t he-ran-somewhere . && docker run --rm -it -v ./root:/root he-ran-somewhere
