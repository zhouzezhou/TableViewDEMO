//
//  ZzzContact.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/19.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZzzContact : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *phoneNumber;

@property (nonatomic, assign) BOOL switchStatus;

-(ZzzContact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

-(NSString *)getName;

+(ZzzContact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

@end
