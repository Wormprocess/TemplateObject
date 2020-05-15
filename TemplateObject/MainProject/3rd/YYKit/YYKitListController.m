//
//  YYKitListController.m
//  TemplateObject
//
//  Created by Worm on 2020/5/15.
//  Copyright © 2020 Worm. All rights reserved.
//

#import "YYKitListController.h"
#import "ItemModel.h"

@interface YYKitListController ()
@property(nonatomic, strong) NSArray *dataArray;
@end

@implementation YYKitListController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[
            [ItemModel itemTitle:@"YYModel" nextClass:nil],
            [ItemModel itemTitle:@"YYCache" nextClass:nil],
            [ItemModel itemTitle:@"YYImage" nextClass:nil],
            [ItemModel itemTitle:@"YYWebImage" nextClass:nil],
            [ItemModel itemTitle:@"YYText" nextClass:nil],
            [ItemModel itemTitle:@"YYKeyboardManager" nextClass:nil],
            [ItemModel itemTitle:@"YYDispatchQueuePool" nextClass:nil],
            [ItemModel itemTitle:@"YYAsyncLayer" nextClass:nil],
            [ItemModel itemTitle:@"YYCategories" nextClass:nil],
        ];
}

#pragma mark - tableView代理
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.textColor = textColor_2c();
    }
    ItemModel * model = self.dataArray[indexPath.row];
    cell.textLabel.text = model.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@--%ld",tableView,(long)indexPath.row);
//    ItemModel * model = self.dataArray[indexPath.row];
//    UIViewController * vc = [model.nextClass new];
//    vc.title = model.title;
//    [self.navigationController pushViewController:vc animated:YES];
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

@end
