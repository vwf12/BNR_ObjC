//
//  main.c
//  Triangle
//
//  Created by FARIT GATIATULLIN on 17/09/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#include <stdio.h>
float remainingAangle (int angleA, int angleB)
{
    float c= 180.0-angleA-angleB;
    return c;
}
int main(int argc, const char * argv[]) {
    float angleA=30.0;
    float angleB=60.9;
    float angleC=remainingAangle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}
