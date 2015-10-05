//
//  AppDelegate.m
//  Weibo
//
//  Created by jacy on 10/5/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 设置窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    // tabBarController
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    self.window.rootViewController = tabVC;
    
    // 设置tabBarItem 控制器
    UIViewController *home = [[UIViewController alloc] init];
    home.view.backgroundColor = [UIColor yellowColor];
//    home.tabBarItem.title = @"首页";
//    home.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
//    // 选中的图片，按照原来的样子显示，不要渲染成其他的颜色，比如说蓝色
//    home.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_home_highlighted"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    // 设置选中的文字显示
//    NSMutableDictionary *titleAttribute = [NSMutableDictionary dictionary];
//    titleAttribute[NSForegroundColorAttributeName] = [UIColor orangeColor];
//    [home.tabBarItem setTitleTextAttributes:titleAttribute forState:UIControlStateSelected];
    [self addChildController:home title:@"首页" image:@"tabbar_home" andSelectedImage:@"tabbar_home_highlighted"];
    
    UIViewController *message = [[UIViewController alloc] init];
    message.view.backgroundColor = [UIColor blueColor];
    [self addChildController:message title:@"消息" image:@"tabbar_message_center" andSelectedImage:@"tabbar_message_center_highlighted"];
    
    UIViewController *discover = [[UIViewController alloc] init];
    discover.view.backgroundColor = [UIColor purpleColor];

    [self addChildController:discover title:@"发现" image:@"tabbar_discover" andSelectedImage:@"tabbar_discover_highlighted"];
    
    UIViewController *profile = [[UIViewController alloc] init];
    profile.view.backgroundColor = [UIColor cyanColor];
    [self addChildController:profile title:@"我" image:@"tabbar_profile" andSelectedImage:@"tabbar_profile_highlighted"];
    // 添加到tabBar
    [tabVC addChildViewController:home];
    [tabVC addChildViewController:message];
    [tabVC addChildViewController:discover];
    [tabVC addChildViewController:profile];
    

    return YES;
}
- (void)addChildController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image andSelectedImage:(NSString *)selectedImage{

    // 设置tabBarItem 控制器
    childController.tabBarItem.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    // 选中的图片，按照原来的样子显示，不要渲染成其他的颜色，比如说蓝色
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中的文字显示
    NSMutableDictionary *titleAttribute = [NSMutableDictionary dictionary];
    titleAttribute[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:titleAttribute forState:UIControlStateSelected];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
