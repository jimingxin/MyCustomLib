//
//  TFDViewController.m
//  MyCustomLib
//
//  Created by jmx890610@gmail.com on 07/18/2018.
//  Copyright (c) 2018 jmx890610@gmail.com. All rights reserved.
//

#import "TFDViewController.h"
#import <MyCustomLib/TFDManager.h>

@interface TFDViewController ()

@end

@implementation TFDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    TFDManager *manager = [[TFDManager alloc] init];
    [manager httpAction:@"http://www.baidu.com" complete:^(id data) {
        NSLog(@"网络通讯成功");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
