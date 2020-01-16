//
//  main.m
//  Appliances
//
//  Created by FARIT GATIATULLIN on 18/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a=[[BNRAppliance alloc]init];
        NSLog(@"a is %@", a);
        //[a setProductName:@"Washing machine"];
        [a setValue:@"Washing machine" forKey:@"productName"];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"Voltage"];
        NSLog(@"a is %@", a);
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
    }
    return 0;
}
