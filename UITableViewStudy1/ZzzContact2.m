//
//  ZzzContact2.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzContact2.h"

@implementation ZzzContact2


- (ZzzContact2 *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber
{
    self = [super init];
    
    if(self)
    {
        self.firstName   = firstName;
        self.lastName    = lastName;
        self.phoneNumber = phoneNumber;
    }
    
    return self;
}

-(NSString *)getName
{
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}

+(ZzzContact2 *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber
{
    ZzzContact2 *myContact = [[ZzzContact2 alloc] initWithFirstName:firstName andLastName:lastName andPhoneNumber:phoneNumber];
    return myContact;
}


@end
