//
//  main.m
//  Stockz
//
//  Created by FARIT GATIATULLIN on 03/12/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks=[[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock;
        
        stock=[NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock=[NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        
        id objects[] = {@"Hello, World!", @42 };
        NSUInteger count = sizeof(objects) / sizeof(id);
        NSArray *array = [NSArray arrayWithObjects:objects
                                             count:count];
        
        [stock setObject:[NSArray arrayWithObjects:objects
                                             count:count] forKey:@"array"];
        [stocks addObject:array];
        
        NSString *string=@"Parampampam";
        [stocks addObject:string];
        
        NSData *data=[NSData dataWithContentsOfFile:@"/private/etc/aliases"];
        [stocks addObject:data];
        
        NSDate *date=[NSDate date];
        [stocks addObject:date];
        
        NSNumber *floatt=[NSNumber numberWithFloat:454.565];
        [stocks addObject:floatt];
        
        NSNumber *inte=[NSNumber numberWithFloat:5456];
        [stocks addObject:inte];
        
        NSNumber *boo=[NSNumber numberWithBool:YES];
        [stocks addObject:boo];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        NSArray *stockList=[NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}
