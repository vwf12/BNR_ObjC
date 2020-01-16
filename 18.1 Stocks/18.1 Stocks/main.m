//
//  main.m
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 30/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //NSMutableArray *stocks=[NSMutableArray array];
        BNRPortfolio *holdings = [[BNRPortfolio alloc] init];
        
        // Generate names for stocks and ticker labels
        NSArray *names = @[@"Aeroflot", @"Alrosa", @"Gazprom"];
        NSArray *ticker = @[@"ARF", @"ALR", @"GZP"];
        
        for (int i = 0; i < [names count]; i++) {
            BNRStockHolding *newStock = [[BNRStockHolding alloc] init];
            
            NSString *stockName = [names objectAtIndex:i];
            newStock.nameOfCompany = stockName;
            newStock.purchasedSharePrice = 2.30 + i * (arc4random() % 3);
            newStock.currentSharePrice = 4.50 + i * (arc4random() % 2);
            newStock.numberOfShares = 15 + i * (arc4random() % 4);
            newStock.ticker = [ticker objectAtIndex:i];
            
            [holdings addHoldings:newStock];
            NSLog(@"%@", newStock);
            
        }
        
        // Generate names for foreign stocks and ticker labels
        NSArray *fNames = @[@"Aeroflot-Foreign", @"Alrosa-Foreign", @"Gazprom-Foreign"];
        NSArray *fTickers = @[@"AERO-F", @"ALROSA-F", @"Gazprom-F"];
        
        for (int i = 0; i < [fNames count]; i++) {
            BNRForeignStockHolding *foreignStock = [[BNRForeignStockHolding alloc] init];
            
            NSString *foreignStockName = [fNames objectAtIndex:i];
            foreignStock.nameOfCompany = foreignStockName;
            foreignStock.purchasedSharePrice = 3.15 + i * (arc4random() % 3);
            foreignStock.currentSharePrice = 5.15 + i * (arc4random() % 2);
            foreignStock.numberOfShares = 10 + i * (arc4random() % 4);
            foreignStock.conversionRate = 0.50 + (0.15 * i);
            foreignStock.ticker = [fTickers objectAtIndex:i];
            
            [holdings addForeignHoldings:foreignStock];
            NSLog(@"%@", foreignStock);
        }
        
        NSLog(@"%@", holdings);
        
        [holdings removeHoldings:0];
//
//        // Show the portfolio info again to see if stock is removed
//        NSLog(@"%@", myStockPortfolio);
NSLog(@"%@", holdings);
//        // Remove stock
        [holdings removeHoldings:1];
NSLog(@"%@", holdings);
        NSLog(@"Top 3 most valuable holdings: %@", [holdings sortTop]);
        NSLog(@"Holdings alphabetically: %@", [holdings sortAbc]);
//        // Check portfolio again
//        NSLog(@"%@", myStockPortfolio);
//
//        // Remove stock
//        [myStockPortfolio removeStock:stockAAPL];
//
//        // Check portfolio again
//        NSLog(@"%@", myStockPortfolio);
//
//        // Remove stock
//        [myStockPortfolio removeStock:stockZNGA];
//
//        NSLog(@"%@", myStockPortfolio);
    }
    return 0;
}
