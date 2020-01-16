//
//  main.m
//  17.1 Groceries
//
//  Created by FARIT GATIATULLIN on 23/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *nameString=[NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *wordsString=[NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *names=[nameString componentsSeparatedByString:@"\n"];
        NSArray *words=[wordsString componentsSeparatedByString:@"\n"];
        
        NSMutableArray *lcnames=[NSMutableArray array];
        
        for (NSString *n in names) {
            NSString *lcString = [n lowercaseString];
            [lcnames addObject:lcString];
            //NSString *q = [names firstObjectCommonWithArray:words];
            
            //for (NSString *w in words) {
            //NSRange r=[n rangeOfString:w options:NSCaseInsensitiveSearch];
            //if (r.location != NSNotFound) {
                //NSLog(@"%@", n);
            }
        NSUInteger lccount=[lcnames count];
        NSLog(@"count:%lu", lccount);
        
        for (NSString *n in lcnames) {
            if ([words containsObject:n])
                NSLog(@"%@", n);
        }
        }
        //}
        
//        //Creating things to buy
//        NSString *first=@"Loaf of bread";
//        NSString *second=@"Container of milk";
//        NSString *third=@"Stick of butter";
//
//        NSMutableArray *shoppingList=[NSMutableArray array]; //create array
//        [shoppingList addObject:first];
//        [shoppingList addObject:second];
//        [shoppingList addObject:third];
//
//        //Printing grocery list
//        NSLog(@"My grocery list is: ");
//        for (NSString *d in shoppingList) {
//            NSLog(@"%@ ", d);
//        }
    
    return 0;
}
