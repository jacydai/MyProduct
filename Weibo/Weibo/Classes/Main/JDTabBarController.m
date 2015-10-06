//
//  JDTabBarController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDTabBarController.h"

@implementation JDTabBarController

- (void)viewDidLoad {

    [super viewDidLoad];
    // 设置tabBarItem 控制器
    UIViewController *home = [[UIViewController alloc] init];
    home.view.backgroundColor = [UIColor yellowColor];
    [self addChildController:home title:@"首页" image:@"tabbar_home" andSelectedImage:@"tabbar_home_highlighted"];
    UINavigationController *navHome = [[UINavigationController alloc] initWithRootViewController:home];
    
    UIViewController *message = [[UIViewController alloc] init];
    message.view.backgroundColor = [UIColor blueColor];
    [self addChildController:message title:@"消息" image:@"tabbar_message_center" andSelectedImage:@"tabbar_message_center_highlighted"];
    UINavigationController *navMessage = [[UINavigationController alloc] initWithRootViewController:message];
    
    UIViewController *discover = [[UIViewController alloc] init];
    discover.view.backgroundColor = [UIColor purpleColor];
    [self addChildController:discover title:@"发现" image:@"tabbar_discover" andSelectedImage:@"tabbar_discover_highlighted"];
    UINavigationController *navDiscover = [[UINavigationController alloc] initWithRootViewController:discover];

    UIViewController *profile = [[UIViewController alloc] init];
    profile.view.backgroundColor = [UIColor cyanColor];
    [self addChildController:profile title:@"我" image:@"tabbar_profile" andSelectedImage:@"tabbar_profile_highlighted"];
    UINavigationController *navProfile = [[UINavigationController alloc] initWithRootViewController:profile];
    // 添加控制器到tabBar
    [self addChildViewController:navHome];
    [self addChildViewController:navMessage];
    [self addChildViewController:navDiscover];
    [self addChildViewController:navProfile];
    
}

- (void)addChildController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image andSelectedImage:(NSString *)selectedImage{
    
    // 设置tabBarItem 控制器
//    childController.tabBarItem.title = title;
//    childController.navigationItem.title = title;
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    // 选中的图片，按照原来的样子显示，不要渲染成其他的颜色，比如说蓝色
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中的文字显示
    NSMutableDictionary *titleAttribute = [NSMutableDictionary dictionary];
    titleAttribute[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:titleAttribute forState:UIControlStateSelected];
//    UINavigationController *nav = [[UINavigationController alloc] init];
}

@end
