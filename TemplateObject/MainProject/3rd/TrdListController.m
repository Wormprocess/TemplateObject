//
//  TrdListController.m
//  TemplateObject
//
//  Created by Worm on 2020/5/15.
//  Copyright © 2020 Worm. All rights reserved.
//

#import "TrdListController.h"
#import "ItemModel.h"
#import "AFNetController.h"
#import "ImagePickerController.h"
#import "YYKitListController.h"

@interface TrdListController ()
@property(nonatomic, strong) NSArray *dataArray;
@end

@implementation TrdListController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[
        [ItemModel itemTitle:@"AFNetworking" nextClass:AFNetController.class],
        [ItemModel itemTitle:@"TZImagePicker" nextClass:ImagePickerController.class],
        [ItemModel itemTitle:@"YYKit" nextClass:YYKitListController.class],
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
    ItemModel * model = self.dataArray[indexPath.row];
    UIViewController * vc = [model.nextClass new];
    vc.title = model.title;
    [self.navigationController pushViewController:vc animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}


@end
