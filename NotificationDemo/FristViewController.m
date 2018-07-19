//
//  FristViewController.m
//  NotificationDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "FristViewController.h"
#import "SecondViewController.h"

@interface FristViewController ()

@end

@implementation FristViewController


#pragma 系统回调

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 添加通知 */
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(inputDataSource:) name:@"inputDataSource" object:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondViewController * vc = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

/** 通知方法 */
- (void)inputDataSource : (NSNotification *)soure {
    NSLog(@"%@",soure.userInfo[@"Value"]);
}

- (void)dealloc
{
    /** 移除通知 */
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
