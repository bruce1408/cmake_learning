#include <stdio.h>
#include <stdlib.h>
#include "math3_1/MathFunctions.h"
// #include "tools/utils.h"

// 只能是简单的cmake写法不出错 要是使用链接库的话 这里就要加上math目录才行
// #include "MathFunctions.h"
int main(int argc, char *argv[])
{
    if (argc < 3){
        printf("this Usage: %s base exponent \n", argv[0]);
        return 1;
    }
    // printf("%s", argv[1]);
    double base = atof(argv[1]);
    int exponent = atoi(argv[2]);
    double result = power_self(base, exponent);
    printf("%g ^ %d is %g\n", base, exponent, result);
    return 0;
}
