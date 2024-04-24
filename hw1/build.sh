#!/bin/bash

function build-image() {
    APP=$1
    cd "$APP" || (echo "ERROR: folder with $APP does not exist" ; exit )
    make build-and-push || (echo "ERROR: could not build or push docker image $APP" ; exit )
    echo "INFO: successfully built and pushed $APP image"
    cd ..
}

echo "INFO: start building images"

build-image get-requester
build-image web-app

echo "INFO: successfully built all images"