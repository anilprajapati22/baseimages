#!/bin/bash

cd odbc-driver

export tag=v0.0.1

export architecture=ubuntu
podman build -t docker.io/anilprajapati18/odbc-driver-base-img:$tag-$architecture --file Dockerfile-$architecture --platform=linux/amd64   .
podman run --rm --name=sgnons-odbc-driver-$architecture docker.io/anilprajapati18/odbc-driver-base-img:$tag-$architecture
podman push docker.io/anilprajapati18/odbc-driver-base-img:$tag-$architecture


export architecture=alpine
podman build -t docker.io/anilprajapati18/odbc-driver-base-img:$tag-$architecture --file Dockerfile-$architecture --platform=linux/amd64   .
podman run --rm --name=sgnons-odbc-driver-$architecture docker.io/anilprajapati18/odbc-driver-base-img:$tag-$architecture
podman push docker.io/anilprajapati18/odbc-driver-base-img:$tag-$architecture
 
cd ..

###############################################################

cd chromium-driver-odbc

export tag=v0.0.1

export architecture=ubuntu
podman build -t docker.io/anilprajapati18/selenium-odbc-driver-base-img:$tag-$architecture --file Dockerfile-$architecture --platform=linux/amd64   .
podman run --rm --name=sgnons-odbc-driver-$architecture docker.io/anilprajapati18/selenium-odbc-driver-base-img:$tag-$architecture
podman push docker.io/anilprajapati18/selenium-odbc-driver-base-img:$tag-$architecture


export architecture=alpine
podman build -t docker.io/anilprajapati18/selenium-odbc-driver-base-img:$tag-$architecture --file Dockerfile-$architecture --platform=linux/amd64   .
podman run --rm --name=sgnons-odbc-driver-$architecture docker.io/anilprajapati18/selenium-odbc-driver-base-img:$tag-$architecture
podman push docker.io/anilprajapati18/selenium-odbc-driver-base-img:$tag-$architecture
 
cd ..