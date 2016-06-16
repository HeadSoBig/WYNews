//
//  WYNewsListController.m
//  网易新闻
//
//  Created by 王军波 on 16/6/15.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import "WYNewsListController.h"

static NSString *cellId = @"cellId";

@interface WYNewsListController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation WYNewsListController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    [self setupUI];
}

#pragma mark - 3. 加载数据
- (void)loadData {
    
    
}

#pragma mark - 2. UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.textLabel.text = @(indexPath.row).description;
    
    return cell;
}

#pragma mark - 1. 设置界面
- (void)setupUI {
    
    UITableView *tv = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.view addSubview:tv];
    
    // 自动布局
    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    // 数据源 代理
    tv.dataSource = self;
    tv.delegate = self;
    
    // 注册 cell
    [tv registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
}

@end
