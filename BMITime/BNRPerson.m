//
//  BNRPerson.m
//  BMITime
//
//  Created by FARIT GATIATULLIN on 28/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//-(float)heightInMeters
//{
//    return _heightInMeters;
//}
//
//-(void)setHeighInMeters:(float)h
//{
//    _heightInMeters=h;
//}
//
//-(int)weightInKilos
//{
//    return _weightInKilos;
//}
//
//-(void)setWeightInKilos:(int)w
//{
//    _weightInKilos=w;
//}
-(float)bodyMassIndex
{
    //return _weightInKilos/(_heightInMeters*_heightInMeters);
    float h=[self heightInMeters];
    return [self weightInKilos]*(h*h);
}
@end
