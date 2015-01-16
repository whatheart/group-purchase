//
//  CYCViewController.m
//  dazhongdianping
//
//  Created by apple5 on 15-1-14.
//  Copyright (c) 2015年 CYCON. All rights reserved.
//

#import "CYCViewController.h"
#import "CYCTabBarViewController.h"
@interface CYCViewController ()
@property (nonatomic , strong)CYCTabBarViewController *tabBar;
@property (strong, nonatomic) UIScrollView *scrollView;
@end

@implementation CYCViewController

- (void)leadingPage
{
    UIImage *image1 = [UIImage imageNamed:@"引导页－1.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"引导页－2.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"引导页－3.jpg"];
    UIImageView *iv1 = [[UIImageView alloc]initWithImage:image1];
    UIImageView *iv2 = [[UIImageView alloc]initWithImage:image2];
    UIImageView *iv3 = [[UIImageView alloc]initWithImage:image3];
    float w = self.view.bounds.size.width;
    float h = self.view.bounds.size.height;
    iv1.frame = CGRectMake(0, 0, w, h);
    iv2.frame = CGRectMake(320, 0, w, h);
    iv3.frame = CGRectMake(640, 0, w, h);
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    self.scrollView = scrollView;
    scrollView.contentSize = CGSizeMake(3*scrollView.frame.size.width, scrollView.frame.size.height);
    [scrollView addSubview:iv1];
    [scrollView addSubview:iv2];
    [scrollView addSubview:iv3];
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(102.5+2*scrollView.frame.size.width,501.5, 117.5, 34)];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:button];
    

    [self.view addSubview:scrollView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self leadingPage];
    
}
-(void)click{
    [UIView animateWithDuration:2 animations:^{
        self.scrollView.alpha = 0;
    }];
    self.tabBar = [self.storyboard instantiateViewControllerWithIdentifier:@"tabbar"];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread sleepForTimeInterval:2];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:self.tabBar animated:YES completion:nil];
        });
        
    });
    
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGPoint offSet = scrollView.contentOffset;
    if (offSet.x<=0) {
        offSet.x = 0;
        scrollView.contentOffset = offSet;
    }else if (offSet.x>=2*self.scrollView.frame.size.width){
        offSet.x = 2*self.scrollView.frame.size.width;
        scrollView.contentOffset = offSet;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
