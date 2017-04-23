//
//  ZzzContact2.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZzzContact2 : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *phoneNumber;

@property (nonatomic, assign) BOOL switchStatus;

-(ZzzContact2 *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

-(NSString *)getName;

+(ZzzContact2 *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

@end
