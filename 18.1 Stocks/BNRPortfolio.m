//
//  BNRPortfolio.m
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 06/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio ()
//{
//    NSMutableArray *self.holdings;
//}
@property (nonatomic) NSMutableArray *holdings;

@end

@implementation BNRPortfolio

//- (void)setHoldings:(NSArray *)h
//{
//    self.holdings = [h mutableCopy];
//}
//
//- (NSArray *)holdings
//{
//    return [self.holdings mutableCopy];
//}

- (void)addHoldings:(BNRStockHolding *)h
{
    // Is holdings nil?
    if (!self.holdings) {
        
        // Create the array
        self.holdings = [[NSMutableArray alloc] init];
    }
    //[self.holdings addObject:h];
    [self.holdings addObject:h];
}

- (void)addForeignHoldings:(BNRStockHolding *)hF
{
    // Is holdings nil?
    if (!self.holdings) {
        
        // Create the array
        self.holdings = [[NSMutableArray alloc] init];
    }
    //[self.holdings addObject:hF];
    [self.holdings addObject:hF];
}
- (void)removeHoldings:(unsigned int)i
{
    if (i < _holdings.count)
    {
        [_holdings removeObjectAtIndex:i];
    }
    else {
        NSLog(@"Index out of range or no holdings available");
    }
    
}
- (NSArray *)sortTop
{
    NSMutableArray *t=[self.holdings mutableCopy];
    
    NSSortDescriptor *top=[NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    
    [t sortUsingDescriptors:@[top]];
    
    
    return @[[t objectAtIndex:0], [t objectAtIndex:1], [t objectAtIndex:2]];
    
    
}

- (NSArray *)sortAbc
{
    NSMutableArray *abc=[self.holdings mutableCopy];
    
    NSSortDescriptor *a=[NSSortDescriptor sortDescriptorWithKey:@"ticker" ascending:YES];
    
    [abc sortUsingDescriptors:@[a]];
    
    return abc;
    
    
}

- (float)totalValue
{
    // Sum up total value of the StockHoldings
    float sum = 0;
    for (BNRStockHolding *h in self.holdings) {
        sum += [h valueInDollars];
    }
    return sum;
}

- (float)totalCost
{
    // Sum up total cost of the StockHoldings
    float sum = 0;
    for (BNRStockHolding *h in self.holdings) {
        sum += [h costInDollars];
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Total value is %.2f and total cost is %.2f>",
            self.totalValue, self.totalCost];
}

@end
