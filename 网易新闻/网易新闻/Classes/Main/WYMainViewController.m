//
//  WYMainViewController.m
//  网易新闻
//
//  Created by 王军波 on 16/6/15.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import "WYMainViewController.h"

@interface WYMainViewController ()

@end

@implementation WYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewControllers];
}

- (void)addChildViewControllers {
    
    NSArray *ctlArray = @[
                          @{@"clsName":@"WYHomeViewController",@"title":@"新闻",@"imageName":@"news"},
                          @{@"clsName":@"UIViewController",@"title":@"阅读",@"imageName":@"reader"},
                          @{@"clsName":@"UIViewController",@"title":@"视频",@"imageName":@"media"},
                          @{@"clsName":@"UIViewController",@"title":@"话题",@"imageName":@"bar"},
                      @{@"clsName":@"UIViewController",@"title":@"我",@"imageName":@"me"}
                          ];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (NSDictionary *dict in ctlArray) {
        
        [arrayM addObject:[self creatChildControllerWithDict:dict]];
    }
    
    self.viewControllers = arrayM.copy;
}

- (UIViewController *)creatChildControllerWithDict:(NSDictionary *)dict {
    
    // 1. 创建控制器
    Class cls = NSClassFromString(dict[@"clsName"]);
    NSAssert(cls != nil, @"控制器类名错误");
    UIViewController *vc = [cls new];
    
    // 2. 标题
    vc.title = dict[@"title"];
    
    // 3. 常态图片
    NSString *normalIconStr = [NSString stringWithFormat:@"tabbar_icon_%@_normal",dict[@"imageName"]];
    
    vc.tabBarItem.image = [UIImage imageNamed:normalIconStr];
    
    // 高亮图片  记得渲染
    NSString *highlighIconStr = [NSString stringWithFormat:@"tabbar_icon_%@_highlight",dict[@"imageName"]];
    
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:highlighIconStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 导航
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    return nav;
}
@end
