//
//  AppViewModel.h
//  Architecture_MVVM_2
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppViewModel : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *image;

// 一般都是网络请求
- (void)loadApp;

@end
