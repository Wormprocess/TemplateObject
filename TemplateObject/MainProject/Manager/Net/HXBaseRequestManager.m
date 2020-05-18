//
//  HXBaseRequestManager.m
//  TemplateObject
//
//  Created by Worm on 2020/5/18.
//  Copyright © 2020 Worm. All rights reserved.
//

#import "HXBaseRequestManager.h"
#import <AFNetworking.h>

@interface HXBaseRequestManager()
@property(nonatomic, strong) AFHTTPSessionManager *sessionManager;
@end

@implementation HXBaseRequestManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static HXBaseRequestManager *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

- (AFHTTPSessionManager *)sessionManager {
    if (!_sessionManager) {
        _sessionManager = [AFHTTPSessionManager manager];
        _sessionManager.requestSerializer.serializer
    }
    return _sessionManager;
}

@end
