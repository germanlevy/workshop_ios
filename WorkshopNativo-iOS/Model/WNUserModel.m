//
//  UserModel.m
//  WorkshopNativo-iOS
//
//  Created by Roman Guarino on 27/05/2019.
//  Copyright © 2019 WorkshopNativo. All rights reserved.
//

#import "WNUserModel.h"

@interface WNUserModel ()
@property (nonatomic, copy) NSString *user;
@end

@implementation WNUserModel

- (instancetype) initWithUserName:(NSString *)user {
    self = [super init];
    if(self) {
        _user = user;
    }
    return self;
}

- (NSString *) user {
    return _user;
}

@end
