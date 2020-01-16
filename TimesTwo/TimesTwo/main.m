//
//  main.m
//  TimesTwo
//
//  Created by FARIT GATIATULLIN on 18/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import <stdio.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDate *currentTime=[NSDate date];
//        NSLog(@"CurrentTime's value is %p", currentTime);
//
//        NSDate *startTime=currentTime;
//        sleep(2);
//
//        currentTime=[NSDate date];
//        NSLog(@"CurrentTime's value is now %p", currentTime);
//        NSLog(@"The address of original object is %p", startTime);
//
//        currentTime=nil;
//        NSLog(@"currentTime's value is %p", currentTime);
        
        
//        int main(int argc, const char * argv[])
//        {
//            printf("Where should id start counting?");
//            const char *num=readline(NULL);
//            for (int i=atoi(num); i>-1; i--) {
//                if (i%3==0) {
//                    printf ("%d\n",i);
//                    if (i%5==0) {
//                        printf("Found one!\n");
//                    }
//                }
//            }
//            return 0;
//        }

        
        NSLog(@"Where should i start counting?");
        const char *num=readline(NULL);
        NSString *numc=[NSString stringWithUTF8String:num];
        int intNum = [numc intValue];
        for (; intNum>-1; intNum--) {
             if (intNum%3==0) {
                 NSLog(@"%d\n", intNum);
                     if (intNum%5==0) {
                         NSLog(@"Found one!\n");
                     }
             }
        }
    }
    return 0;
}
