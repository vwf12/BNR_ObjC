//
//  main.c
//  yostring
//
//  Created by FARIT GATIATULLIN on 21/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h> //for printf
#include <stdlib.h> //for malloc/free
#include <string.h> //for strlen

int main(int argc, const char * argv[]) {
    char x='!'; //The character '!'
    while (x<='~') { //The character '~'
        printf("%d. %x is %c\n", x,x,x);
        x++;
    }
//    Get a pointer to 5 bytes of memory on the heap
    //char *start=malloc(5);
    
////    Put 'L' in the first byte
//    *start='L';
//
////    Put 'o' in 2nd
//    *(start+1)='o';
//
////    Put 'v' in 3rd
//    *(start+2)='v';
//
////    Put 'e' in 4th
//    *(start+3)='e';
//
////    Put zero in 5th
//    *(start+4)='\0';
    
    const char *start="A backlash after two newlines and a tab:\n\n\t\\";
    
    
//    Print out the string and it's length
    printf("%s has %zu characters\n", start, strlen(start));
    
//    Print out the third letter
    printf("The third letter is %c\n", start[2]);
    
//    Free the memory so that it can be reused
    
    
    return 0;
}
