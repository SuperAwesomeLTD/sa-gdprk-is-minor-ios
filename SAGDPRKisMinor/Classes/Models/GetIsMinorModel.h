//
//  GotIsMinorModel.h
//  SAGDPRKisMinor
//
//  Created by Guilherme Mota on 27/04/2018.
//

#import <UIKit/UIKit.h>

#if defined(__has_include)
#if __has_include(<SAJsonParser/SAJsonParser.h>)
#import <SAJsonParser/SAJsonParser.h>
#else
#import "SAJsonParser.h"
#endif
#endif

#if defined(__has_include)
#if __has_include(<SAJsonParser/SABaseObject.h>)
#import <SAJsonParser/SABaseObject.h>
#else
#import "SABaseObject.h"
#endif
#endif

@interface GetIsMinorModel : SABaseObject <SASerializationProtocol, SADeserializationProtocol>

// country
@property (nonatomic, strong) NSString *country;

// age
@property (nonatomic, assign) NSInteger age;

@end
