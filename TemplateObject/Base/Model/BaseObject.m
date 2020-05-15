//
//  BaseObject.m
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//

#import "BaseObject.h"
#import <YYModel.h>

@implementation BaseObject

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    return [self yy_modelInitWithCoder:aDecoder];
}

- (id)copyWithZone:(NSZone *)zone {
    return [self yy_modelCopy];
}

- (NSUInteger)hash {
    return [self yy_modelHash];
}

- (BOOL)isEqual:(id)object {
    return [self yy_modelIsEqual:object];
}

@end
