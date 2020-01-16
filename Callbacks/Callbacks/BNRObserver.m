//
//  BNRObserver.m
//  Callbacks
//
//  Created by FARIT GATIATULLIN on 19/12/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

-(void)observeValueForKeyPath:(NSString *)keyPath
                            ofObject:(id)object
                            change:(NSDictionary *)change
                            context:(void *)context
{
    NSString *oldValue=[change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue=[change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observer: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue);
}


@end
