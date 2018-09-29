//
//  AppPresenter.m
//  Architecture-MVP
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "AppPresenter.h"
#import "AppItem.h"
#import "AppView.h"

@interface AppPresenter() <AppViewDelegate>
@property (weak, nonatomic) UIViewController *controller;
@end

@implementation AppPresenter

- (instancetype)initWithController:(UIViewController *)controller
{
    if (self = [super init]) {
        self.controller = controller;
        
        // 创建View
        AppView *appView = [[AppView alloc] init];
        appView.frame = CGRectMake(100, 100, 100, 150);
        appView.delegate = self;
        [controller.view addSubview:appView];
        
        // 加载模型数据
        AppItem *app = [[AppItem alloc] init];
        app.name = @"QQ";
        app.image = @"QQ";
        
        // 赋值数据
        [appView setName:app.name andImage:app.image];
    }
    return self;
}

#pragma mark - AppViewDelegate

- (void)appViewDidClick:(AppView *)appView {
    NSLog(@"presenter 监听了 appView 的点击");
}

@end
