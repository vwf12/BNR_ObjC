//
//  BNRPortfolio.h
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 06/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
NS_ASSUME_NONNULL_BEGIN
@class BNRStockHolding;
@interface BNRPortfolio : BNRForeignStockHolding

//{
//    NSMutableArray *_holdings;
//}

//@property (nonatomic, copy) NSArray *holdings;
- (float)totalValue;
- (float)totalCost;
- (void)addHoldings:(BNRStockHolding *)h;
- (NSArray *)sortTop;
- (NSArray *)sortAbc;
- (void)removeHoldings:(unsigned int)i;
- (void)addForeignHoldings:(BNRStockHolding *)hF;

@end

NS_ASSUME_NONNULL_END
