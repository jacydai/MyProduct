//
//  JDProfileController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDProfileController.h"
#import "TestViewController.h"

@implementation JDProfileController

- (void)viewDidLoad {

    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
}

- (void)setting {
 
    TestViewController *test = [[TestViewController alloc] init];
    test.title = @"设置界面";
    [self.navigationController pushViewController:test animated:YES];
    
}
@end
