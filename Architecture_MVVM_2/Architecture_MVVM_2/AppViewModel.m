//
//  AppViewModel.m
//  Architecture_MVVM_2
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "AppViewModel.h"
#import "AppItem.h"

@implementation AppViewModel
- (void)loadApp {
    // 加载模型数据
    AppItem *app = [[AppItem alloc] init];
    app.name = @"QQ";
    app.image = @"QQ";
    
    self.name = [NSString stringWithFormat:@"000-%@", app.name];
    self.image = app.image;
}

@end
