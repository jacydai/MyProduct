//
//  Test2ViewController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "Test2ViewController.h"
#import "Test3ViewController.h"



@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    Test3ViewController *test3 = [[Test3ViewController alloc] init];
    test3.title = @"测试界面3";
    [self.navigationController pushViewController:test3 animated:YES];
}

@end
