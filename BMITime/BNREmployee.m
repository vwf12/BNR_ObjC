//
//  BNREmloyee.m
//  BMITime
//
//  Created by FARIT GATIATULLIN on 31/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//A class extension
@interface BNREmployee ()
{
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

//Accessors for assets properties

-(void)setAssets:(NSArray *)a
{
    _assets=[a mutableCopy];
}
-(NSArray *) assets{
    return [_assets copy];
}

-(void)addAsset:(BNRAsset *)a
{
    //Is assets nil?
    if (!_assets) {
        //Create an array
        _assets=[[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder=self;
}

//-(void)removeAsset:(BNRAsset *)a
//{
//    //Is assets nil?
//   
//        //Create an array
//        //_assets=[[NSMutableArray alloc] init];
//        if (_assets == 0)
//        {
//            NSLog(@"Employee ID:%u has no assets", self.employeeID);
//            return;
//        }
//        
//        // When assets count reaches zero, then exit the loop
//        // i is not incremented in this loop
//        
//        for (int i = 0; i < [_assets count];)
//        {
//            [_assets removeObjectAtIndex:i];
//        }
//    }

-(unsigned int)valueOfAssets
{
    //Sum up resale value of assets
    unsigned int sum=0;
    for (BNRAsset *a in _assets) {
        sum+=[a resaleValue];
    }
    return sum;
}
-(double)yearsOfEmployment
{
    //Do i have non-nil hireDate?
    if (self.hireDate) {
        //NSTimeinterval is the same as double
        NSDate *now=[NSDate date];
        NSTimeInterval secs=[now timeIntervalSinceDate:self.hireDate];
        return secs/31557600.0; //Seconds per year
    } else {
        return 0;
    }
}
-(float)bodyMassIndex
{
    float normalBMI=[super bodyMassIndex];
    return normalBMI*0.9;
}
-(NSString *)description
{
    //return [NSString stringWithFormat:@"<Employee %d>", self.emloyeeID];
    return [NSString stringWithFormat:@"<Employee %d $%u in assets>", self.employeeID, self.valueOfAssets];
}
-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
