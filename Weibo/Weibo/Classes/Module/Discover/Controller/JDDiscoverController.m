//
//  JDDiscoverController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDDiscoverController.h"
#import "JDSearchBar.h"
#import "UIView+Frame.h"

@implementation JDDiscoverController

- (void)viewDidLoad {

    [super viewDidLoad];
    // 设置导航栏搜索框
    self.navigationItem.titleView = [JDSearchBar searchBar];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    [self.view.window endEditing:YES];
}
@end
