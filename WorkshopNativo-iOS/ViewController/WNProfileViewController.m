//
//  WNProfileViewController.m
//  WorkshopNativo-iOS
//
//  Created by Roman Guarino on 27/05/2019.
//  Copyright © 2019 WorkshopNativo. All rights reserved.
//

#import "WNProfileViewController.h"
#import "WNUserModel.h"

@interface WNProfileViewController ()

@property (nonatomic, strong) WNUserModel *userModel;
@property (weak, nonatomic) IBOutlet UILabel *lblWelcome;
@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;

@end

@implementation WNProfileViewController

- (instancetype) initWithModel:(WNUserModel *) model {
    self = [super init];
    if(self){
        _userModel = model;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationItem setTitle:@"Perfíl"];
}

- (void)setupView {
    dispatch_async(dispatch_get_global_queue(0,0), ^{
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://static.lamusica.com/wp-content/uploads/sites/16/2017/07/emoji_update_2017_1.png"]];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imgProfile.image = [UIImage imageWithData:data];
        });
    });
    self.lblWelcome.text = [self.lblWelcome.text stringByAppendingString:self.userModel.user];
}

@end
