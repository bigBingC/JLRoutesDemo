//
//  FourViewController.m
//  JLRoutesDemo
//
//  Created by 崔冰 on 2018/6/6.
//  Copyright © 2018年 Ziwutong. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createBaseView];
}

- (void)createBaseView {
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    lbl.text = @"这事route跳转的页面";
    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
