import os
from ctypes import *
dll = cdll.LoadLibrary("/Users/bruce/CppProjects/cmake-demo/Demo8_dynamic_lib1/exercise2/build/lib/libhello.dylib")

dll.hello()