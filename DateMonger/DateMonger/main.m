//
//  main.m
//  DateMonger
//
//  Created by FARIT GATIATULLIN on 20/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+BNDateConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now=[NSDate date];
        NSDate *new=[now minusDate];
        NSLog(@"The new date is %@", new);
//        NSDateComponents *comps=[[NSDateComponents alloc]init];
//        NSUInteger year;
//        NSUInteger day;
//        NSUInteger month;
//        int ii;
//        NSLog(@"Enter year");
//        scanf("%u", &year);
//        //NSNumber *ii=[NSNumber numberWithInt:userInput];
//        //scanf(@"%i", *year);
//        NSLog(@"Year is %lu", (unsigned long)year);
    }
    return 0;
}
