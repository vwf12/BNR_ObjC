//
//  BNRAppliance.h
//  Appliances
//
//  Created by FARIT GATIATULLIN on 18/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject
{
    NSString *_productName;
}

//@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;
// The designated initializer
-(instancetype)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
