cmake_minimum_required(VERSION 3.23)
project(HELLO)

add_subdirectory(src bin)

install(FILES  copyright README DESTINATION ./share/doc/cmake/)

# 安装脚本，非目标可执行程序 默认安装到/usr/local/bin
install(PROGRAMS runhello.sh DESTINATION ./bin)

# 安装目录
install(DIRECTORY doc/ DESTINATION ./share/doc/cmake)
