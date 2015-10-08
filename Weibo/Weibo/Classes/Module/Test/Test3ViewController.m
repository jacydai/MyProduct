//
//  Test3ViewController.m
//  Weibo
//
//  Created by jacy on 10/6/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "Test3ViewController.h"
#import "JDBarButtonItem.h"

@interface Test3ViewController ()

@end

@implementation Test3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];

    self.navigationItem.leftBarButtonItem = [JDBarButtonItem barButtonItemTarget:self action:@selector(back) image:@"navigationbar_back" highlightImage:@"navigationbar_back_highlighted"];
    self.navigationItem.rightBarButtonItem = [JDBarButtonItem barButtonItemTarget:self action:@selector(more) image:@"navigationbar_more" highlightImage:@"navigationbar_more_highligted"];
}

- (void)back {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)more {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
