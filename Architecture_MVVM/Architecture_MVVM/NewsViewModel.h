//
//  NewsViewModel.h
//  Architecture_MVVM
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsViewModel : NSObject
- (void)loadNewsData:(void (^)(NSArray *newsData))completion;
@end
