//
//  main.c
//  bitwize
//
//  Created by FARIT GATIATULLIN on 21/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
//    uint64_t f=1;
//    int two=2;
//    for (int i=0; i<64;i++) {
//        f=f+pow(two, i);
//    }
    //long double a=2^64;
    
//    unsigned char b=0xa9;
//    unsigned char c=a|b;
//    printf("Hex: %x|%x=%x\n", a,b,c);
//    printf("Decimal: %d|%d=%d\n", a,b,c);
//    printf("Decimal: %qu\n", f);
//    printf ("pow  : %f\n", pow (2, 10));
    uint64_t a = 0;
    for (int i = 0; i < 64; i++) {
        a = a << 2;
        a = a + 1;
    }
    printf("The ...10101 number is %llu\n", a);
    return 0;
}
