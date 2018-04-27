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

- (void) executeWithIdentifier :(NSString*) identifier :(GetIsMinorBlock) getIsMinorModel;

@end
