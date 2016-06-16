//
//  WYNetworkManager.m
//  网易新闻
//
//  Created by 王军波 on 16/6/16.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import "WYNetworkManager.h"

@implementation WYNetworkManager

+ (instancetype)shareManager {
    
    static WYNetworkManager *instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSURL *baseUrl = [NSURL URLWithString:@"http://c.m.163.com/nc/article/"];
        
        instance = [[WYNetworkManager alloc]initWithBaseURL:baseUrl];
        
        
    });
    
    return instance;
}

// 接口
- (void)newsListWithChannel:(NSString *)channel start:(NSInteger)start completion:(void(^)(NSArray *array,NSError *error))completion {
    
    
}
@end
