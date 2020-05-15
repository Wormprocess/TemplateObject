//
//  BaseNavigationController.m
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureNaviBar];
}

- (void)configureNaviBar {
    
    self.navigationBar.translucent = NO ;
    self.navigationBar.barTintColor = KHexColor(0xFFFFFF);
    self.navigationBar.tintColor = textColor_9a();
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[[UIImage alloc] init]];
    //nav 标题颜色
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: fontPingFangMedium(17),
                                     NSForegroundColorAttributeName: textColor_2c()
                                     };
    [self.navigationBar setTitleTextAttributes:textAttributes];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (!viewController) {
        return;
    }
    if (self.viewControllers.count > 0 ){
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
