import os
from ctypes import *
dll = cdll.LoadLibrary("/Users/bruce/CppProjects/cmake-demo/exercise8/build/lib/libhello.dylib")

dll.hello()