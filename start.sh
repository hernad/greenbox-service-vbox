#!/bin/bash

DOCKER_PASSWORD=${DOCKER_PASSWORD:-test01}

# https://github.com/jazzdd86/phpVirtualbox

docker rm -f vbox-1
docker run --name vbox-1 --restart=always \
    -p 8009:80 \
    \
    -e SRV1_PORT_18083_TCP=192.168.168.171:18083 \
    -e SRV1_NAME=greenbox-1 \
    -e SRV1_USER=docker \
    -e SRV1_PW=$DOCKER_PASSWORD \
    -e CONF1_browserRestrictFolders="/data,/home" \
    \
    -e SRV2_PORT_18083_TCP=192.168.168.193:18083 \
    -e SRV2_NAME=greenbox-w1 \
    -e SRV2_USER=greenbox \
    -e SRV2_PW=tO3Ekz \
    -e CONF2_browserRestrictFolders="/data,/home" \
    \
    -e CONF_browserRestrictFolders="/data,/home" \
    -d jazzdd/phpvirtualbox
