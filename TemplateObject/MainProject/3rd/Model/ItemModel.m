//
//  ItemModel.m
//  TemplateObject
//
//  Created by Worm on 2020/5/15.
//  Copyright © 2020 Worm. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel
+ (instancetype)itemTitle:(NSString *)title nextClass:(Class)c {
    ItemModel * model = [[ItemModel alloc]init];
    model.title = title;
    model.nextClass = c;
    return model;
}
@end
