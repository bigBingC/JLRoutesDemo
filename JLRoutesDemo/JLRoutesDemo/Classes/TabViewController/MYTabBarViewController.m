//
//  MYTabBarViewController.m
//  JLRoutesDemo
//
//  Created by 崔冰 on 2018/6/6.
//  Copyright © 2018年 Ziwutong. All rights reserved.
//

#import "MYTabBarViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface MYTabBarViewController ()

@end

@implementation MYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createBaseViews];
}

- (void)createBaseViews {
    
    OneViewController *oneVc = [[OneViewController alloc] init];
    [self setUpChildVc:oneVc title:@"第一" image:@"icon_home" selectedImage:@"icon_home_select"];
    
    TwoViewController *twoVc = [[TwoViewController alloc] init];
    [self setUpChildVc:twoVc title:@"第二" image:@"icon_cheyuan" selectedImage:@"icon_cheyuan_select"];
    
    ThreeViewController *threeVc = [[ThreeViewController alloc] init];
    [self setUpChildVc:threeVc title:@"第三" image:@"icon_my" selectedImage:@"icon_my_select"];
}

- (void)setUpChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *navViewController  = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:navViewController];
}




@end
