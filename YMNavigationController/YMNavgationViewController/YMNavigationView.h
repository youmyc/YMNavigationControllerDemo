//
//  YMNavigationView.h
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YMNavigationView : UIView
/** 导航栏标题 */
@property (nonatomic, copy) NSString *navTitle;
/** 导航栏标题颜色 */
@property (nonatomic, strong) UIColor *titleColor;
/** 导航栏背景色 */
@property (nonatomic, strong) UIColor *navBackgroundColor;
/** 导航栏左按钮 */
@property (nonatomic, strong) UIButton *leftButton;
/** 导航栏右按钮 */
@property (nonatomic, strong) UIButton *rightButton;
@end
