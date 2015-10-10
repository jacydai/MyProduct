//
//  UIButton+TitleView.h
//  Weibo
//
//  Created by jacy on 10/10/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (TitleView)

///  定义button
///
///  @param target  点击的目标
///  @param action  点击后执行的方法
///  @param title   控件显示的文字
///  @param image   控件显示的图片
///  @param bgImage 控件高亮背景图片
///
///  @return        返回一个点击后弹出下拉菜单的控件
+ (instancetype)buttonWithTarget:(id)target  action:(SEL)action title:(NSString *)title  image:(NSString *)image bgImage:(NSString *)bgImage;

@end
