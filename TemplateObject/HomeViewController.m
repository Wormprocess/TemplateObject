//
//  HomeViewController.m
//  TemplateObject
//
//  Created by 海啸 on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%d",kDevice_Is_iPhone5);
}

@end
