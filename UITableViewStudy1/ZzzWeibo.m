//
//  ZzzWeibo.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzWeibo.h"

@implementation ZzzWeibo

// 根据字典初始化微博对象
-(ZzzWeibo *)initWithDictionary: (NSDictionary *)dic
{
    self = [super init];
    
    if(self)
    {
        self.Id              = [dic[@"Id"] longLongValue];
        self.profileImageUrl = dic[@"profileImageUrl"];
        self.userName        = dic[@"userName"];
        self.mbtype          = dic[@"mbtype"];
        self.time            = dic[@"time"];
        self.device          = dic[@"device"];
        self.text            = dic[@"text"];
    }
    return self;
}

// 初始化微博对象（静态方法）
+(ZzzWeibo *)weiboWithDictionary: (NSDictionary *)dic
{
    return [[ZzzWeibo alloc] initWithDictionary:dic];
}

-(NSString *)device
{
    return [NSString stringWithFormat:@"来自 %@", _device];
}

@end
