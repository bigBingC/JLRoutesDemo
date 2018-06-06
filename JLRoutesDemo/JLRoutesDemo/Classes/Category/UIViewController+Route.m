//
//  UIViewController+Route.m
//  JLRoutesDemo
//
//  Created by 崔冰 on 2018/6/6.
//  Copyright © 2018年 Ziwutong. All rights reserved.
//

#import "UIViewController+Route.h"

@implementation UIViewController (Route)
+ (UIViewController *)currentViewController
{
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (1) {
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
    }
    return vc;
}

@end
