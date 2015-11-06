#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

declare -i build

build=$(< $DIR/.build)
build=build+1
echo "Build:1."${build}

docker build -t tutum.co/skr64/CoFoot:1.${build} .
docker build -t tutum.co/skr64/CoFoot:latest .

echo ${build} > $DIR/.build