//
//  ViewController.m
//  Custom-VC-Transitions
//
//  Created by df on 2017/5/25.
//  Copyright © 2017年 df. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"
#import "TransitionDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) TransitionDelegate *transitionController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"虫儿飞";
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.transitionController = [TransitionDelegate new];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(present)];
    
    [self.view addGestureRecognizer:tap];

}

- (void)present {
    
    PresentViewController *presentVC = [PresentViewController new];
    
    [presentVC setTransitioningDelegate:self.transitionController];
    
    presentVC.modalPresentationStyle = UIModalPresentationCustom;
    
    [self presentViewController:presentVC animated:YES completion:^{
        
    }];
}



@end
