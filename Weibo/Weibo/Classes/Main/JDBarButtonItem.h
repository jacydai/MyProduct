//
//  JDBarButtonItem.h
//  Weibo
//
//  Created by jacy on 10/8/15.
//  Copyright © 2015 jacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDBarButtonItem : UIBarButtonItem
+ (instancetype)barButtonItemTarget:(id)target action:(SEL)action image:(NSString *)image highlightImage:(NSString *)highImage;
@end
