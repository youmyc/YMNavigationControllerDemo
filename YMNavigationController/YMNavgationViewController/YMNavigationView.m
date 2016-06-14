//
//  YMNavigationView.m
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import "YMNavigationView.h"
#import "UIButton+Extension.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface YMNavigationView ()
/** 导航栏标题视图 */
@property (nonatomic, strong) UIControl *navigationTitleView;
/** 导航栏标题 */
@property (nonatomic, strong) UILabel * titleLabel;

@end

@implementation YMNavigationView

- (instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH, 64);
        self.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        self.layer.shadowOpacity = 0.5;
        self.layer.shadowRadius = 1;
        self.layer.shadowOffset = CGSizeMake(1, 1);
    }
    return self;
}

/** 导航栏背景色 */
- (void)setNavBackgroundColor:(UIColor *)navBackgroundColor{
    self.backgroundColor = navBackgroundColor;
}

/** 设置导航栏标题 */
- (void)setNavTitle:(NSString *)navTitle{
    //根据文本计算宽度
    CGSize labelSize = [navTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18.0f]}];
    
    //初始化labelTitle并调整位置
    if (labelSize.width > SCREEN_WIDTH) {
        labelSize.width = SCREEN_WIDTH;
    }
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, labelSize.width, 42)];
    CGPoint center = self.center;
    center.y = center.y + 8;
    titleLabel.center = center;
    
    //文字基本设置
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.numberOfLines = 1;
    titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];
    titleLabel.text = navTitle;
    [self addSubview:titleLabel];
    
    self.titleLabel = titleLabel;
}

/**
 *  设置导航栏颜色
 */
- (void)setTitleColor:(UIColor *)titleColor{
    self.titleLabel.textColor = titleColor;
}

- (void)setLeftButton:(UIButton *)leftButton{
    //判断是文字按钮还是图片按钮，两者坐标稍有不同
    CGFloat leftButtonWidth = leftButton.frame.size.width;
    CGFloat leftButtonHeight = leftButton.frame.size.height;
    
    leftButton.frame = CGRectMake(10, self.frame.size.height / 2 - 8, leftButtonWidth, leftButtonHeight);
    
    [self addSubview:leftButton];
}

- (void)setRightButton:(UIButton *)rightButton{
    //判断是文字按钮还是图片按钮，两者坐标稍有不同
    CGFloat rightButtonWidth = rightButton.frame.size.width;
    CGFloat rightButtonHeight = rightButton.frame.size.height;
    
    rightButton.frame = CGRectMake(SCREEN_WIDTH - rightButton.frame.size.width - 10, self.frame.size.height / 2 - 8, rightButtonWidth, rightButtonHeight);
    
    [self addSubview:rightButton];
}

@end
