//
//  ZzzContactGroup.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/22.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZzzContactGroup : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *detail;
@property (nonatomic, strong) NSMutableArray *contacts;

-(ZzzContactGroup *) initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;

+(ZzzContactGroup *) initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;

@end
