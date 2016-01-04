//
//  myObject.h
//  DylibTest
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myObject : NSObject
@property(nonatomic,copy)void(^block)();

-(void)test;

@end
