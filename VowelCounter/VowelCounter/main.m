//
//  main.m
//  VowelCounter
//
//  Created by FARIT GATIATULLIN on 20/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string=@"Hello World";
        NSLog(@"%@ has %d vowels", string, [string bnr_vowelCount]);
    }
    return 0;
}
