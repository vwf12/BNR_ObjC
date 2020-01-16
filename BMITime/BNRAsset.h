//
//  BNRAsset.h
//  BMITime
//
//  Created by FARIT GATIATULLIN on 31/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;


@interface BNRAsset : NSObject
@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) BNREmployee *holder;

@end


