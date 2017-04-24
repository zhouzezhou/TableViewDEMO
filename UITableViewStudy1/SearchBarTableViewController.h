//
//  SearchBarTableViewController.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/24.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchBarTableViewController : UITableViewController

@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) NSMutableArray *myContacts;
@property (nonatomic, strong) NSMutableArray *searchContacts;
@property (nonatomic, assign) BOOL isSearching;

@end
