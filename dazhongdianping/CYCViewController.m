//
//  CYCViewController.m
//  dazhongdianping
//
//  Created by apple5 on 15-1-14.
//  Copyright (c) 2015年 CYCON. All rights reserved.
//

#import "CYCViewController.h"
#import "MHTabBarController.h"
#import "CYCFirstViewController.h"
#import "CYCSecondViewController.h"
#import "CYCThirdViewController.h"
@interface CYCViewController ()
@property (nonatomic , strong)MHTabBarController *tabBar;
@end

@implementation CYCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.tabBar = [[MHTabBarController alloc]init];
    self.tabBar.delegate = self;
    CYCFirstViewController *first = [[CYCFirstViewController alloc]init];
    first.title = @"全部分类";
    CYCSecondViewController *second = [[CYCSecondViewController alloc]init];
    second.title = @"全部地区";
    CYCThirdViewController *third = [[CYCThirdViewController alloc]init];
    third.title = @"智能排序";
    self.tabBar.viewControllers = @[first,second,third];
    [self.view addSubview:self.tabBar.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
