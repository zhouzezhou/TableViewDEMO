//
//  DynamicTableViewController.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/19.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DynamicTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *myContacts;
@property (nonatomic, strong) NSIndexPath *selectedIndexPath;

@end
