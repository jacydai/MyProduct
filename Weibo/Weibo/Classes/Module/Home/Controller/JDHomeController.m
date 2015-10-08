//
//  JDHomeController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDHomeController.h"
#import "UIBarButtonItem+Extension.h"

@implementation JDHomeController
- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemTarget:self action:@selector(friendsSearch) image:@"navigationbar_friendsearch" highlightImage:@"navigationbar_friendsearch_highlighted"];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemTarget:self action:@selector(scan) image:@"navigationbar_pop" highlightImage:@"navigationbar_pop_highlighted"];
}

- (void)friendsSearch {

    NSLog(@"frinedsSearch");
}
- (void)scan {

    NSLog(@"scan");
}
@end
