//
//  ViewController.m
//  Architecture_MVVM_2
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "ViewController.h"
#import "AppView.h"
#import "AppViewModel.h"

@interface ViewController () <AppViewDelegate>
@property (nonatomic, strong) AppViewModel *appVM;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建viewModel
    self.appVM = [[AppViewModel alloc] init];
    [self.appVM loadApp];
    
    // 创建view
    AppView *appView = [[AppView alloc] init];
    appView.frame = CGRectMake(100, 100, 100, 150);
    appView.delegate = self;
    [self.view addSubview:appView];
    
    // 设置数据到view上
    appView.nameLabel.text = self.appVM.name;
    appView.iconView.image = [UIImage imageNamed:self.appVM.image];
}

#pragma mark - MJAppViewDelegate
- (void)appViewDidClick:(AppView *)appView
{
    NSLog(@"控制器监听到了appView的点击");
}


@end
