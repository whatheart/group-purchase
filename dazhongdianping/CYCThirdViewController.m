//
//  CYCThirdViewController.m
//  dazhongdianping
//
//  Created by apple5 on 15-1-15.
//  Copyright (c) 2015年 CYCON. All rights reserved.
//

#import "CYCThirdViewController.h"

@interface CYCThirdViewController ()

@end

@implementation CYCThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.dataDict setObject:@[@"离我最近",@"好评优先"] forKey:self.title];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
