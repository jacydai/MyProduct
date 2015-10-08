//
//  JDMessageController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "JDMessageController.h"
#import "TestViewController.h"

@implementation JDMessageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 注册cell
    [self.tableView registerClass:UITableViewCell.self forCellReuseIdentifier:@"messageCell"];
}

/// tableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return  20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"messageCell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"这是第%ld行消息",indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TestViewController *test = [[TestViewController alloc] init];
    test.title = @"测试界面";
    test.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:test animated:YES];
}
@end
