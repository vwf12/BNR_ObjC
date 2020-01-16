//
//  BNRLogger.m
//  Callbacks
//
//  Created by FARIT GATIATULLIN on 28/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import "BNRLogger.h"

@interface BNRLogger ()
-(void)zoneChange:(NSNotification *)note;
@property (nonatomic) NSMutableData *downloadedData;
@end

@implementation BNRLogger

-(void)zoneChange:(NSNotification *)note
{
    NSLog(@"The systems time zone has changed!");
}
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", data.length);
    
    // Create a mutable data if it does not already exist.
    if (!self.downloadedData) {
        self.downloadedData = [[NSMutableData alloc] init];
    }
    
    // Append the new data to our existing pile of data.
    [self.downloadedData appendData:data];
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error
{
    // Normally, as in the Writing Files chapter, we would check the data
    // instead of the error to know if there was a problem,
    // but in this case you can't know if the data you've collected
    // is complete without checking for an error.
    if(!error) {
        // We have all the data!
        NSLog(@"Finished! Total size is %lu bytes.", self.downloadedData.length);
        NSString *str = [[NSString alloc] initWithData:self.downloadedData
                                              encoding:NSUTF8StringEncoding];
        NSLog(@"Here you go!\n%@",str);
        NSLog(@"Printed %lu characters",str.length);
        
        
    } else {
        NSLog(@"Encountered an error: \(error)");
        self.downloadedData = nil;
    }
}

-(NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter=nil;
    if (!dateFormatter)
    {
        dateFormatter=[[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}
-(void) updateLastTime:(NSTimer *)t
{
    NSDate *now=[NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}
@end
