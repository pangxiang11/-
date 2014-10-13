//
//  DBManager.m
//  数据库
//
//  Created by qianfeng on 14-10-13.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import "DBManager.h"
#import "FMDatabase.h"
@implementation DBManager
{
    FMDatabase *_fmdb;
}
-(void)insertUser:(UserModel *)model
{
    
}

-(void)deleteUser:(UserModel *)model
{
    
}

-(void)updateUser:(UserModel *)model
{
    
}

-(NSMutableArray *)fetchAll
{
    return nil;
}

-(NSArray *)searchWithStr:(NSString *)str
{
    return nil;
}
+(id)sharedManager
{
    static DBManager *dbm = nil;
    if (!dbm) {
        dbm = [[DBManager alloc]init];
    }
    return dbm;
}
-(id)init
{
    self = [super init];
    if (self) {
        NSString *dbPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/user.db"];
        //创建一个fmdb对象
        _fmdb = [[FMDatabase alloc]initWithPath:dbPath];
        BOOL isSuccess = [_fmdb open];
        if (!isSuccess) {
            NSLog(@"打开数据库失败-->%@",_fmdb.lastErrorMessage);
        }
        else
        {
            NSString *createSql = @"create table if not exists user(userid integer primary key autoincrement ,name varchar(64),phonenumber char(16),headerImg blob)";
            BOOL success = [_fmdb executeUpdate:createSql];
            if (!success) {
                NSLog(@"创建表失败-->%@",_fmdb.lastErrorMessage);
            }
            
        }
    }
    return self;
}
@end







