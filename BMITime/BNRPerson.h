//
//  BNRPerson.h
//  BMITime
//
//  Created by FARIT GATIATULLIN on 28/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

//BNRPerson has two propeties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
//
//{
//    //BNRPerson has two instance variables
//    float _heightInMeters;
//    int _weightInKilos;
//}
//
////BNRPerson has methods to read ands set its instance variables
//-(float)heightInMeters;
//-(void)setHeighInMeters:(float)h;
//-(int)weightInKilos;
//-(void)setWeightInKilos:(int)w;
//BNRPerson has a method that calculates the Body Mass Index
-(float)bodyMassIndex;
@end

NS_ASSUME_NONNULL_END
