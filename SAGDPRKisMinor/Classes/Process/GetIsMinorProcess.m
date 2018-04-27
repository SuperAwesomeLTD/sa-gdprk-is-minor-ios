//
//  GetIsMinorProcess.m
//  SAGDPRKisMinor
//
//  Created by Guilherme Mota on 27/04/2018.
//

#import "GetIsMinorProcess.h"
#import "GetIsMinorModel.h"

@interface GetIsMinorProcess ()
@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, strong) GetIsMinorBlock getIsMinorModel;
@end

@implementation GetIsMinorProcess

- (NSString*) getEndpoint {
    return [NSString stringWithFormat:@"v1/countries/child-age?identifier=/%@", _identifier];
}

- (HTTP_METHOD) getMethod {
    return GET;
}

- (void) successWithStatus:(NSInteger)status andPayload:(NSString *)payload andSuccess:(BOOL)success {
    if (!success) {
        _getIsMinorModel(nil);
    } else {
        if ((status == 200 || status == 204) && payload != NULL) {
            GetIsMinorModel *model = [[GetIsMinorModel alloc] initWithJsonString:payload];
            _getIsMinorModel(model);
        }
        else {
            _getIsMinorModel(nil);
        }
    }
}

- (void) executeWithIdentifier:(NSString*)theIdentifier
                              :(GetIsMinorBlock)getIsMinorModel {
    _identifier = theIdentifier;
    _getIsMinorModel = getIsMinorModel ? getIsMinorModel : ^(GetIsMinorModel*user){};
    [super execute];
}

@end
