//
//  BNRStockHolding.m
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 30/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    float p = [self purchasedSharePrice];
    int n = [self numberOfShares];
    return p * n;
}

- (float)valueInDollars
{
    float c = [self currentSharePrice];
    int n = [self numberOfShares];
    return c * n;
}

- (NSString *)description
{
    //return [NSString stringWithFormat:@"You paid %.2f for %d shares in %@ (%@), valued at %.2f", self.costInDollars, self.numberOfShares, self.nameOfCompany, self.ticker, self.valueInDollars];
    return [NSString stringWithFormat:@"Company: %@ (%@) \r Cost:%.2f \r Shares: %d \r Total value: %.2f \r", self.nameOfCompany, self.ticker, self.costInDollars, self.numberOfShares, self.valueInDollars];
}

@end

