//
//  SecondViewController.m
//  NotificationDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


#pragma 系统回调
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.yellowColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    /** 1.布置通知 */ 
    [[NSNotificationCenter defaultCenter] postNotificationName:@"inputDataSource" object:nil userInfo:@{@"Value":@"我不是天生要强，我是注定要凉"}];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
