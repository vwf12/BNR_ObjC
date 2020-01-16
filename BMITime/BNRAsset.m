//
//  BNRAsset.m
//  BMITime
//
//  Created by FARIT GATIATULLIN on 31/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *)description
{
    //return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    //Is holder non nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: %d, assigned to %@>", self.label, self. resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
        }
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
