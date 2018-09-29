//
//  ViewController.m
//  Architecture-MVC-Apple
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "ViewController.h"
#import "NewsItem.h"
#import "ShopItem.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray *newsData;
@property (strong, nonatomic) NSMutableArray *shopData;
@end

@implementation ViewController

/**
 View与Model互相不依赖
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"NewsCell"];
    [self loadNewsData];
}

- (void)loadNewsData {
    self.newsData = [NSMutableArray array];
    
    for (int i = 0; i < 20; i++) {
        NewsItem *news = [[NewsItem alloc] init];
        news.title = [NSString stringWithFormat:@"news-title-%d", i];
        news.content = [NSString stringWithFormat:@"news-content-%d", i];
        [self.newsData addObject:news];
    }
}

- (void)loadShopData {
    self.shopData = [NSMutableArray array];
    
    for (int i = 0; i < 20; i++) {
        ShopItem *shop = [[ShopItem alloc] init];
        shop.name = [NSString stringWithFormat:@"商品-%d", i];
        shop.price = [NSString stringWithFormat:@"￥19.%d", i];
        [self.shopData addObject:shop];
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.newsData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"NewsCell"];
    }
    
    NewsItem *news = self.newsData[indexPath.row];
    
    cell.detailTextLabel.text = news.title;
    cell.textLabel.text = news.content;
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"1111");
}


@end
