//
//  CYCViewControllerC.m
//  dazhongdianping
//
//  Created by tarena01 on 15/1/16.
//  Copyright (c) 2015年 CYCON. All rights reserved.
//

#import "CYCViewControllerC.h"
#import "MHTabBarController.h"
#import "CYCFirstViewController.h"
#import "CYCSecondViewController.h"
#import "CYCThirdViewController.h"
@interface CYCViewControllerC ()<MHTabBarControllerDelegate>
@property (strong, nonatomic) MHTabBarController  *tabBar;
@end

@implementation CYCViewControllerC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

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
    self.title = @"团购";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
