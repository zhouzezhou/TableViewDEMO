//
//  DynamicTableViewController.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/19.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "DynamicTableViewController.h"
#import "ZzzContact.h"
#import "ZzzContactGroup.h"



@interface DynamicTableViewController ()
{
    NSMutableArray *_myContacts;
    NSIndexPath *_selectedIndexPath;
    
}

//@property (nonatomic, assign) NSInteger footCount;


@end

@implementation DynamicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"DynamicTableView1";
    
    [self loadData];
//    _footCount = 0;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadData
{
    _myContacts = [[NSMutableArray alloc] init];
    
    ZzzContact *contact1 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"zezhou" andPhoneNumber:@"18670076480"];
    ZzzContact *contact2 = [[ZzzContact alloc] initWithFirstName:@"li" andLastName:@"jialiang" andPhoneNumber:@"18670076480"];
    ZzzContact *contact3 = [[ZzzContact alloc] initWithFirstName:@"chen" andLastName:@"jiangfeng" andPhoneNumber:@"18670076480"];
    ZzzContact *contact4 = [[ZzzContact alloc] initWithFirstName:@"cai" andLastName:@"shenqian" andPhoneNumber:@"18670076480"];
    ZzzContact *contact5 = [[ZzzContact alloc] initWithFirstName:@"mao" andLastName:@"bo" andPhoneNumber:@"18670076480"];
    ZzzContact *contact6 = [[ZzzContact alloc] initWithFirstName:@"yu" andLastName:@"yi" andPhoneNumber:@"18670076480"];
    ZzzContact *contact7 = [[ZzzContact alloc] initWithFirstName:@"he" andLastName:@"xuerong" andPhoneNumber:@"18670076480"];
    ZzzContact *contact8 = [[ZzzContact alloc] initWithFirstName:@"song" andLastName:@"kunpeng" andPhoneNumber:@"18670076480"];
    ZzzContact *contact9 = [[ZzzContact alloc] initWithFirstName:@"yang" andLastName:@"ting" andPhoneNumber:@"18670076480"];
    ZzzContactGroup *groupUniversity = [[ZzzContactGroup alloc] initWithName:@"大学" andDetail:@"大学同学" andContacts:[NSMutableArray arrayWithObjects:contact1, contact2, contact3, contact4, contact5, contact6, contact7, contact8, contact9, nil]];
    
    [_myContacts addObject:groupUniversity];
    
    
    ZzzContact *contact10 = [[ZzzContact alloc] initWithFirstName:@"zhu" andLastName:@"guanxiong" andPhoneNumber:@"18670076480"];
    ZzzContact *contact11 = [[ZzzContact alloc] initWithFirstName:@"wu" andLastName:@"xiaohu" andPhoneNumber:@"18670076480"];
    ZzzContact *contact12 = [[ZzzContact alloc] initWithFirstName:@"feng" andLastName:@"miaomiao" andPhoneNumber:@"18670076480"];
    ZzzContact *contact13 = [[ZzzContact alloc] initWithFirstName:@"yang" andLastName:@"hongli" andPhoneNumber:@"18670076480"];
    ZzzContact *contact14 = [[ZzzContact alloc] initWithFirstName:@"xu" andLastName:@"aofei" andPhoneNumber:@"18670076480"];
    ZzzContact *contact15 = [[ZzzContact alloc] initWithFirstName:@"zhu" andLastName:@"huyang" andPhoneNumber:@"18670076480"];
    ZzzContact *contact16 = [[ZzzContact alloc] initWithFirstName:@"liu" andLastName:@"fuqiang" andPhoneNumber:@"18670076480"];
    ZzzContact *contact17 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"cong" andPhoneNumber:@"18670076480"];
    ZzzContact *contact18 = [[ZzzContact alloc] initWithFirstName:@"ding" andLastName:@"su" andPhoneNumber:@"18670076480"];
    ZzzContact *contact19 = [[ZzzContact alloc] initWithFirstName:@"chen" andLastName:@"hao" andPhoneNumber:@"18670076480"];
    ZzzContact *contact20 = [[ZzzContact alloc] initWithFirstName:@"hou" andLastName:@"zhouyang" andPhoneNumber:@"18670076480"];
    ZzzContact *contact21 = [[ZzzContact alloc] initWithFirstName:@"yang" andLastName:@"biao" andPhoneNumber:@"18670076480"];
    
    ZzzContactGroup *groupHmo= [[ZzzContactGroup alloc] initWithName:@"华美欧" andDetail:@"华美欧同事" andContacts:[NSMutableArray arrayWithObjects:contact10, contact11, contact12, contact13, contact14, contact15, contact16, contact17, contact18, contact19, contact20, contact21, nil]];
    
    [_myContacts addObject:groupHmo];
    
    
    ZzzContact *contact22 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"peng" andPhoneNumber:@"18670076480"];
    ZzzContact *contact23 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"menghui" andPhoneNumber:@"18670076480"];
    ZzzContact *contact24 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"shijun" andPhoneNumber:@"18670076480"];
    ZzzContact *contact25 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"feng" andPhoneNumber:@"18670076480"];
    ZzzContact *contact26 = [[ZzzContact alloc] initWithFirstName:@"huang" andLastName:@"yaqian" andPhoneNumber:@"18670076480"];
    ZzzContact *contact27 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"nianxuan" andPhoneNumber:@"18670076480"];
    ZzzContact *contact28 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"jinyan" andPhoneNumber:@"18670076480"];
    ZzzContact *contact29 = [[ZzzContact alloc] initWithFirstName:@"zhou" andLastName:@"jinchen" andPhoneNumber:@"18670076480"];
    ZzzContact *contact30 = [[ZzzContact alloc] initWithFirstName:@"xu" andLastName:@"jia" andPhoneNumber:@"18670076480"];
    ZzzContact *contact31 = [[ZzzContact alloc] initWithFirstName:@"xu" andLastName:@"shining" andPhoneNumber:@"18670076480"];
    ZzzContact *contact32 = [[ZzzContact alloc] initWithFirstName:@"zhang" andLastName:@"shiyao" andPhoneNumber:@"18670076480"];
    
    
    ZzzContactGroup *groupFamily= [[ZzzContactGroup alloc] initWithName:@"家人" andDetail:@"自己人" andContacts:[NSMutableArray arrayWithObjects:contact22, contact23, contact24, contact25, contact26, contact27, contact28, contact29, contact30, contact31, contact32, nil]];
    
    [_myContacts addObject:groupFamily];
    
    

    
    ZzzContact *contact33 = [[ZzzContact alloc] initWithFirstName:@"li" andLastName:@"ranjie" andPhoneNumber:@"18670076480"];
    ZzzContact *contact34 = [[ZzzContact alloc] initWithFirstName:@"liu" andLastName:@"jing" andPhoneNumber:@"18670076480"];
    ZzzContact *contact35 = [[ZzzContact alloc] initWithFirstName:@"huang" andLastName:@"lin" andPhoneNumber:@"18670076480"];
    ZzzContact *contact36 = [[ZzzContact alloc] initWithFirstName:@"zhang" andLastName:@"ting" andPhoneNumber:@"18670076480"];
    ZzzContact *contact37 = [[ZzzContact alloc] initWithFirstName:@"le" andLastName:@"lei" andPhoneNumber:@"18670076480"];
    ZzzContact *contact38 = [[ZzzContact alloc] initWithFirstName:@"liu" andLastName:@"siyu"
        andPhoneNumber:@"18670076480"];
    
    
    ZzzContactGroup *groupFriendMid= [[ZzzContactGroup alloc] initWithName:@"初高中同学" andDetail:@"初高中同学朋友" andContacts:[NSMutableArray arrayWithObjects:contact33, contact34, contact35, contact35, contact36, contact37, contact38, nil]];
    
    [_myContacts addObject:groupFriendMid];
    
    
    ZzzContact *contact39 = [[ZzzContact alloc] initWithFirstName:@"li" andLastName:@"yangfan" andPhoneNumber:@"18670076480"];
    ZzzContact *contact40 = [[ZzzContact alloc] initWithFirstName:@"qu" andLastName:@"feng" andPhoneNumber:@"18670076480"];
    ZzzContact *contact41 = [[ZzzContact alloc] initWithFirstName:@"fan" andLastName:@"menghao" andPhoneNumber:@"18670076480"];
    ZzzContact *contact42 = [[ZzzContact alloc] initWithFirstName:@"gao" andLastName:@"ruihao" andPhoneNumber:@"18670076480"];
    
    
    ZzzContactGroup *groupUniversityFriend= [[ZzzContactGroup alloc] initWithName:@"初高中同学" andDetail:@"初高中同学朋友" andContacts:[NSMutableArray arrayWithObjects:contact39, contact40, contact41, contact42, nil]];
    
    [_myContacts addObject:groupUniversityFriend];
    
    
    
    ZzzContact *contact43 = [[ZzzContact alloc] initWithFirstName:@"tang" andLastName:@"bolin" andPhoneNumber:@"18670076480"];
    ZzzContact *contact44 = [[ZzzContact alloc] initWithFirstName:@"qin" andLastName:@"wei" andPhoneNumber:@"18670076480"];
    ZzzContact *contact45 = [[ZzzContact alloc] initWithFirstName:@"ma" andLastName:@"yueqi" andPhoneNumber:@"18670076480"];
    ZzzContact *contact46 = [[ZzzContact alloc] initWithFirstName:@"deng" andLastName:@"zhengzhou" andPhoneNumber:@"18670076480"];
    ZzzContact *contact47 = [[ZzzContact alloc] initWithFirstName:@"yang" andLastName:@"li" andPhoneNumber:@"18670076480"];
    ZzzContact *contact48 = [[ZzzContact alloc] initWithFirstName:@"luo" andLastName:@"rui" andPhoneNumber:@"18670076480"];
    ZzzContact *contact49 = [[ZzzContact alloc] initWithFirstName:@"zhang" andLastName:@"ye" andPhoneNumber:@"18670076480"];
    ZzzContact *contact50 = [[ZzzContact alloc] initWithFirstName:@"hu" andLastName:@"mei" andPhoneNumber:@"18670076480"];
    ZzzContact *contact51 = [[ZzzContact alloc] initWithFirstName:@"liu" andLastName:@"pei" andPhoneNumber:@"18670076480"];
    ZzzContact *contact52 = [[ZzzContact alloc] initWithFirstName:@"ma" andLastName:@"ye" andPhoneNumber:@"18670076480"];
    ZzzContact *contact53 = [[ZzzContact alloc] initWithFirstName:@"jin" andLastName:@"jin" andPhoneNumber:@"18670076480"];
    ZzzContact *contact54 = [[ZzzContact alloc] initWithFirstName:@"gu" andLastName:@"chao" andPhoneNumber:@"18670076480"];
    ZzzContact *contact55 = [[ZzzContact alloc] initWithFirstName:@"luo" andLastName:@"hanlin" andPhoneNumber:@"18670076480"];
    ZzzContact *contact56 = [[ZzzContact alloc] initWithFirstName:@"nv" andLastName:@"pengyou1" andPhoneNumber:@"18670076480"];
    ZzzContact *contact57 = [[ZzzContact alloc] initWithFirstName:@"nv" andLastName:@"guimi" andPhoneNumber:@"18670076480"];
    ZzzContact *contact58 = [[ZzzContact alloc] initWithFirstName:@"nv" andLastName:@"shen" andPhoneNumber:@"18670076480"];
    
    ZzzContactGroup *groupOther = [[ZzzContactGroup alloc] initWithName:@"其它" andDetail:@"其它未归类" andContacts:[NSMutableArray arrayWithObjects:contact43, contact44, contact45, contact46, contact47, contact48, contact49, contact50, contact51, contact52, contact53, contact54, contact55, contact56, contact57, contact58, nil]];
    
    [_myContacts addObject:groupOther];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return _myContacts.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    ZzzContactGroup *temp = _myContacts[section];
    return temp.contacts.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"生成单元格(组：%li,行%li)",(long)indexPath.section,(long)indexPath.row);
    
    ZzzContactGroup *tempGroup = _myContacts[indexPath.section];
    ZzzContact *tempContact = tempGroup.contacts[indexPath.row];
    
    NSString *indentifierCellFirstRow = @"UITableViewCellIdentifierKeyWithSwitch";
    NSString *indentifierCellNormal = @"UITableViewCellIdentifierKey1";
    
    UITableViewCell *cell;
    if(indexPath.row == 0)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:indentifierCellFirstRow];
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:indentifierCellNormal];
    }
    
    if(!cell)
    {
        if(indexPath.row == 0)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:indentifierCellFirstRow];
            UISwitch *sw = [[UISwitch alloc]init];
            [sw addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = sw;
        }
        else
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:indentifierCellNormal];
            cell.accessoryType = UITableViewCellAccessoryDetailButton;
        }
    }
    
    if(indexPath.row == 0)
    {
        ((UISwitch *)cell.accessoryView).tag = indexPath.section;
        [((UISwitch *)cell.accessoryView) setOn:tempContact.switchStatus animated:NO];
    }
    
    cell.textLabel.text = [tempContact getName];
    cell.detailTextLabel.text = tempContact.phoneNumber;
    NSLog(@"cell: %@", cell);
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSLog(@"生成组（组%li）名称",(long)section);
    ZzzContactGroup *tempGroup = _myContacts[section];
    
    return tempGroup.name;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    NSLog(@"生成尾部（组%li）详情",(long)section);
    ZzzContactGroup *tempGroup = _myContacts[section];
    return tempGroup.detail;
}

