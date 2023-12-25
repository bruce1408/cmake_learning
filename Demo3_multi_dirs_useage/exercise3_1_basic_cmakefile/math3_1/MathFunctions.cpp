/**
 * power - Calculate the power of number.
 * @param base:	Base value.
 * @param exponent: Exponent value.
 *
 * @return base raised to the power exponent.
 */

#include "utils.h"
// #include "MathFunctions.h"

double power_self(double base, int exponent)
{
    int result = base;
    int i;

    if (exponent == 0) {
        return 1;
    }
    
    for(i = 1; i < exponent; ++i){
        result = result * base;
    }
    
    utils::print_log(result);

    return result;
}

