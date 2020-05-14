//
//  AppDelegate.m
//  TemplateObject
//
//  Created by 海啸 on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    HomeViewController * vc = [[HomeViewController alloc]init];
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
