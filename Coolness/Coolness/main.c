//
//  main.c
//  Coolness
//
//  Created by FARIT GATIATULLIN on 19/09/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>
#include <stdlib.h>


int main(int argc, const char * argv[])
    {
        printf("Where should id start counting?");
        const char *num=readline(NULL);
        for (int i=atoi(num); i>-1; i--) {
        if (i%3==0) {
            printf ("%d\n",i);
            if (i%5==0) {
                printf("Found one!\n");
            }
        }
        }
    return 0;
}
