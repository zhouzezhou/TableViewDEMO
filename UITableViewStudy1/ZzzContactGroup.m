//
//  ZzzContactGroup.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/22.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzContactGroup.h"

@implementation ZzzContactGroup

-(ZzzContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts
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

+(ZzzContactGroup *) initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts
{
    ZzzContactGroup *myContactGroup = [[ZzzContactGroup alloc] initWithName:name andDetail:detail andContacts:contacts];
    return myContactGroup;
}

@end
