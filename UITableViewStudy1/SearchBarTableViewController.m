//
//  SearchBarTableViewController.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/24.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "SearchBarTableViewController.h"
#import "ZzzContact2.h"
#import "ZzzContactGroup2.h"

#define ZzzSearchBarHeight 44

@interface SearchBarTableViewController () <UISearchBarDelegate>
{
    UISearchBar *_searchBar;
    
    NSMutableArray *_myContacts;
    NSMutableArray *_searchContacts;
    BOOL _isSearching;
}

@end

@implementation SearchBarTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"搜索栏的TableView";
    
    [self initData];
    
    [self addSearchBar];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if(_isSearching)
    {
        return 1;
    }
    return _myContacts.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(_isSearching)
    {
        return _searchContacts.count;
    }
    ZzzContactGroup2 *temp = _myContacts[section];
    return temp.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZzzContact2 *contactTemp = nil;
    
    if(_isSearching)
    {
        contactTemp = _searchContacts[indexPath.row];
    }
    else
    {
        ZzzContactGroup2 *group = _myContacts[indexPath.section];
        contactTemp = group.contacts[indexPath.row];
    }
    
    NSString *myTableviewCellIndentifier = @"myTableviewCellIndentifier1";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: myTableviewCellIndentifier];
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:myTableviewCellIndentifier];
    }
    
    cell.textLabel.text = contactTemp.getName;
    cell.detailTextLabel.text = contactTemp.phoneNumber;
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(_isSearching)
        return @"搜索结果";
    
    ZzzContactGroup2 *temp = _myContacts[section];
    return [temp.name substringToIndex:1];
}

// 搜索栏代理
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    _isSearching = NO;
    _searchBar.text = @"";
    [self.tableView reloadData];
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if([searchBar.text isEqual:@""])
    {
        _isSearching = NO;
        [self.tableView reloadData];
        return ;
    }
    [self searchDataWithKeyWord: searchBar.text];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self searchDataWithKeyWord: searchBar.text];
    
    [searchBar resignFirstResponder];
}

-(void)searchDataWithKeyWord: (NSString *)keyWord
{
    _isSearching = YES;
    _searchContacts = [NSMutableArray array];
    [_myContacts enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        ZzzContactGroup2 *group = obj;
        [group.contacts enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            ZzzContact2 *contact = obj;
            if([contact.firstName.uppercaseString containsString:keyWord.uppercaseString] ||
               [contact.lastName.uppercaseString containsString:keyWord.uppercaseString] ||
               [contact.phoneNumber containsString:keyWord])
            {
                [_searchContacts addObject:contact];
            }
        }];
    }];
    
    [self.tableView reloadData];
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


