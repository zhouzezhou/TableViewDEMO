//
//  ZzzWeiboTableViewCell.h
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZzzWeibo;

@interface ZzzWeiboTableViewCell : UITableViewCell

@property (nonatomic, strong) ZzzWeibo *weibo;  // 微博对象
@property (nonatomic, assign) CGFloat height;   // 单元格高度

@end
