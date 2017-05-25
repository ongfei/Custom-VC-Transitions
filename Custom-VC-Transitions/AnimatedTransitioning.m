//
//  AnimatedTransitioning.m
//  SinoCommunity
//
//  Created by df on 2017/5/25.
//  Copyright © 2017年 df. All rights reserved.
//

#import "AnimatedTransitioning.h"


@implementation AnimatedTransitioning

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.25f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIView *inView = [transitionContext containerView];
    UIViewController *presented = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *source = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    
    if (self.isPresenting) {
        
        [inView addSubview:presented.view];
        
        presented.view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.05f, 0.05f);
        
        [UIView animateWithDuration:0.25f
                         animations:^{
                             
                             //                         设置动画
                             presented.view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0f, 1.0f);
                             
                         }
                         completion:^(BOOL finished) {
                             
                             [transitionContext completeTransition:finished];
                             
                         }];
        
    }else {
        
        
        
        [UIView animateWithDuration:0.25f
                         animations:^{
                             
                             //                         设置动画
                             source.view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.01f, 0.01f);
                             
                         }
                         completion:^(BOOL finished) {
                             
                             [source.view removeFromSuperview];
                             
                             [transitionContext completeTransition:finished];
                            
                         }];

    }
    
}

@end
