//
//  main.c
//  Addresses
//
//  Created by FARIT GATIATULLIN on 19/09/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float i=1753455.55;
    float *addressofi=&i;
    printf("i stores its avalue at %p\n", addressofi);
    printf("Now i is %f\n", i);
    printf("An int is %zu bytes \n", sizeof(i));
    printf("A pointer is %zu bytes \n", sizeof(int *));
    return 0;
}
