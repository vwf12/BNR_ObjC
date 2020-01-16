//
//  main.m
//  Stringz
//
//  Created by FARIT GATIATULLIN on 15/11/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str=[[NSMutableString alloc] init];
        for (int i=0;i<10;i++) {
            [str appendString:@"Aaron is cool! \n"];
        }
        
        //Declare a pointer to an NSError object, but do not instntiate it.
        //The NSError instance will only be created if there is, in fact, an error.
        
        NSError *error;
        
        //Pass the NSError pointer by reference to the NSString methid
        BOOL success=[str writeToFile:@"/too/bad.txt"
                           atomically:YES
                             encoding:NSUTF8StringEncoding
                                error:&error];
       //Test the returned BOOL, and query the NSError if the file created
        if (success) {
            NSLog(@"Done writing /tmp/cool.txt");
        }
        else {
            NSLog(@"writitng failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
