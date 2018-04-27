//
//  GotIsMinorModel.m
//  SAGDPRKisMinor
//
//  Created by Guilherme Mota on 27/04/2018.
//

#import "GetIsMinorModel.h"

@implementation GetIsMinorModel

- (id) initWithJsonDictionary:(NSDictionary *)jsonDictionary {
    if (self = [super initWithJsonDictionary:jsonDictionary]) {
        
        _country = [jsonDictionary safeObjectForKey:@"country"];
        _age = [[jsonDictionary safeObjectForKey:@"age"] integerValue];
    }
    return self;
}

- (BOOL) isValid {
    return true;
}

- (NSDictionary*) dictionaryRepresentation {
    return @{
             @"country": nullSafe(_country),
             @"age": @(_age)
             };
}

@end
