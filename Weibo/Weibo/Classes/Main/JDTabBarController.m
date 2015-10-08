//
//  JDTabBarController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDTabBarController.h"
#import "JDNavigationController.h"
#import "JDHomeController.h"
#import "JDMessageController.h"
#import "JDDiscoverController.h"
#import "JDProfileController.h"

@implementation JDTabBarController

- (void)viewDidLoad {

    [super viewDidLoad];
    // 设置tabBarItem 控制器
    JDHomeController *home = [[JDHomeController alloc] init];
    [self addChildController:home title:@"首页" image:@"tabbar_home" andSelectedImage:@"tabbar_home_highlighted"];

    JDMessageController *message = [[JDMessageController alloc] init];
    [self addChildController:message title:@"消息" image:@"tabbar_message_center" andSelectedImage:@"tabbar_message_center_highlighted"];
    
    JDDiscoverController *discover = [[JDDiscoverController alloc] init];
    [self addChildController:discover title:@"发现" image:@"tabbar_discover" andSelectedImage:@"tabbar_discover_highlighted"];
    
    JDProfileController *profile = [[JDProfileController alloc] init];
    [self addChildController:profile title:@"我" image:@"tabbar_profile" andSelectedImage:@"tabbar_profile_highlighted"];
}

/// 添加子控制器
///
/// @param childController 子控制器
/// @param title           tabBaritem标题和导航栏标题
/// @param image           image
/// @param selectedImage   选中图片
- (void)addChildController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image andSelectedImage:(NSString *)selectedImage{
    
    // 设置tabBarItem 控制器
    // childController.tabBarItem.title = title;
    // childController.navigationItem.title = title;
    // 对于控制器的tabbarItem 和 navigationItem 设置标题和对控制器设置标题是等价的
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    // 选中的图片，按照原来的样子显示，不要渲染成其他的颜色，比如说蓝色
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中的文字显示
    NSMutableDictionary *titleAttribute = [NSMutableDictionary dictionary];
    titleAttribute[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:titleAttribute forState:UIControlStateSelected];
    JDNavigationController *nav = [[JDNavigationController alloc] initWithRootViewController:childController];

    [self addChildViewController:nav];
}

@end
