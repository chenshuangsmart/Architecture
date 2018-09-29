//
//  AppView.h
//  Architecture_MVC_Mutation
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppItem, AppView;

@protocol AppViewDelegate <NSObject>
@optional
- (void)appViewDidClick:(AppView *)appView;
@end

@interface AppView : UIView
@property (strong, nonatomic) AppItem *appItem;
@property (weak, nonatomic) id<AppViewDelegate> delegate;
@end

