//
//  NSData+Speakable.m
//  Spekable
//
//  Created by FARIT GATIATULLIN on 23/12/2019.
//  Copyright © 2019 vwf. All rights reserved.
//

#import "NSData+Speakable.h"

@implementation NSData (Speakable)

static unsigned char left = 224; //Маска 11100000 для разделения на левую и правую части байта

+ (NSArray *)brands
{
    return @[@"Camry", @"Nikon", @"Apple", @"Ford", @"Audi", @"Google", @"Nike", @"Amazon",
             @"Honda", @"Mazda", @"Buick", @"Fiat", @"Jeep", @"Lexus", @"Volvo", @"Fuji",
             @"Sony", @"Delta", @"Focus", @"Puma", @"Samsung", @"Tivo", @"Halo", @"Sting",
             @"Shrek", @"Avatar", @"Shell", @"Visa", @"Vogue", @"Twitter", @"Lego", @"Pepsi"];
}

- (NSString *)encodeAsSpeakableString
{
    NSMutableString *speakable = [[NSMutableString alloc] init];
    const unsigned char *data = [self bytes];
    if (data) {
        for (int i = 0; i < [self length]; i++) {
            unsigned char rightPart = data[i] & ~left; //правая часть для конвертации в слово, выделяем через побитовое 'И' с 00011111
            
            
            unsigned char leftPart = ((data[i] & left) >> 5) + 2; //три верхних бита (слева), прелбразуем в числовое значение +2
            
            if ([speakable length]) {
                [speakable appendString:@" "]; // пробел после слова перед цифрой
            }
            [speakable appendString:[NSString stringWithFormat:@"%d %@", leftPart, [NSData brands][rightPart]]]; //собираем всё в строку
        }
    }
    return speakable;
}

+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError **)e
{
    NSMutableData *data = [[NSMutableData alloc] init];
    NSArray *components = [s componentsSeparatedByString:@" "]; //массив из компонентов строки
    unsigned char value = 0;
    for (NSString *s in components) {
        unsigned char left = [s intValue];
        if (left) {
            value = (left - 2) << 5; // обрабатываем цифра
        } else {
            NSUInteger right = [[NSData brands] indexOfObject:s]; //обрабатываем слова
            if (right == NSNotFound) {
                if (e) {
                    NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Unable to parse"}; // ошибка при отсутствии слова в словаре
                    *e = [NSError errorWithDomain:@"SpeakableBytes" code:1 userInfo:userInfo];
                    return nil;
                }
            }
            value += right;
            [data appendBytes:&value length:1]; //cj,bhftv cnhjtr
        }
    }
    return data;
}

@end


