#!/bin/bash

file="./build/bin/Hello_World_With_Jenkins"

if [ -x "$file" ]; then
    "$file"
else
    echo "File was not found under the path: ${file}"
fi