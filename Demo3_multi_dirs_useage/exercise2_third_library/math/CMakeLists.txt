# 查找当前目录下的所有源文件
# 所有的源文件保存到 DIR_LIB_SRCS
aux_source_directory(. DIR_LIB_SRCS)

# 指定生成 MathFunctions 链接库
add_library (MathFunctions ${DIR_LIB_SRCS})
