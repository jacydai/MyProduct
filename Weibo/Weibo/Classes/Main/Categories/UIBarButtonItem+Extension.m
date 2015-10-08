//
//  UIBarButtonItem+Extension.m
//  Weibo
//
//  Created by jacy on 10/8/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Frame.h"

@implementation UIBarButtonItem (Extension)

+ (instancetype)barButtonItemTarget:(id)target action:(SEL)action image:(NSString *)image highlightImage:(NSString *)highImage {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:image ] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentImage.size;
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
