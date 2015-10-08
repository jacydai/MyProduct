//
//  JDNavigationController.m
//  Weibo
//
//  Created by jacy on 10/8/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDNavigationController.h"
#import "UIBarButtonItem+Extension.h"

@implementation JDNavigationController
+ (void)initialize {
    // 设置导航栏的主题
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttribute = [NSMutableDictionary dictionary];
    textAttribute[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAttribute[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:textAttribute forState:UIControlStateNormal];

    // 不能点击的主题
    NSMutableDictionary *disableAttribute = [NSMutableDictionary dictionary];
    disableAttribute[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    disableAttribute[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:disableAttribute forState:UIControlStateDisabled];

}
- (void)viewDidLoad {

    [super viewDidLoad];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {

    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemTarget:self action:@selector(back) image:@"navigationbar_back" highlightImage:@"navigationbar_back_highlighted"];
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemTarget:self action:@selector(more) image:@"navigationbar_more" highlightImage:@"navigationbar_more_highligted"];
    }
    
    [super pushViewController:viewController animated:YES];

    
}

- (void)back {

    [self popViewControllerAnimated:YES];
}
- (void)more {

    [self popToRootViewControllerAnimated:YES];
}
@end
