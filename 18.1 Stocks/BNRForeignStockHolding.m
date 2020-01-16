//
//  BNRForeignStockHolding.m
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 31/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding


- (float)valueInDollars
{
    float c = [self currentSharePrice]  * self.conversionRate;
    int n = [self numberOfShares];
    return c * n;
}

- (float)costInDollars
{
    float p = [self purchasedSharePrice] * self.conversionRate;
    int n = [self numberOfShares];
    return p * n;
}

- (NSString *)description
{
   // return [NSString stringWithFormat:@"You paid %.2f.Conv rate %.2f for %d shares in %@ (%@), valued at %.2f", self.costInDollars, self.conversionRate, self.numberOfShares, self.nameOfCompany, self.ticker, self.valueInDollars];
    return [NSString stringWithFormat:@"Company: %@ (%@) \r Cost:%.2f \r Shares: %d \r Total value: %.2f \r Conversion rate: %.2f", self.nameOfCompany, self.ticker, self.costInDollars, self.numberOfShares, self.valueInDollars, self.conversionRate];
}

@end
