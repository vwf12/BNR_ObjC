//
//  main.m
//  VowelMovement
//
//  Created by FARIT GATIATULLIN on 02/12/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create array of strings and a container for devowelized ones
        NSArray *originalStrings=@[@"Sauerkraut", @"Raygun", @"Big Nerd ranch", @"Missisippi"];
        NSLog(@"orignal strings: %@", originalStrings);
        NSMutableArray *devowelizedStrings=[NSMutableArray array];
        
        //Create a list of characters to be removed from the string
        NSArray *vowels=@[@"a", @"e", @"i", @"o", @"u"];
        
        //Declare the block variable
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        ArrayEnumerationBlock devowelizer;
        devowelizer=^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange=[string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            
            //Did I find a y?
            if (yRange.location!=NSNotFound) {
                *stop=YES; //prevent further operations
                return; //end this iteration
            }
            
            NSMutableString *newString=[NSMutableString stringWithString:string];
            
            //Iterate over the array of vowels, replacing occurences of each with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange=NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }; //end of block assigment
        
        //Iterate over array with block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
