//
//  main.m
//  Constants
//
//  Created by FARIT GATIATULLIN on 13/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here=[NSLocale currentLocale];
        NSString *currency=[here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}
