//
//  AppDelegate.m
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseTabbarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    BaseTabbarController * vc = [[BaseTabbarController alloc]init];
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
