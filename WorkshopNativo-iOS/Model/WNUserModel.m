//
//  UserModel.m
//  WorkshopNativo-iOS
//
//  Created by Roman Guarino on 27/05/2019.
//  Copyright © 2019 WorkshopNativo. All rights reserved.
//

#import "WNUserModel.h"

@implementation WNUserModel

- (instancetype)initFromDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(self) {
        _user = [dictionary valueForKey:@"user"];
    }
    return self;
}

@end
