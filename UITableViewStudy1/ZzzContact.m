//
//  ZzzContact.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/19.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzContact.h"

@implementation ZzzContact

- (ZzzContact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber
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

+(ZzzContact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber
{
    ZzzContact *myContact = [[ZzzContact alloc] initWithFirstName:firstName andLastName:lastName andPhoneNumber:phoneNumber];
    return myContact;
}

@end
