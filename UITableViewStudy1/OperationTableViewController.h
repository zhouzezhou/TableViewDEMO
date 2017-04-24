//
//  OperationTableViewController.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OperationTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *myContacts;
@property (nonatomic, strong) NSIndexPath *selectedIndexPath;
@property (nonatomic, assign) BOOL isInsert; // 用以区分是删除操作还是添加操作

@end
