//
//  ViewController.m
//  YMNavigationController
//
//  Created by youmy on 16/6/14.
//  Copyright © 2016年 youmy. All rights reserved.
//

#import "ViewController.h"
#import "YMNavigationView.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    YMNavigationView * navView =[[YMNavigationView alloc] init];
    navView.navTitle = @"ViewController";
    [self.view addSubview:navView];
    
    UIButton * btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)push{
    FirstViewController * firstVc = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:firstVc animated:YES];
}

@end
