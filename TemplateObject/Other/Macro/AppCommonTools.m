//
//  AppCommonTools.m
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "AppCommonTools.h"
#import "CommonMacro.h"

float kMultiplied(CGFloat width) {
    return ((KSCREEN_WIDTH < 375) ? (KSCREEN_WIDTH / 375) : 1) * width;
}

NSString* getAppName(void)
{
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *appName = [bundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    if (!appName) {
        appName = [bundle objectForInfoDictionaryKey:@"CFBundleName"];
    }
    return appName;
}

/** 版本号 */
NSString* getVersion(void)
{
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *version = [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    return version;
}

/** app的Icon的图片名称 */
NSString* getAppIconName(void)
{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    //获取app中所有icon名字数组
    NSArray *iconsArr = infoDict[@"CFBundleIcons"][@"CFBundlePrimaryIcon"][@"CFBundleIconFiles"];
    //取最后一个icon的名字
    return [iconsArr lastObject];
}

UIFont* fontPingFangRegular(CGFloat size){
    return [UIFont fontWithName:@"PingFangSC-Regular" size:size];
}

UIFont* fontPingFangMedium(CGFloat size){
    return [UIFont fontWithName:@"PingFangSC-Medium" size:size];
}

UIFont* fontPingFangBold(CGFloat size){
    return [UIFont fontWithName:@"PingFangSC-Semibold" size:size];
}

UIFont* getSystemFont(CGFloat size){
    return [UIFont systemFontOfSize:size];
}

UIFont* getBoldSystemFont(CGFloat size){
    return [UIFont boldSystemFontOfSize:size];
}

UIImage* defualtPortraitPlaceholder(void){
    return Image(@"login_default_logo");
}

//UIImage* defaultImagePlacehholder(CGSize size){
//    UIImage *bottomImg = [UIImage imageWithColor:KHexColor(0xF4F4F4) size:size];
//    UIImage *img = Image(@"JBDefaultPlacehold");
//    CGSize imgSize = CGSizeZero;
//    CGFloat tmp = size.width;
//    if (size.width >= size.height) {
//        tmp = size.height;
//    }else{
//        tmp = size.width;
//    }
//    if (tmp >= 37) {
//        imgSize = CGSizeMake(37, 37);
//    }else{
//        imgSize = CGSizeMake(tmp - 10, tmp - 10);
//    }
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(ceil(size.width), ceil(size.height)), NO, [UIScreen mainScreen].scale);
//    [bottomImg drawInRect:CGRectMake(0, 0, ceil(size.width), ceil(size.height))];
//    [img drawInRect:CGRectMake((size.width - imgSize.width) * 0.5, (size.height - imgSize.height) * 0.5, imgSize.width, imgSize.height)];
//    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return resultingImage;
//    
//    //    return Image(@"MGDefaultPlacehold");
//}

UIColor *textColor_2c(void) {
    return KHexColor(0x2c2c2c);
}

UIColor *textColor_b2(void) {
    return KHexColor(0xb2b2b2);
}

UIColor *textColor_9a(void) {
    return KHexColor(0x9a9a9a);
}

/** 获取当前屏幕显示的viewcontroller */
UIViewController * getCurrentVC(void) {
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *currentVC = getCurrentVCFrom(rootViewController);
    return currentVC;
}

/** 查找控制器类型 */
UIViewController * getCurrentVCFrom(UIViewController *rootVC) {
    UIViewController *currentVC;
    if ([rootVC presentedViewController]) {
        // 视图是被presented出来的
        rootVC = [rootVC presentedViewController];
    }
    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        // 根视图为UITabBarController
        currentVC = getCurrentVCFrom([(UITabBarController *)rootVC selectedViewController]);
    } else if ([rootVC isKindOfClass:[UINavigationController class]]){
        // 根视图为UINavigationController
        currentVC = getCurrentVCFrom([(UINavigationController *)rootVC visibleViewController]);
    }
//    else if([rootVC isKindOfClass:[JBBasePageController class]]){
        //
//        currentVC = [(JBBasePageController *)rootVC currentViewController];
//    }
    else {
        // 根视图为非导航类
        currentVC = rootVC;
    }
    return currentVC;
}

CAGradientLayer* getGradientLayerWithSize(CGSize size,NSInteger radius,NSArray *colors ,NSArray *locations, CGPoint starPoint,CGPoint endPoint)
{
    CAGradientLayer *gradientLayer0 = [[CAGradientLayer alloc] init];
    gradientLayer0.cornerRadius = radius;
    gradientLayer0.frame = CGRectMake(0, 0, size.width, size.height);
    gradientLayer0.colors = colors;
    gradientLayer0.locations = locations;
    [gradientLayer0 setStartPoint:starPoint];
    [gradientLayer0 setEndPoint:endPoint ];
    return gradientLayer0;
}
