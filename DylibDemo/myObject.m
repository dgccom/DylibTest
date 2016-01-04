//
//  myObject.m
//  DylibTest
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "myObject.h"

@implementation myObject

-(void)test
{
    self.block = ^{
        typeof(self) o = [[myObject alloc] init];
        [o log];
        NSLog(@"%@",o);
    };
}

-(void)log
{
    NSLog(@"123");
}

-(void)dealloc{
    NSLog(@"释放");
}

@end
