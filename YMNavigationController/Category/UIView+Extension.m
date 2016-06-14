//
//  UIView+Extension.m
//  WeiBo
//
//  Created by youmy on 15/8/14.
//  Copyright (c) 2015年 youmy. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y{
    return self.frame.origin.y;
}

- (CGFloat)centerX{
    CGPoint center = self.center;
    return center.x;
}

- (void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerY{
    CGPoint center = self.center;
    return center.y;
}

- (void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin{
    return self.frame.origin;
}

- (void)drawBorder{
    self.layer.borderColor = [UIColor colorWithWhite:0.7 alpha:0.5].CGColor;
    self.layer.borderWidth = 0.5;
}

- (void)drawBorderWithColor:(UIColor *)color{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 0.5;
}

- (void)drawBorderWithCornerRadius:(CGFloat)radius{
    self.layer.cornerRadius = radius;
}

- (void)drawBorderWithColor:(UIColor *)color radius:(CGFloat)radius{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 0.5;
    self.layer.cornerRadius = radius;
}

- (void)drawBorderWithColor:(UIColor *)color borderWidth:(CGFloat)width radius:(CGFloat)radius{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.layer.cornerRadius = radius;
}

- (void)addShadow{
    self.layer.shadowColor = [UIColor redColor].CGColor;
    //    if (view == _SGUserView) {
    //        view.layer.shadowOffset = CGSizeMake(0, 0);
    //        view.layer.shadowOpacity = 0.7f;
    //        view.layer.shadowRadius = 0.5f;
    //        return;
    //    }
    self.layer.shadowOffset = CGSizeMake(10, 1);
    self.layer.shadowOpacity = 2;
    self.layer.shadowRadius = 2;
}
@end
