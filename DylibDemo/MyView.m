//
//  MyView.m
//  DylibTest
//
//  Created by mac on 15/9/15.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "MyView.h"

@interface MyView ()

@end

@implementation MyView

- (void)awakeFromNib
{
    [[NSBundle mainBundle] loadNibNamed:@"MyView" owner:self options:nil];
    [self addSubview:_contentView];
}

@end
