//
//  UIBarButtonItem+Extension.h
//  Weibo
//
//  Created by jacy on 10/8/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
/// 自定义barButonItem
///
/// @param target    target
/// @param action    action
/// @param image     正常图片
/// @param highImage 高亮图片
///
/// @return barButtonItem
+ (instancetype)barButtonItemTarget:(id)target action:(SEL)action image:(NSString *)image highlightImage:(NSString *)highImage;
@end
