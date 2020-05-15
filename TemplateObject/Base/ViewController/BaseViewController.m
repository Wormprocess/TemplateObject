//
//  BaseViewController.m
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"当前显示的vc-%@",NSStringFromClass(self.class));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:self.title?:@"返回" style:(UIBarButtonItemStylePlain) target:self action:@selector(clickBackEvent)];
}

- (void)clickBackEvent {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSLog(@"释放了啦-%@",NSStringFromClass(self.class));
}

@end
