//
//  ItemModel.h
//  TemplateObject
//
//  Created by Worm on 2020/5/15.
//  Copyright © 2020 Worm. All rights reserved.
//

#import "BaseObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface ItemModel : BaseObject
@property(nonatomic, strong) NSString *title;
@property(nonatomic, assign) Class nextClass;
+ (instancetype)itemTitle:(NSString *)title nextClass:(Class)c;
@end

NS_ASSUME_NONNULL_END
