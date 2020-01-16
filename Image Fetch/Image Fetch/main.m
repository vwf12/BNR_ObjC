//
//  main.m
//  Image Fetch
//
//  Created by FARIT GATIATULLIN on 18/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url=[NSURL URLWithString:
                    @"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        NSError *error=nil;
        //NSData *data=[NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        //NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *[error ]);
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        NSURLSessionDataTask *task = [[NSURLSession sharedSession]
          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            NSLog(@"The file is %lu bytes", (unsigned long)[data length]);

            BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&error];

            if (written) {
                NSLog(@"Success");
            } else {
                NSLog(@"In completionHandler: %@ error: %@", response, error);
                NSLog(@"write failed: %@", [error localizedDescription]);
            }
             
             // Read downoaded file from file system
             error = nil;
             NSData *readData = [[NSData alloc] initWithContentsOfFile:@"/tmp/google.png"
                                                               options:1 error:&error];
             if (!readData) {
                 NSLog(@"read failed: %@", [error localizedDescription]);
             } else {
                 NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
             }
        }];
                                       [task resume];
        [runLoop run];
        
//        if (!data)
//        {
//            NSLog(@"fetch failed: %@", [error localizedDescription]);
//            return 1;
//        }
//        NSLog(@"The file is %lu bytes", (unsigned long) [data length]);
//        BOOL written=[data writeToFile:@"/tmp/google.png"
//                      options:NSDataWritingAtomic
//                                 error:&error];
//        if (!written) {
//            NSLog(@"write failed: %@", [error localizedDescription]);
//        }
//        NSLog(@"Success!");
        
        //NSData *readData=[NSData dataWithContentsOfFile:@"/tmp/google.png"];
        //NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
    }
    return 0;
}
