//
//  ViewController.m
//  Tools
//
//  Created by dubhe on 2018/2/12.
//  Copyright © 2018年 Dubhe. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 300) / 2, 200, 300, 200)];
    view.backgroundColor = [UIColor blueColor];
    view.hitTestSlop = UIEdgeInsetsMake(50, 50, 50, 50);
    [self.view addSubview:view];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewDidTap:)];
    [view addGestureRecognizer:tap];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 200) / 2, 64, 200, 200)];
    button.backgroundColor = [UIColor redColor];
    button.hitTestSlop = UIEdgeInsetsMake(-50, -50, -50, -50);
    [button addTarget:self action:@selector(buttonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)viewDidTap:(UITapGestureRecognizer *)tapGesture {
    NSLog(@"view 被点击");
}

- (void)buttonDidTap:(UIButton *)sender {
    NSLog(@"button被点击");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
