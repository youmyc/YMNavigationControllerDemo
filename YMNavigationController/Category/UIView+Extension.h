//
//  UIView+Extension.h
//  WeiBo
//
//  Created by youmy on 15/8/14.
//  Copyright (c) 2015年 youmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)
/** x坐标 */
@property (nonatomic, assign) CGFloat x;
/** y坐标 */
@property (nonatomic, assign) CGFloat y;
/** 中心x坐标 */
@property (nonatomic, assign) CGFloat centerX;
/** 中心y坐标 */
@property (nonatomic, assign) CGFloat centerY;
/** 宽度 */
@property (nonatomic, assign) CGFloat width;
/** 高度 */
@property (nonatomic, assign) CGFloat height;
/** 大小 */
@property (nonatomic, assign) CGSize size;
/** 原点 */
@property (nonatomic, assign) CGPoint origin;

/** 绘制边框 */
- (void)drawBorder;

/** 绘制边框+颜色 */
- (void)drawBorderWithColor:(UIColor *)color;

/** 绘制边框+圆弧 */
- (void)drawBorderWithCornerRadius:(CGFloat)radius;

/** 绘制边框+颜色+圆弧 */
- (void)drawBorderWithColor:(UIColor *)color radius:(CGFloat)radius;

/** 绘制边框+颜色+边框宽度+圆弧 */
- (void)drawBorderWithColor:(UIColor *)color borderWidth:(CGFloat)width radius:(CGFloat)radius;

/** 添加阴影 */
- (void)addShadow;
@end
