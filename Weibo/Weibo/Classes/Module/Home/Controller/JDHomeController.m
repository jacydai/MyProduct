//
//  JDHomeController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDHomeController.h"
#import "UIBarButtonItem+Extension.h"
#import "UIView+Frame.h"
#import "UIButton+TitleView.h"
#import "JDTableViewController.h"
#import "JDDropdownMenu.h"



@implementation JDHomeController
- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置导航栏的
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemTarget:self action:@selector(friendsSearch) image:@"navigationbar_friendsearch" highlightImage:@"navigationbar_friendsearch_highlighted"];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemTarget:self action:@selector(scan) image:@"navigationbar_pop" highlightImage:@"navigationbar_pop_highlighted"];
    
    // 设置导航标题
//    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    titleButton.width = 120;
//    titleButton.height = 34;
//    [titleButton setTitle:@"首页" forState:UIControlStateNormal];
//    [titleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [titleButton setBackgroundImage:[UIImage  imageNamed:@"timeline_card_bottom_line_highlighted"] forState:UIControlStateHighlighted];
//
//    // 设置字体的大小
//    titleButton.titleLabel.font = [UIFont systemFontOfSize:17];
//    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
//    
//    // 调整图片和文字的位置
//    titleButton.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 50);
//    titleButton.imageEdgeInsets = UIEdgeInsetsMake(0, 50, 0, 0);
//    
//    [titleButton addTarget:self action:@selector(titleButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    UIButton *titleButton = [UIButton buttonWithTarget:self action:@selector(titleButtonClicked) title:@"首页" image:@"navigationbar_arrow_down" bgImage:@"timeline_card_bottom_line_highlighted"];

    self.navigationItem.titleView = titleButton;
    
}
- (void)titleButtonClicked {

    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];

    // 定义一个遮盖
    UIView *coverView = [[UIView alloc] init];
    [window addSubview:coverView];
    coverView.frame = [UIScreen mainScreen].bounds;
    
    CGFloat width = 217;
    UIView *dropdownView = [[UIView alloc] init];
    dropdownView.x = ([UIScreen mainScreen].bounds.size.width - width) * 0.5;
    dropdownView.y = 60;
    dropdownView.width = width;
    dropdownView.height = 300;
    
    // 添加背景图片
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:dropdownView.bounds];
    bgImageView.image = [UIImage imageNamed:@"popover_background"];
    [dropdownView addSubview:bgImageView];
    bgImageView.userInteractionEnabled = YES;
    
    JDTableViewController *subTableView = [[JDTableViewController alloc] init];
    subTableView.view.frame = bgImageView.bounds;
    [bgImageView addSubview:subTableView.view];
    
    // 添加图片
    [coverView addSubview:dropdownView];
    
    
}


- (void)friendsSearch {

    NSLog(@"frinedsSearch");
}
- (void)scan {

    NSLog(@"scan");
}
@end
