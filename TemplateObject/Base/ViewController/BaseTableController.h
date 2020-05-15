//
//  BaseTableController.h
//  TemplateObject
//
//  Created by Worm on 2020/5/14.
//  Copyright © 2020 海啸. All rights reserved.
//  普通一屏列表基类

#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableController : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;
///重新此方法 UITableViewStyle
- (UITableViewStyle)getTableStyle;
- (void)layoutTableView;

@end

NS_ASSUME_NONNULL_END
