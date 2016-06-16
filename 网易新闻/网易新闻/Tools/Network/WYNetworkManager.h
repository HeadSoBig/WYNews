//
//  WYNetworkManager.h
//  网易新闻
//
//  Created by 王军波 on 16/6/16.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface WYNetworkManager : AFHTTPSessionManager

+ (instancetype)shareManager;

// 接口
- (void)newsListWithChannel:(NSString *)channel start:(NSInteger)start completion:(void(^)(NSArray *array,NSError *error))completion;

@end
