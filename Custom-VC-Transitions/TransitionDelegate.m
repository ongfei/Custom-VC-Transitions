//
//  TransitionDelegate.m
//  SinoCommunity
//
//  Created by df on 2017/5/25.
//  Copyright © 2017年 df. All rights reserved.
//

#import "TransitionDelegate.h"

#import "AnimatedTransitioning.h"

@implementation TransitionDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    AnimatedTransitioning *controller = [[AnimatedTransitioning alloc] init];
    
    controller.isPresenting = YES;

    return controller;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    
    AnimatedTransitioning *controller = [[AnimatedTransitioning alloc] init];
    
    controller.isPresenting = NO;
    
    return controller;
    
}
@end
