//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by FARIT GATIATULLIN on 18/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNROwnedAppliance : BNRAppliance
@property (readonly) NSSet *ownerNames;
// The designated initializer
-(instancetype) initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
-(void)addOwnerName:(NSString *)n;
-(void)removeOwnerName:(NSString *)n;

@end

NS_ASSUME_NONNULL_END
