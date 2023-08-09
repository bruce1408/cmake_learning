#!/usr/bin/env bash
cd /Users/bruce/CppProjects/CPlusPlusThings/extensions/cmake_learning/Demo3_multi_dirs_useage/exercise2_third_library

rm -rf build/
echo "create build dir..."
mkdir build
echo "build dir is generate done"
cd build/
echo "========== begin to exec cmake"
cmake ../
echo "========== exec the next step: make"
make

echo "Run Demo"
./Demo 3 2
