//
//  main.m
//  TimeAfterTime
//
//  Created by FARIT GATIATULLIN on 03/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSDate *now=[NSDate date];
        NSDate *now=[[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        double seconds=[now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later=[now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        NSCalendar *cal=[NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day=[cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        NSLog(@"This day is %lu of the month", day);
        
        NSDateComponents *comps=[[NSDateComponents alloc] init];
        [comps setYear:1992];
        [comps setMonth:1];
        [comps setDay:26];
        [comps setHour:9];
        [comps setMinute:30];
        [comps setSecond:15];
        
        NSCalendar *g=[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *earlierDate=[g dateFromComponents:comps];
        NSDate *laterDate=[[NSDate alloc] init];
        double secondsSinceEarlierDate=[laterDate timeIntervalSinceDate:earlierDate];
        NSLog(@"Seconds since my birthday: %f", secondsSinceEarlierDate);
        //NSHost *name=[NSHost currentHost];
        //NSString *name1=[name localizedName];
        //NSLog(@"My MAC name is %@", name1);
        
        //sending bogus messages to see errors...
        //double testSeconds=[NSDate dateWithTimeIntervalSince1970];
        //NSDate *testNow=[now date];
        //mistyped selector name
        //testSeconds=[now fooIntervalSince19070];
    }
    return 0;
}
