//
//  MyViewController.m
//  DylibTest
//
//  Created by mac on 15/8/24.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *bt = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [bt addTarget:self action:@selector(Click) forControlEvents:UIControlEventTouchUpInside];
    bt.backgroundColor = [UIColor greenColor];
    bt.center = self.view.center;
    [self.view addSubview:bt];
}

-(NSNumber *)Click
{
    NSLog(@"U r load the dylib");
    return @(YES);
}

@end
