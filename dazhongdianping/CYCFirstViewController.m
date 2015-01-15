//
//  CYCFirstViewController.m
//  dazhongdianping
//
//  Created by apple5 on 15-1-15.
//  Copyright (c) 2015年 CYCON. All rights reserved.
//

#import "CYCFirstViewController.h"
@interface CYCFirstViewController ()

@end

@implementation CYCFirstViewController

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
    NSString *path = [[NSBundle mainBundle]pathForResource:@"category" ofType:@"plist"];
    self.dataDict = [NSMutableDictionary dictionaryWithContentsOfFile:path];
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
