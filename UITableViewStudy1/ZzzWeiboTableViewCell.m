//
//  ZzzWeiboTableViewCell.m
//  UITableViewStudy1
//
//  Created by zhouzezhou on 2017/4/23.
//  Copyright © 2017年 zhouzezhou. All rights reserved.
//

#import "ZzzWeiboTableViewCell.h"
#import "ZzzWeibo.h"
#define KCColor(r,g,b) [UIColor colorWithHue:r/255.0 saturation:g/255.0 brightness:b/255.0 alpha:1] //颜色宏定义
#define ZzzWeiboTableViewCellControlSpacing 10 //控件间距
#define ZzzWeiboTableViewCellBackgroundColor KCColor(251,251,251)
#define ZzzWeiboGrayColor KCColor(50,50,50)
#define ZzzWeiboLightGrayColor KCColor(120,120,120)

#define ZzzWeiboTableViewCellWidth 40 //头像宽度
#define ZzzWeiboTableViewCellHeight ZzzWeiboTableViewCellWidth
#define ZzzWeiboTableViewCellUserNameFontSize 14
#define ZzzWeiboTableViewCellMbTypeWidth 13 //会员图标宽度
#define ZzzWeiboTableViewCellMbTypeHeight ZzzWeiboTableViewCellMbTypeWidth
#define ZzzWeiboTableViewCellCreateAtFontSize 12
#define ZzzWeiboTableViewCellSourceFontSize 12
#define ZzzWeiboTableViewCellTextFontSize 14

@interface ZzzWeiboTableViewCell()
{
    UIImageView *_profileImage;//头像
    UIImageView *_mbType;//会员类型
    UILabel *_userName;
    UILabel *_time;
    UILabel *_device;
    UILabel *_text;
}

@end

@implementation ZzzWeiboTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self)
    {
        [self initSubView];
    }
    return self;
}

-(void)initSubView
{
    // 头像
    _profileImage =[[UIImageView alloc]init];
    [self addSubview:_profileImage];
    
    //用户名
    _userName=[[UILabel alloc]init];
    _userName.textColor=ZzzWeiboGrayColor;
    _userName.font=[UIFont systemFontOfSize:ZzzWeiboTableViewCellUserNameFontSize];
    [self addSubview:_userName];
    
    //会员类型
    _mbType=[[UIImageView alloc]init];
    [self addSubview:_mbType];
    
    //日期
    _time=[[UILabel alloc]init];
    _time.textColor=ZzzWeiboLightGrayColor;
    _time.font=[UIFont systemFontOfSize:ZzzWeiboTableViewCellCreateAtFontSize];
    [self addSubview:_time];
    
    //设备
    _device=[[UILabel alloc]init];
    _device.textColor=ZzzWeiboLightGrayColor;
    _device.font=[UIFont systemFontOfSize:ZzzWeiboTableViewCellSourceFontSize];
    [self addSubview:_device];
    
    //内容
    _text=[[UILabel alloc]init];
    _text.textColor=ZzzWeiboGrayColor;
    _text.font=[UIFont systemFontOfSize:ZzzWeiboTableViewCellTextFontSize];
    _text.numberOfLines=0;
    //    _text.lineBreakMode=NSLineBreakByWordWrapping;
    [self addSubview:_text];
}

// 设置微博
-(void)setWeibo:(ZzzWeibo *)weibo{
    //设置头像大小和位置
    CGFloat profileImageX=10,profileImageY=10;
    CGRect profileImageRect=CGRectMake(profileImageX, profileImageY, ZzzWeiboTableViewCellWidth, ZzzWeiboTableViewCellHeight);
    _profileImage.image=[UIImage imageNamed:weibo.profileImageUrl];
    _profileImage.frame=profileImageRect;
    
    
    //设置会员图标大小和位置
    CGFloat userNameX= CGRectGetMaxX(_profileImage.frame)+ZzzWeiboTableViewCellControlSpacing ;
    CGFloat userNameY=profileImageY;
    //根据文本内容取得文本占用空间大小
    CGSize userNameSize=[weibo.userName sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:ZzzWeiboTableViewCellUserNameFontSize]}];
    CGRect userNameRect=CGRectMake(userNameX, userNameY, userNameSize.width,userNameSize.height);
    _userName.text=weibo.userName;
    _userName.frame=userNameRect;
    
    
    //设置会员图标大小和位置
    CGFloat mbTypeX=CGRectGetMaxX(_userName.frame)+ZzzWeiboTableViewCellControlSpacing;
    CGFloat mbTypeY=profileImageY;
    CGRect mbTypeRect=CGRectMake(mbTypeX, mbTypeY, ZzzWeiboTableViewCellMbTypeWidth, ZzzWeiboTableViewCellMbTypeHeight);
    _mbType.image=[UIImage imageNamed:weibo.mbtype];
    _mbType.frame=mbTypeRect;
    
    
    //设置发布日期大小和位置
    CGSize createAtSize=[weibo.time sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:ZzzWeiboTableViewCellCreateAtFontSize]}];
    CGFloat timeX=userNameX;
    CGFloat timeY=CGRectGetMaxY(_profileImage.frame)-createAtSize.height;
    CGRect timeRect=CGRectMake(timeX, timeY, createAtSize.width, createAtSize.height);
    _time.text=weibo.time;
    _time.frame=timeRect;
    
    
    //设置设备信息大小和位置
    CGSize deviceSize=[weibo.device sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:ZzzWeiboTableViewCellSourceFontSize]}];
    CGFloat sourceX=CGRectGetMaxX(_time.frame)+ZzzWeiboTableViewCellControlSpacing;
    CGFloat sourceY=timeY;
    CGRect sourceRect=CGRectMake(sourceX, sourceY, deviceSize.width,deviceSize.height);
    _device.text=weibo.device;
    _device.frame=sourceRect;
    
    
    //设置微博内容大小和位置
    CGFloat textX=profileImageX;
    CGFloat textY=CGRectGetMaxY(_profileImage.frame)+ZzzWeiboTableViewCellControlSpacing;
    CGFloat textWidth=self.frame.size.width-ZzzWeiboTableViewCellControlSpacing*2;
    CGSize textSize=[weibo.text boundingRectWithSize:CGSizeMake(textWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:ZzzWeiboTableViewCellTextFontSize]} context:nil].size;
    CGRect textRect=CGRectMake(textX, textY, textSize.width, textSize.height);
    _text.text=weibo.text;
    _text.frame=textRect;
    
    _height = CGRectGetMaxY(_text.frame) + ZzzWeiboTableViewCellControlSpacing;
}

// 重写选择事件，取消选中
-(void)setSelected:(BOOL)selected animated:(BOOL)animated{
    
}

@end
