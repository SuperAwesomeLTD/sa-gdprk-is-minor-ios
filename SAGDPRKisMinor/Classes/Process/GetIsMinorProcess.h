//
//  GetIsMinorProcess.h
//  SAGDPRKisMinor
//
//  Created by Guilherme Mota on 27/04/2018.
//

#import "Service.h"
#import "GetIsMinorModel.h"

typedef void (^GetIsMinorBlock)(GetIsMinorModel* model);

@interface GetIsMinorProcess : Service

- (void) executeWithDateOfBirth: (NSString*) dateOfBirth
                               : (NSString*) bundleId
                               : (GetIsMinorBlock) getIsMinorModel;

@end