-(void) initData
{
    _myContacts = [[NSMutableArray alloc] init];
    
    ZzzContact2 *contact1 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"zezhou" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact2 = [[ZzzContact2 alloc] initWithFirstName:@"li" andLastName:@"jialiang" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact3 = [[ZzzContact2 alloc] initWithFirstName:@"chen" andLastName:@"jiangfeng" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact4 = [[ZzzContact2 alloc] initWithFirstName:@"cai" andLastName:@"shenqian" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact5 = [[ZzzContact2 alloc] initWithFirstName:@"mao" andLastName:@"bo" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact6 = [[ZzzContact2 alloc] initWithFirstName:@"yu" andLastName:@"yi" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact7 = [[ZzzContact2 alloc] initWithFirstName:@"he" andLastName:@"xuerong" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact8 = [[ZzzContact2 alloc] initWithFirstName:@"song" andLastName:@"kunpeng" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact9 = [[ZzzContact2 alloc] initWithFirstName:@"yang" andLastName:@"ting" andPhoneNumber:@"18670076480"];
    ZzzContactGroup2 *groupUniversity = [[ZzzContactGroup2 alloc] initWithName:@"大学" andDetail:@"大学同学" andContacts:[NSMutableArray arrayWithObjects:contact1, contact2, contact3, contact4, contact5, contact6, contact7, contact8, contact9, nil]];
    
    [_myContacts addObject:groupUniversity];
    
    
    ZzzContact2 *contact10 = [[ZzzContact2 alloc] initWithFirstName:@"zhu" andLastName:@"guanxiong" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact11 = [[ZzzContact2 alloc] initWithFirstName:@"wu" andLastName:@"xiaohu" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact12 = [[ZzzContact2 alloc] initWithFirstName:@"feng" andLastName:@"miaomiao" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact13 = [[ZzzContact2 alloc] initWithFirstName:@"yang" andLastName:@"hongli" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact14 = [[ZzzContact2 alloc] initWithFirstName:@"xu" andLastName:@"aofei" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact15 = [[ZzzContact2 alloc] initWithFirstName:@"zhu" andLastName:@"huyang" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact16 = [[ZzzContact2 alloc] initWithFirstName:@"liu" andLastName:@"fuqiang" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact17 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"cong" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact18 = [[ZzzContact2 alloc] initWithFirstName:@"ding" andLastName:@"su" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact19 = [[ZzzContact2 alloc] initWithFirstName:@"chen" andLastName:@"hao" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact20 = [[ZzzContact2 alloc] initWithFirstName:@"hou" andLastName:@"zhouyang" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact21 = [[ZzzContact2 alloc] initWithFirstName:@"yang" andLastName:@"biao" andPhoneNumber:@"18670076480"];
    
    ZzzContactGroup2 *groupHmo= [[ZzzContactGroup2 alloc] initWithName:@"华美欧" andDetail:@"华美欧同事" andContacts:[NSMutableArray arrayWithObjects:contact10, contact11, contact12, contact13, contact14, contact15, contact16, contact17, contact18, contact19, contact20, contact21, nil]];
    
    [_myContacts addObject:groupHmo];
    
    
    ZzzContact2 *contact22 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"peng" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact23 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"menghui" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact24 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"shijun" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact25 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"feng" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact26 = [[ZzzContact2 alloc] initWithFirstName:@"huang" andLastName:@"yaqian" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact27 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"nianxuan" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact28 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"jinyan" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact29 = [[ZzzContact2 alloc] initWithFirstName:@"zhou" andLastName:@"jinchen" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact30 = [[ZzzContact2 alloc] initWithFirstName:@"xu" andLastName:@"jia" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact31 = [[ZzzContact2 alloc] initWithFirstName:@"xu" andLastName:@"shining" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact32 = [[ZzzContact2 alloc] initWithFirstName:@"zhang" andLastName:@"shiyao" andPhoneNumber:@"18670076480"];
    
    
    ZzzContactGroup2 *groupFamily= [[ZzzContactGroup2 alloc] initWithName:@"家人" andDetail:@"自己人" andContacts:[NSMutableArray arrayWithObjects:contact22, contact23, contact24, contact25, contact26, contact27, contact28, contact29, contact30, contact31, contact32, nil]];
    
    [_myContacts addObject:groupFamily];
    
    
    
    
    ZzzContact2 *contact33 = [[ZzzContact2 alloc] initWithFirstName:@"li" andLastName:@"ranjie" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact34 = [[ZzzContact2 alloc] initWithFirstName:@"liu" andLastName:@"jing" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact35 = [[ZzzContact2 alloc] initWithFirstName:@"huang" andLastName:@"lin" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact36 = [[ZzzContact2 alloc] initWithFirstName:@"zhang" andLastName:@"ting" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact37 = [[ZzzContact2 alloc] initWithFirstName:@"le" andLastName:@"lei" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact38 = [[ZzzContact2 alloc] initWithFirstName:@"liu" andLastName:@"siyu"
                                                     andPhoneNumber:@"18670076480"];
    
    
    ZzzContactGroup2 *groupFriendMid= [[ZzzContactGroup2 alloc] initWithName:@"初高中同学" andDetail:@"初高中同学朋友" andContacts:[NSMutableArray arrayWithObjects:contact33, contact34, contact35, contact35, contact36, contact37, contact38, nil]];
    
    [_myContacts addObject:groupFriendMid];
    
    
    ZzzContact2 *contact39 = [[ZzzContact2 alloc] initWithFirstName:@"li" andLastName:@"yangfan" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact40 = [[ZzzContact2 alloc] initWithFirstName:@"qu" andLastName:@"feng" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact41 = [[ZzzContact2 alloc] initWithFirstName:@"fan" andLastName:@"menghao" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact42 = [[ZzzContact2 alloc] initWithFirstName:@"gao" andLastName:@"ruihao" andPhoneNumber:@"18670076480"];
    
    
    ZzzContactGroup2 *groupUniversityFriend= [[ZzzContactGroup2 alloc] initWithName:@"初高中同学" andDetail:@"初高中同学朋友" andContacts:[NSMutableArray arrayWithObjects:contact39, contact40, contact41, contact42, nil]];
    
    [_myContacts addObject:groupUniversityFriend];
    
    
    
    ZzzContact2 *contact43 = [[ZzzContact2 alloc] initWithFirstName:@"tang" andLastName:@"bolin" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact44 = [[ZzzContact2 alloc] initWithFirstName:@"qin" andLastName:@"wei" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact45 = [[ZzzContact2 alloc] initWithFirstName:@"ma" andLastName:@"yueqi" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact46 = [[ZzzContact2 alloc] initWithFirstName:@"deng" andLastName:@"zhengzhou" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact47 = [[ZzzContact2 alloc] initWithFirstName:@"yang" andLastName:@"li" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact48 = [[ZzzContact2 alloc] initWithFirstName:@"luo" andLastName:@"rui" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact49 = [[ZzzContact2 alloc] initWithFirstName:@"zhang" andLastName:@"ye" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact50 = [[ZzzContact2 alloc] initWithFirstName:@"hu" andLastName:@"mei" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact51 = [[ZzzContact2 alloc] initWithFirstName:@"liu" andLastName:@"pei" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact52 = [[ZzzContact2 alloc] initWithFirstName:@"ma" andLastName:@"ye" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact53 = [[ZzzContact2 alloc] initWithFirstName:@"jin" andLastName:@"jin" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact54 = [[ZzzContact2 alloc] initWithFirstName:@"gu" andLastName:@"chao" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact55 = [[ZzzContact2 alloc] initWithFirstName:@"luo" andLastName:@"hanlin" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact56 = [[ZzzContact2 alloc] initWithFirstName:@"nv" andLastName:@"pengyou1" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact57 = [[ZzzContact2 alloc] initWithFirstName:@"nv" andLastName:@"guimi" andPhoneNumber:@"18670076480"];
    ZzzContact2 *contact58 = [[ZzzContact2 alloc] initWithFirstName:@"nv" andLastName:@"shen" andPhoneNumber:@"18670076480"];
    
    ZzzContactGroup2 *groupOther = [[ZzzContactGroup2 alloc] initWithName:@"其它" andDetail:@"其它未归类" andContacts:[NSMutableArray arrayWithObjects:contact43, contact44, contact45, contact46, contact47, contact48, contact49, contact50, contact51, contact52, contact53, contact54, contact55, contact56, contact57, contact58, nil]];
    
    [_myContacts addObject:groupOther];
}

-(void) addSearchBar
{
    CGRect searchBarRect = CGRectMake(0, 0, self.view.frame.size.width, ZzzSearchBarHeight);
    _searchBar = [[UISearchBar alloc] initWithFrame: searchBarRect];
    _searchBar.placeholder = @"输入关键词搜索";
    
    _searchBar.showsCancelButton = YES;
    _searchBar.delegate = self;
    
    self.tableView.tableHeaderView = _searchBar;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
