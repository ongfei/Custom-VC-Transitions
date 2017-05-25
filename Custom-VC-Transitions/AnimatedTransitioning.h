//
//  AnimatedTransitioning.h
//  SinoCommunity
//
//  Created by df on 2017/5/25.
//  Copyright © 2017年 df. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AnimatedTransitioning : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL isPresenting;

@end
