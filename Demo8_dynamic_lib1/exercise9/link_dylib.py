import os
from ctypes import *

from ctypes import *

test = cdll.LoadLibrary("/Users/bruce/CppProjects/cmake-demo/exercise9/build/libhello.dylib")

test.test()
add =test.add
add.argtypes =[c_float, c_float] 
add.restype =c_float
print(add(1.3, 13.4))