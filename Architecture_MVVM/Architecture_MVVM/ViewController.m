//
//  ViewController.m
//  Architecture-MVC-Apple
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "ViewController.h"
#import "NewsItem.h"
#import "NewsViewModel.h"

@interface ViewController ()
@property (strong, nonatomic) NSArray *newsData;
@property(nonatomic,strong)NewsViewModel *newsVM;
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
    
    self.newsVM = [[NewsViewModel alloc] init];
    [self.newsVM loadNewsData:^(NSArray *newsData) {
        self.newsData = newsData;
    }];
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
