#!/bin/bash

buildDir="./build"

if [ ! -d "$buildDir" ]; then
    echo "Create missing directory: ${buildDir}"
    mkdir -p "$buildDir"
fi

cd ./build
cmake ..
make