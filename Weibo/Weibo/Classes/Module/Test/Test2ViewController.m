//
//  Test2ViewController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "Test2ViewController.h"
#import "Test3ViewController.h"
#import "JDBarButtonItem.h"


@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.navigationItem.leftBarButtonItem = [JDBarButtonItem barButtonItemTarget:self action:@selector(back) image:@"navigationbar_back" highlightImage:@"navigationbar_back_highlighted"];
    self.navigationItem.rightBarButtonItem = [JDBarButtonItem barButtonItemTarget:self action:@selector(more) image:@"navigationbar_more" highlightImage:@"navigationbar_more_highligted"];
}

- (void)back {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)more {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    Test3ViewController *test3 = [[Test3ViewController alloc] init];
    test3.title = @"测试界面3";
    [self.navigationController pushViewController:test3 animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
