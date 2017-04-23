//
//  ZzzWeibo.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZzzWeibo : NSObject

@property (nonatomic, assign) long long     Id;
@property (nonatomic, copy  ) NSString *profileImageUrl;        // 头像
@property (nonatomic, copy  ) NSString *userName;               // 昵称
@property (nonatomic, copy  ) NSString *mbtype;                 // 用户类型（等级）
@property (nonatomic, copy  ) NSString *time;                   // 发送时间
@property (nonatomic, copy  ) NSString *device;                 // 发送设备
@property (nonatomic, copy  ) NSString *text;                   // 微博正文

// 根据字典初始化微博对象
-(ZzzWeibo *)initWithDictionary: (NSDictionary *)dic;

// 初始化微博对象（静态方法）
+(ZzzWeibo *)weiboWithDictionary: (NSDictionary *)dic;

@end
