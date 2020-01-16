//
//  NSDate+BNDateConvenience.m
//  DateMonger
//
//  Created by FARIT GATIATULLIN on 20/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "NSDate+BNDateConvenience.h"

@implementation NSDate (BNDateConvenience)

-(NSDate *)minusDate
{
    NSDate *first=self;
    NSDate *second=[first dateByAddingTimeInterval:-24*60*60];
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comp = [gregorianCalendar components:( NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:second];
    [comp setMinute:0];
    [comp setHour:0];
    [comp setSecond:0];
    NSDate *result=[gregorianCalendar dateFromComponents:comp];
    return result;
//    NSInteger day = [gregorianCalendar component:NSCalendarUnitDay fromDate:first];
//    NSInteger month = [gregorianCalendar component:NSCalendarUnitMonth fromDate:first];
//    NSInteger year = [gregorianCalendar component:NSCalendarUnitYear fromDate:first];
//    NSUInteger nday=day-1;
//    if (nday==0) {
//        NSInteger nmonth=month-1;
//        if (nmonth==0) {
//            NSInteger nyear=year-1;
//        } else nmonth=month;
//        nyear=year;
//    }
//    NSCharacterSet *charSet=[NSCharacterSet characterSetWithCharactersInString:@"ariouyAEIOUY"];
//    NSUInteger count=[self length];
//    int sum=0;
//    for (int i=0; i<count; i++) {
//        unichar c=[self characterAtIndex:i];
//        if ([charSet characterIsMember:c]) {
//            sum++;
//        }
//    }
//    return sum;
//}
}
@end
