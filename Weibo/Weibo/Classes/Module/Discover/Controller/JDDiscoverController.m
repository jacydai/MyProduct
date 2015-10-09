//
//  JDDiscoverController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDDiscoverController.h"
#import "UIView+Frame.h"

#define SearchFiledMargin 20.0
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define SearchFiledHeight 32.0

@implementation JDDiscoverController

- (void)viewDidLoad {

    [super viewDidLoad];
//    UISearchBar *searchBar = [[UISearchBar alloc] init];
//    self.navigationItem.titleView = searchBar;
//    searchBar.placeholder = @"大家都在搜/名人微博";
//    searchBar.backgroundColor = [UIColor colorWithRed:249/ 255.0 green:249/ 255.0 blue:249/ 255.0 alpha:1.0];
//    searchBar.inputAccessoryView = [[UISwitch alloc] init];

    UITextField *searchBar = [[UITextField alloc] init];
    searchBar.frame = CGRectMake(0, 0, (ScreenWidth - 2 * SearchFiledMargin),SearchFiledHeight);
    // 设置搜索栏左侧的图片
//    searchBar.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
    // 直接创建出来的imageView控件没有大小，所以不显示
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
    imageView.width = SearchFiledHeight;
    imageView.height = SearchFiledHeight;
    imageView.contentMode = UIViewContentModeCenter;
    searchBar.leftView = imageView;
    searchBar.leftViewMode = UITextFieldViewModeAlways;
    searchBar.placeholder = @"大家都在搜/名人微博/热点微博";
    // 设置搜索框的背景图片 tile 切片
    [searchBar setBackground:[UIImage imageNamed:@"searchbar_textfield_background"]];
    // 设置导航栏搜索框
    self.navigationItem.titleView = searchBar;
}
@end
