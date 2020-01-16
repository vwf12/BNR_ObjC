//
//  main.m
//  DateList
//
//  Created by FARIT GATIATULLIN on 21/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create NSDate objects
        NSDate *now=[NSDate date];
        NSDate *tomorrow=[now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday=[now dateByAddingTimeInterval:-24.0*60.0*60.0];
        
        //Create an array containing all three
        //NSArray *dateList=@[now, tomorrow, yesterday];
        
        //Create an empty mutable array
        NSMutableArray *dateList=[NSMutableArray array];
        
        //Add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Add yesterday to the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        
        //Print a couple of dates
        
        //NSLog(@"The first date is %@", dateList[0]);
        //NSLog(@"The third date is %@", dateList[2]);
        // How many dates are in the array
        
        //NSLog(@"The are %lu dates", [dateList count]);
        
        //Iterate over array
        //NSUInteger dateCount=[dateList count];
        //for (int i=0;i<dateCount;i++) {
            //NSDate *d=dateList[i];
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date: %@", d);
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
    }
    return 0;
}
