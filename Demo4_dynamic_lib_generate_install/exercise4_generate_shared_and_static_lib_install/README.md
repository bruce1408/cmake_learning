生成动态库和静态库


并且进行安装, 在CMakeLists.txt里面不用写安装的具体目录，在最外面使用cmake.. 执行命令的时候，要加上如下命令
```
cmake -DCMAKE_INSTALL_PREFIX=/Users/bruce/CppProjects/cmake_learning/demo ..

# 安装在cmake的指定位置
make install 
```
后面的那个后缀就是最后静态库和动态库生成的路径
