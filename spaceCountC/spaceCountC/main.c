//
//  main.c
//  spaceCountC
//
//  Created by FARIT GATIATULLIN on 23/12/2019.
//  Copyright © 2019 vwf. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> //for malloc/free
#include <string.h> //for strlen

unsigned int spaceCount(const char *s)
{
    int sum=0;
    long unsigned length=strlen(s);
    for (int i=0;i<length;i++) {
        if (s[i]==0x20) {
            sum++;
            ;}
    }
    return sum;
}

int main(int argc, const char * argv[]) {
    const char *sentence="He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n", sentence,spaceCount(sentence));
    return 0;
}

    
