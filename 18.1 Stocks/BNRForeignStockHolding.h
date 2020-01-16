//
//  BNRForeignStockHolding.h
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 31/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding


//  To multiply purchasePrice and currentPrice in local price by to get a price in US dollars
@property (nonatomic) float conversionRate;

@end

NS_ASSUME_NONNULL_END
