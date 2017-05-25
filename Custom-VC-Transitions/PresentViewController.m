//
//  PresentViewController.m
//  Custom-VC-Transitions
//
//  Created by df on 2017/5/25.
//  Copyright © 2017年 df. All rights reserved.
//

#import "PresentViewController.h"

#define ScreenHeight ([[UIScreen mainScreen] bounds].size.height)
#define ScreenWidth ([[UIScreen mainScreen] bounds].size.width)

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.4 alpha:0.4];
    
    self.view.frame = CGRectMake(30, 120, ScreenWidth - 60, ScreenHeight - 260);
    
    
    UIView *bgView = [UIView new];
    
    [self.view addSubview:bgView];
    
    bgView.frame = CGRectMake(20, 30, self.view.frame.size.width - 40, self.view.frame.size.height - 70);
    
    bgView.backgroundColor = [UIColor whiteColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    
    [bgView addGestureRecognizer:tap];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    
    [bgView addSubview:label];
    
    label.text = @"I am viewController";
    
}

- (void)dismiss {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
