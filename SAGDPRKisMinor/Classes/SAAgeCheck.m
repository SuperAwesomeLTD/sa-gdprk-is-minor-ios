//
//  SAAgeCheck.m
//  SAGDPRKisMinor
//
//  Created by Guilherme Mota on 27/04/2018.
//

#import <Foundation/Foundation.h>

// get header
#import "SAAgeCheck.h"

#import "CommunicationCenter.h"

@interface SAAgeCheck ()

// the process
@property (nonatomic, strong) GetIsMinorProcess *isMinorProcess;

// state properties
@property (nonatomic, strong) NSString *url;

@end

@implementation SAAgeCheck

+ (instancetype) sdk {
    static SAAgeCheck *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id) init {
    if (self = [super init]) {
        _isMinorProcess = [[GetIsMinorProcess alloc] init];
    }
    return self;
}


- (void) getIsMinor:(NSString*) identifier :(GetIsMinorBlock)response {
    
    [_isMinorProcess executeWithIdentifier:identifier
                                          :response];
}


// MARK: setters & getters

- (NSString*) getURL {    
    return isMinorURL;
}

@end
