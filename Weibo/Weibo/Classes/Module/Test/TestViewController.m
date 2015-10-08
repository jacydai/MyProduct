//
//  TestViewController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "TestViewController.h"
#import "Test2ViewController.h"
#import "JDBarButtonItem.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor magentaColor];
    // 设置导航栏
//    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [leftButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
//    [leftButton setImage:[UIImage imageNamed:@"navigationbar_back" ] forState:UIControlStateNormal];
//    [leftButton setImage:[UIImage imageNamed:@"navigationbar_back_highlighted"] forState:UIControlStateHighlighted];
//    // 添加的view不显示，view没有大小
////    leftButton.frame = CGRectMake(0, 0, 100, 100);
////    [leftButton sizeToFit];
//    // 在视图中，一般有了left，right，center等关键字的时候，此时若在设置frame的x，y，大部分是么有作用的，可以直接考虑size
//    leftButton.size = leftButton.currentImage.size;
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
//    
//    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [rightButton addTarget:self action:@selector(more) forControlEvents:UIControlEventTouchUpInside];
//    [rightButton setImage:[UIImage imageNamed:@"navigationbar_more"] forState:UIControlStateNormal];
//    [rightButton setImage:[UIImage imageNamed:@"navigationbar_more_highlighted"] forState:UIControlStateHighlighted];
//    rightButton.size = rightButton.currentImage.size;
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.leftBarButtonItem = [JDBarButtonItem barButtonItemTarget:self action:@selector(back) image:@"navigationbar_back" highlightImage:@"navigationbar_back_highlighted"];
    self.navigationItem.rightBarButtonItem = [JDBarButtonItem barButtonItemTarget:self action:@selector(more) image:@"navigationbar_more" highlightImage:@"navigationbar_more_highligted"];
}
- (void)back {
    
    [self.navigationController popViewControllerAnimated:YES];
}- (void)more {

    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    Test2ViewController *test = [[Test2ViewController alloc] init];
    test.title = @"测试界面2";
    [self.navigationController pushViewController:test animated:YES];
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
