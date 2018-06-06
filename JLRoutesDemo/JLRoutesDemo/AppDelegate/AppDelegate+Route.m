//
//  AppDelegate+Route.m
//  JLRoutesDemo
//
//  Created by 崔冰 on 2018/6/6.
//  Copyright © 2018年 Ziwutong. All rights reserved.
//

#import "AppDelegate+Route.h"
#import "JLRoutes.h"
#import "UIViewController+Route.h"
#import <objc/runtime.h>

@implementation AppDelegate (Route)
- (void)initRoute {
    [[JLRoutes globalRoutes] addRoute:@"/:ViewController/:userID/:pass" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        Class class = NSClassFromString(parameters[@"ViewController"]);
        UIViewController *vc = [[class alloc] init];
        NSLog(@"-----userID:%@",parameters[@"userID"]);
        NSLog(@"-----pass:%@",parameters[@"pass"]);
        UINavigationController *nav = [UIViewController currentViewController].navigationController;
        [self paramToViewController:vc param:parameters];
        [nav pushViewController:vc animated:YES];
        return YES;
    }];
}

- (void)paramToViewController:(UIViewController *)viewController param:(NSDictionary<NSString *,NSString *>*)param {
    unsigned int outCount = 0;
    objc_property_t *properties = class_copyPropertyList(viewController.class, &outCount);
    for (int i = 0; i < outCount; i ++) {
        objc_property_t property = properties[i];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        NSString *par = param[key];
        if (param != nil) {
            [viewController setValue:par forKey:key];
        }
    }
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    return [[JLRoutes globalRoutes] routeURL:url];
}

@end
