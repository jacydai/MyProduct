//
//  UIButton+TitleView.m
//  Weibo
//
//  Created by jacy on 10/10/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "UIButton+TitleView.h"
#import "UIView+Frame.h"

@implementation UIButton (TitleView)

+ (instancetype)buttonWithTarget:(id)target  action:(SEL)action title:(NSString *)title  image:(NSString *)image bgImage:(NSString *)bgImage {

    // 设置导航标题
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    titleButton.width = 120;
    titleButton.height = 34;
    [titleButton setTitle:title forState:UIControlStateNormal];
    [titleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [titleButton setBackgroundImage:[UIImage  imageNamed:bgImage] forState:UIControlStateHighlighted];
    
    // 设置字体的大小
    titleButton.titleLabel.font = [UIFont systemFontOfSize:17];
    [titleButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    
    // 调整图片和文字的位置
    titleButton.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 50);
    titleButton.imageEdgeInsets = UIEdgeInsetsMake(0, 50, 0, 0);
    
    [titleButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return titleButton;
}

@end
