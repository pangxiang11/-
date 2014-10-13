//
//  UserModel.h
//  数据库
//
//  Created by qianfeng on 14-10-13.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject
@property(nonatomic,assign)NSInteger userId;
@property(nonatomic,copy)NSString *userName;
@property(nonatomic,copy)NSString *phoneNumber;
@property(nonatomic,strong)UIImage *headerImg;
@end
