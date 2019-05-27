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
    _lblWelcome.text = [_lblWelcome.text stringByAppendingString:_userModel.user];
}


@end
