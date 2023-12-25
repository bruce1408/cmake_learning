#!/usr/bin/env bash

info() {
    local message=$1
    local progress=$2
    local color='\033[1;34m'
    echo -e "$color[INFO] $message\033[0m"
}

workdir=$(cd $(dirname $0); pwd)

cd ${workdir}

# cd ./build

# make clean

# cd ..

rm -rf build/


info "create build dir..."
mkdir build

cd build/

info "begin to cmake"
cmake ../

make

info "Run Demo"
./Demo 3 3
