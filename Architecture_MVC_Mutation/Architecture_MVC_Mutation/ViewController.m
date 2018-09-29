//
//  ViewController.m
//  Architecture_MVC_Mutation
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "ViewController.h"
#import "AppView.h"
#import "AppItem.h"

@interface ViewController ()<AppViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建view
    AppView *appView = [[AppView alloc] init];
    appView.frame = CGRectMake(100, 100, 100, 150);
    appView.delegate = self;
    [self.view addSubview:appView];
    
    // 加载模型数据
    AppItem *appItem = [[AppItem alloc] init];
    appItem.name = @"QQ";
    appItem.image = @"QQ";
    
    // 设置数据到view上
    appView.appItem = appItem;
}

#pragma mark - MJAppViewDelegate

- (void)appViewDidClick:(AppView *)appView {
    NSLog(@"控制器监听到了appView的点击");
}


@end
