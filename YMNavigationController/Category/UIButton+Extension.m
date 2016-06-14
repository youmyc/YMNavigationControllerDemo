//
//  UIButton+Extension.m
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import "UIButton+Extension.h"
#import "UIView+Extension.h"

@implementation UIButton (Extension)
+ (instancetype)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image hightImage:(NSString *)hightImage{
    // 设置右边的更多按钮
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 设置图片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    
    // 设置尺寸
    btn.size = btn.currentBackgroundImage.size;
    
    return btn;
}


+ (instancetype)itemWithTarget:(id)target
                        action:(SEL)action
                         title:(NSString *)title
                    titleColor:(UIColor *)color
                      fontSize:(CGFloat)fontSize{
    // 设置右边的更多按钮
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 设置按钮属性
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    // 设置尺寸
    btn.width = [title sizeWithAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]}].width;
    
    
    return btn;
}

@end
