//
//  SecondViewController.m
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import "SecondViewController.h"
#import "YMNavigationView.h"

@implementation SecondViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    YMNavigationView * navView =[[YMNavigationView alloc] init];
    navView.navTitle = @"SecondViewController";
    [self.view addSubview:navView];
    
    UIButton * btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"PopToRoot" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(PopToRoot) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton * popBtn = [[UIButton alloc] init];
    popBtn.frame = CGRectMake(100, 200, 100, 50);
    [popBtn setTitle:@"Pop" forState:UIControlStateNormal];
    [popBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [popBtn addTarget:self action:@selector(popBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popBtn];
}

- (void)PopToRoot{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)popBtn{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
