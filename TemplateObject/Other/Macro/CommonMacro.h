//
//  CommonMacro.h
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//  公共宏

#ifndef CommonMacro_h
#define CommonMacro_h

//获取屏幕 宽度、高度
#define KSCREEN_WIDTH    ([UIScreen mainScreen].bounds.size.width)

#define KSCREEN_HEIGHT   ([UIScreen mainScreen].bounds.size.height)

#define TOPSAFE_HEIGHT        (kDevice_Is_iPhoneX ? 44.0f : 20.0f)

#define BOTTOMSAFE_HEIGHT     (kDevice_Is_iPhoneX? 34 : 0)

#define NAVIBAR_HEIGHT  (CGFloat)(kDevice_Is_iPhoneX?(88.0):(64.0))

#define TABBAR_HEIGHT                                 (CGFloat)(kDevice_Is_iPhoneX?(49.0 + 34.0):(49.0))


// 适配比例 iPhone6 为标准  等比例缩放宽高位置 4（320*480） 5（320*568）6（375*667）6+（414*736）
//适配不同屏幕的宽高适配
#define kScreenWidthRatio  (UIScreen.mainScreen.bounds.size.width / 375.0)
#define kScreenHeightRatio (UIScreen.mainScreen.bounds.size.height / 667.0)
#define AdaptedWidth(x)  ceilf((x) * kScreenWidthRatio)
#define AdaptedHeight(x) ceilf((x) * kScreenHeightRatio)

//加载图片
#define Image(name) [UIImage imageNamed:name]

#define  kFont(font)             [UIFont systemFontOfSize:(font)]
#define  kBoldFont(font)         [UIFont boldSystemFontOfSize:(font)]
#define  kAdaptiveFont(R)        [UIFont systemFontOfSize:(AdaptedWidth(R))]
#define  kAdaptiveBoldFont(R)    [UIFont boldSystemFontOfSize:(AdaptedWidth(R))]

//字符串拼接
#define NSStringWithFormat(...) [NSString stringWithFormat:__VA_ARGS__]

//颜色相关
#define KColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

#define KColora(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

#define KRandomColor KColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#define KHexColor(color) [UIColor colorWithRed:((float)((color & 0xFF0000) >> 16))/255.0 green:((float)((color & 0xFF00) >> 8))/255.0 blue:((float)(color & 0xFF))/255.0 alpha:1.0]

#define KHexAColor(color, a) [UIColor colorWithRed:((float)((color & 0xFF0000) >> 16))/255.0 green:((float)((color & 0xFF00) >> 8))/255.0 blue:((float)(color & 0xFF))/255.0 alpha:a]

// 判断机型
#define kDevice_Is_iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define kDevice_Is_iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define kDevice_Is_iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)

#define kDevice_Is_iPhoneX  \
({BOOL isPhoneX = NO;\
if (@available(iOS 11.0, *)) {\
isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;\
}\
(isPhoneX);})

// 沙盒路径
#define PATH_OF_APP_HOME    NSHomeDirectory()

#define PATH_OF_TEMP        NSTemporaryDirectory()

#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

// 判断空并且替换
#define STEmptyStrReplace(str1,str2)  ([str1 isKindOfClass:[NSNull class]] || str1 == nil || [str1 length] < 1 || [str1 isEqualToString:@"<null>"] || [str1 isEqualToString:@"(null)"]? str2 : str1)

//对象是否为空
static inline BOOL IsEmpty(id object) {
    return object == nil || [object isEqual:[NSNull null]]
    || ([object respondsToSelector:@selector(length)] && [(NSData *)object length] == 0)
    || ([object respondsToSelector:@selector(count)] && [(NSArray *)object count] == 0);
}

// 加载XIB view
#define  kLOADNIB [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject]

//弱引用当前对象
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
/** 弱引用 */
#define WeakType(type) __weak typeof(type) weak##type = type;

//获取根window
#define kKeyWindow [UIApplication sharedApplication].keyWindow

#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\t%s\n",__func__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif


#define gcd_dispatch_main_async_safe(block)        \
if ([NSThread isMainThread]) {                 \
block();                                       \
} else {                                       \
dispatch_async(dispatch_get_main_queue(), block);\
}

#endif /* CommonMacro_h */
