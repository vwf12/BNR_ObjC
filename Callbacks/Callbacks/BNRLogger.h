//
//  BNRLogger.h
//  Callbacks
//
//  Created by FARIT GATIATULLIN on 28/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject <NSURLSessionDelegate, NSURLSessionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;
-(NSString *) lastTimeString;
-(void)updateLastTime:(NSTimer *)t;

@end

NS_ASSUME_NONNULL_END
