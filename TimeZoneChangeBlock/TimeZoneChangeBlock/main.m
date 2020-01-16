//
//  main.m
//  Callbacks
//
//  Created by FARIT GATIATULLIN on 28/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger=[[BNRLogger alloc]init];
        
//        [[NSNotificationCenter defaultCenter]
//         addObserver:logger
//         selector:@selector(zoneChange:)
//         name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        [[NSNotificationCenter defaultCenter]
        addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil
        queue:nil
        usingBlock:^(NSNotification *note) {
            NSLog(@"The user's locale changed to: %@", [NSTimeZone localTimeZone]);
                                                         }];
        
        NSURL *url=[NSURL URLWithString:@"http://www.gutenberg.org/files/205/205-0.txt"];
        
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config delegate:logger delegateQueue:nil];
        
        NSURLSessionTask *task = [session dataTaskWithRequest:request];
        
        [task resume];
        //__unused NSURLConnection *fetchConn=[[NSURLConnection alloc]initWithRequest:request delegate:logger startImmediately:YES];
        __unused NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:2.0
                                                                 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
