#!/usr/bin/env bash

workdir=$(cd "$(dirname "$0")" || exit; pwd)

cd "${workdir}" || exit

rm -rf build/

echo "========== create build dir..."
mkdir build

echo "========== build dir is generate done"
cd build/ || exit

echo "========== begin to exec cmake"
cmake ../

echo "========== exec the next step: make"
make

echo "Run Demo"
# ./Demo 3 3
