//
//  OneViewController.m
//  JLRoutesDemo
//
//  Created by 崔冰 on 2018/6/6.
//  Copyright © 2018年 Ziwutong. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createBaseView];
}

- (void)createBaseView {
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"第一";
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 40)];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpRoute) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)jumpRoute {
    
    NSString *url = @"JLRouteDemo://FourViewController/我是userID/我是pwd";
    //中文传输需要进行转义
    url = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:nil completionHandler:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
