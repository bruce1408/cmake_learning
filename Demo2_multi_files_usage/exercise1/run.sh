#!/usr/bin/env bash

info_p() {
    local message=$1
    local progress=$2
    local color='\033[1;32m'
    echo -e "$color[INFO][$progress%]$message\033[0m"
}

info_err() {
    local message=$1
    # local progress=$2
    local color='\033[1;31m'
    echo -e "$color[ERROR]$message\033[0m"
}

# 普通打印信息
info() {
    local message=$1
    local progress=$2
    local color='\033[1;34m'
    echo -e "$color$message\033[0m"
}


workdir=$(cd $(dirname $0); pwd)


cd ${workdir}

rm -rf build/

echo "========== create build dir..."
mkdir build

echo "========== build dir is generate done"
cd build/

echo "========== begin to exec cmake"
cmake ../

echo "========== exec the next step: make"
make

echo "Run Demo"
./Demo 3 2
