//
//  UserModel.h
//  WorkshopNativo-iOS
//
//  Created by Roman Guarino on 27/05/2019.
//  Copyright © 2019 WorkshopNativo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WNUserModel : NSObject

-(instancetype) initWithUserName:(NSString *)user;
- (NSString *) user;

@end
