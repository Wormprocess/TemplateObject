//
//  AppCommonTools.h
//  TemplateObject
//
//  Created by 海啸 on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 5s适配*/
float kMultiplied(CGFloat width);

/** app 名称*/
NSString* getAppName(void);

/** 版本号 */
NSString* getVersion(void);

/** app的Icon的图片名称 */
NSString* getAppIconName(void);

/** 获取平方字体*/
UIFont* fontPingFangRegular(CGFloat size);
UIFont* fontPingFangMedium(CGFloat size);
UIFont* fontPingFangBold(CGFloat size);

UIFont* getSystemFont(CGFloat size);
UIFont* getBoldSystemFont(CGFloat size);

/** 头像默认占位图*/
UIImage* defualtPortraitPlaceholder(void);
//UIImage* defaultImagePlacehholder(CGSize size);

/** 获取用户身份标识 */
UIImage *getUserIdentityWithIdentityCode(NSInteger code);


//常用字体颜色
UIColor *textColor_2c(void);//2c2c2c
UIColor *textColor_b2(void);//b2b2b2
UIColor *textColor_9a(void);//9a9a9a


/** 获取当前屏幕显示的viewcontroller */
UIViewController * getCurrentVC(void);

/** 查找控制器类型 */
UIViewController * getCurrentVCFrom(UIViewController *);

/** 设置渐变色*/
CAGradientLayer* getGradientLayerWithSize(CGSize size,NSInteger radius,NSArray *colors ,NSArray *locations, CGPoint starPoint,CGPoint endPoint);
