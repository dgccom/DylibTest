//
//  ViewController.m
//  DylibDemo
//
//  Created by mac on 15/8/24.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "SimplePingHelper.h"
#import "MyView.h"

@interface ViewController ()


@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myObject * o = [myObject new];
    [o test];
    o.block();
    
    UIButton *bt = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [bt addTarget:self action:@selector(Click) forControlEvents:UIControlEventTouchUpInside];
    bt.backgroundColor = [UIColor yellowColor];
    bt.center = self.view.center;
    [self.view addSubview:bt];
    
    UILongPressGestureRecognizer *longPressGR =
    [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                  action:@selector(longPress:)];
    longPressGR.minimumPressDuration = 3;
    [bt addGestureRecognizer:longPressGR];
    
}

-(void)longPress:(UILongPressGestureRecognizer *)ges
{
 
}

-(void)ping:(NSNumber *)num
{
    
}

-(void)Click
{
    NSString *documentsPath = [NSString stringWithFormat:@"%@/Documents/DylibTest.framework",NSHomeDirectory()];
    [self bundleLoadDylibWithPath:documentsPath];
}


- (void)bundleLoadDylibWithPath:(NSString *)path
{
    NSError *err = nil;
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    if ([bundle loadAndReturnError:&err])
    {
        NSLog(@"bundle load framework success.");
    }
    else
    {
        NSLog(@"bundle load framework err:%@",err);
    }
    
    Class MyViewController = NSClassFromString(@"MyViewController");
    if (MyViewController)
    {
        id myVC = [[MyViewController alloc] init];
        [self.navigationController pushViewController:myVC animated:YES];
        id a =objc_msgSend(myVC,@selector(Click));
        NSLog(@"%@",a);
    }
}
@end
