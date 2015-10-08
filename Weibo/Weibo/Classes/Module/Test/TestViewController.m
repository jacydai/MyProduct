//
//  TestViewController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "TestViewController.h"
#import "Test2ViewController.h"
#import "JDNavigationController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor magentaColor];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    Test2ViewController *test = [[Test2ViewController alloc] init];
    test.title = @"测试界面2";
    [self.navigationController pushViewController:test animated:YES];
}


@end
