//
//  NewsViewModel.m
//  Architecture_MVVM
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "NewsViewModel.h"
#import "NewsItem.h"

@implementation NewsViewModel
- (void)loadNewsData:(void (^)(NSArray *))completion {
    if (!completion) return;
    
    NSMutableArray *newsData = [NSMutableArray array];
    
    for (int i = 0; i < 20; i++) {
        // 发送网络请求、字典转模型
        NewsItem *news = [[NewsItem alloc] init];
        news.title = [NSString stringWithFormat:@"news-title-%d", i];
        news.content = [NSString stringWithFormat:@"news-content-%d", i];
        [newsData addObject:news];
    }
    
    completion(newsData);
}

@end
