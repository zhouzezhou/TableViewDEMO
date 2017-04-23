//
//  ZzzContactGroup2.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzContactGroup2.h"

@implementation ZzzContactGroup2


-(ZzzContactGroup2 *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts
{
    self = [super init];
    
    if(self)
    {
        self.name = name;
        self.detail = detail;
        self.contacts = contacts;
    }
    
    return self;
}

+(ZzzContactGroup2 *) initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts
{
    ZzzContactGroup2 *myContactGroup = [[ZzzContactGroup2 alloc] initWithName:name andDetail:detail andContacts:contacts];
    return myContactGroup;
}


@end
