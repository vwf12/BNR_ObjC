//
//  spaceCount.m
//  spaceCountVwf
//
//  Created by FARIT GATIATULLIN on 23/12/2019.
//  Copyright © 2019 vwf. All rights reserved.
//

#import "spaceCount.h"

@implementation spaceCount
-(id)spaceCount
{
    NSString *sent=self;
    NSUInteger count=[self length];
    int sum=0;
    for (int i=0;i<count;i++) {
        if (self[i]=='0x20'){
            sum++;
        }
    }
    
    
}

@end
