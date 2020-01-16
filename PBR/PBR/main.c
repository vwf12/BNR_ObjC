//
//  main.c
//  PBR
//
//  Created by FARIT GATIATULLIN on 25/09/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches (double meters, unsigned int *ftPtr, double *inPtr)
{
    double rawFeet=meters*3.281;
    double feet;
    double fractionalFoot=modf(rawFeet, &feet);
    if (ftPtr) {
    printf("Storing %f to the address %p\n", feet, ftPtr);
    *ftPtr=feet;
    }
    double inches=fractionalFoot*12.0;
    if (inPtr) {
    printf("Storing %.2f to the address %p\n", inches, inPtr);
    *inPtr=inches;
    }
}
int main(int argc, const char * argv[]) {
    double meters=0;
    unsigned int feet;
    double inches;
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%1.f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    return 0;
}
