//
//  ZzzWeiboTableViewController.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzWeiboTableViewController.h"
#import "ZzzWeibo.h"
#import "ZzzWeiboTableViewCell.h"

@interface ZzzWeiboTableViewController ()
{
    NSMutableArray *_weibo;
    NSMutableArray *_weiboCells;
}

@end

@implementation ZzzWeiboTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"周微博";
    
    [self initData];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initData
{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"WeiboInfo" ofType:@"plist"];
    // 注意，plist的root项要设置为Array，设置为Dictonary将无法读取到内容
    NSArray *array=[NSArray arrayWithContentsOfFile:path];
//    if([[NSFileManager defaultManager] fileExistsAtPath:path])
//    {
//        NSLog(@"存在");
//    }
//    
//    NSLog(@"plist file path is :\n %@", path);
//    NSLog(@"plist is : \n %@", array);
    
    _weibo=[[NSMutableArray alloc]init];
    _weiboCells=[[NSMutableArray alloc]init];
    
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [_weibo addObject:[ZzzWeibo weiboWithDictionary:obj]];
        ZzzWeiboTableViewCell *cell=[[ZzzWeiboTableViewCell alloc]init];
        [_weiboCells addObject:cell];
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _weibo.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"UITableViewCellIdentifierKey1";
    ZzzWeiboTableViewCell *cell;
    cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell){
        cell=[[ZzzWeiboTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    //在此设置微博，以便重新布局
    ZzzWeibo *weibo=_weibo[indexPath.row];
    cell.weibo=weibo;
    return cell;
}

// 重新设置单元格高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZzzWeiboTableViewCell *cell = _weiboCells[indexPath.row];
    cell.weibo = _weibo[indexPath.row];
    return cell.height;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
