//
//  UIButton+Extension.h
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)
/**
 *  创建一个图片按钮
 *
 *  @param target     执行方法的对象
 *  @param action     点击item后调用的方法
 *  @param image      图片
 *  @param hightImage 高亮图片
 *
 *  @return 创建后的按钮
 */
+ (instancetype)itemWithTarget:(id)target
                        action:(SEL)action
                         image:(NSString *)image
                    hightImage:(NSString *)hightImage;

/**
 *  创建一个文字按钮
 *
 *  @param target     执行方法的对象
 *  @param action     点击item后调用的方法
 *  @param title      标题
 *  @param titleColor 标题颜色
 *  @param fontSize   标题文字大小
 *
 *  @return 创建后的按钮
 */
+ (instancetype)itemWithTarget:(id)target
                        action:(SEL)action
                         title:(NSString *)title
                    titleColor:(UIColor *)color
                      fontSize:(CGFloat)fontSize;

@end
