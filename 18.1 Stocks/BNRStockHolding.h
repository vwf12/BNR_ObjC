//
//  BNRStockHolding.h
//  18.1 Stocks
//
//  Created by FARIT GATIATULLIN on 30/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) NSString *nameOfCompany;
@property (nonatomic) float purchasedSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *ticker;

- (float)costInDollars;  // purchaseSharePrice * numberOfShares
- (float)valueInDollars;    // currentSharePrice * numberfShares

//
//@interface BNRStockHolding : NSObject
//
//{
//    float _puchaseSharePrice;
//    float _currentSharePrice;
//    int _numberOfShares;
//    NSString *_name;
//}
//-(float)puchaseSharePrice;
//-(void)setPuchaseSharePrice:(float)p;
//-(float)currentSharePrice;
//-(void)setCurrentSharePrice:(float)c;
//-(int)numberOfShares;
//-(void)setNumberOfShares:(int)n;
//-(void)addYourselfToArray;
//-(float)costInDollars; //puchaseSharePrice * numberOfShares
//-(float)valueInDollars; //currentSharePrice * numberOfShares
//-(NSString *)name;
//-(void)setName:(NSString *)m;


@end
