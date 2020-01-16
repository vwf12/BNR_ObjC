//
//  BNREmloyee.h
//  BMITime
//
//  Created by FARIT GATIATULLIN on 31/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;


@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;
-(double)yearsOfEmployment;
-(void)addAsset:(BNRAsset *)a;
-(void)removeAsset:(BNRAsset *)a;
-(unsigned int)valueOfAssets;

@end


