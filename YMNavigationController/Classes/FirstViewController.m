//
//  FirstViewController.m
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import "FirstViewController.h"
#import "YMNavigationView.h"
#import "SecondViewController.h"

@implementation FirstViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    YMNavigationView * navView =[[YMNavigationView alloc] init];
    navView.navTitle = @"FirstViewController";
    [self.view addSubview:navView];
    
    UIButton * btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton * popBtn = [[UIButton alloc] init];
    popBtn.frame = CGRectMake(100, 200, 100, 50);
    [popBtn setTitle:@"Pop" forState:UIControlStateNormal];
    [popBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [popBtn addTarget:self action:@selector(popBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popBtn];
}

- (void)push{
    SecondViewController * secondVc = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVc animated:YES];
}

- (void)popBtn{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
