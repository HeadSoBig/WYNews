//
//  AppDelegate.m
//  网易新闻
//
//  Created by 王军波 on 16/6/15.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setupAppearance];
    
    _window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    
    Class cls = NSClassFromString(@"WYNewsListController");
    UIViewController *vc = [cls new];
    
    _window.rootViewController = vc;
    [_window makeKeyAndVisible];
    
    return YES;
}

// 设置控件全局外观
- (void)setupAppearance {
    
    [UITabBar appearance].tintColor = [UIColor cz_colorWithHex:0xDF0000];
}
    
@end
