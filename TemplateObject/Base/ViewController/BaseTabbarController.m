//
//  BaseTabbarController.m
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "BaseTabbarController.h"
#import "BaseNavigationController.h"
#import "TrdListController.h"

@interface BaseTabbarController ()

@end

@implementation BaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewControllers];
}

- (void)addChildViewControllers {
    TrdListController * trd = [[TrdListController alloc]init];
    [self addChildrenViewController:trd andTitle:@"3方" andImageName:@"" andSelectImage:@""];
}

- (void)addChildrenViewController:(UIViewController *)childVC
                         andTitle:(NSString *)title
                       andImageName:(NSString *)imageName
                   andSelectImage:(NSString *)selectedImage {
    
    BaseNavigationController * navi = [[BaseNavigationController alloc]initWithRootViewController:childVC];
    [navi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColor.whiteColor,NSFontAttributeName:[UIFont systemFontOfSize:8.0]} forState:UIControlStateNormal];
    [navi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColor.redColor,NSFontAttributeName:[UIFont systemFontOfSize:8.0]} forState:UIControlStateSelected];
    
    UIImage * norImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage * selectImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    navi.tabBarItem.image = norImage;
    navi.tabBarItem.selectedImage =  selectImage;
    navi.tabBarItem.title = title;
    childVC.title = title;
    [self addChildViewController:navi];
}
@end
