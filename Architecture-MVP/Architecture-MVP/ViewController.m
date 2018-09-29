//
//  ViewController.m
//  Architecture-MVP
//
//  Created by chenshuang on 2018/9/29.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "ViewController.h"
#import "AppPresenter.h"

@interface ViewController ()
@property (strong, nonatomic) AppPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.presenter = [[AppPresenter alloc] initWithController:self];
}

@end
