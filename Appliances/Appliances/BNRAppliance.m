//
//  BNRAppliance.m
//  Appliances
//
//  Created by FARIT GATIATULLIN on 18/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

-(instancetype) initWithProductName:(NSString *)pn
{
    //Call the NSObject's init method
    self=[super init];
    
    // Did it return something non-nil?
    if (self=[super init]) {
        _productName=[pn copy];
        _voltage=120;
    }
    
    // Return a pointer to the new ibject
    return self;
}

-(instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %d volts>", _productName, self.voltage];
}

-(void)setVoltage:(int)x
{
    NSLog(@"Setting voltage to %d", x);
    _voltage=x;
}
@end


