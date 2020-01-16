//
//  NSData+Speakable.h
//  Spekable
//
//  Created by FARIT GATIATULLIN on 23/12/2019.
//  Copyright © 2019 vwf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Speakable)
-(NSString *) encodeAsSpeakableString;
+(NSData *)dataWithSpeakableString:(NSString *)s
                             error:(NSError **)e;

@end

NS_ASSUME_NONNULL_END