-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    NSMutableArray *indexs = [[NSMutableArray alloc] init];
    for(ZzzContactGroup *group in _myContacts)
    {
        [indexs addObject:[group.name substringToIndex:1]];
    }
    return indexs;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    _selectedIndexPath = indexPath;
    if(indexPath.row == 0)
        return ;
    
    ZzzContactGroup *group = _myContacts[indexPath.section];
    ZzzContact *contact = group.contacts[indexPath.row];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"change info" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
                                  {
                                      contact.phoneNumber = alert.textFields[0].text;
                                      
//                                      [self.tableView reloadData];
                                      
                                      NSArray *indexPaths = @[indexPath];
                                      [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationMiddle];
                                      
                                  }];
    UIAlertAction *alertActionCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action)
                                  {
                                      
                                  }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textfield)
    {
        textfield.text = contact.phoneNumber;
    }];
    
    [alert addAction:alertAction];
    [alert addAction:alertActionCancel];
    
//    [self setNeedsStatusBarAppearanceUpdate];
    
    [self presentViewController:alert animated:YES completion:nil];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

-(void)switchValueChange:(UISwitch *)sw
{
    NSLog(@"section: %li, switch: %i", (long)sw.tag, sw.on);
    ZzzContactGroup *temp = _myContacts[sw.tag];
    ZzzContact *tempContact = temp.contacts[0];
    tempContact.switchStatus = sw.on;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    if(_footCount ==0)
//    {
//        _footCount++;
//        return 0.01;
//    }
//    tableView.tableHeaderView.
//    return 50;
//}

//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    return 20;
//}

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
