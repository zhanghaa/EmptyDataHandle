//
//  CustomOneVC.m
//  EmptyDataHandle
//
//  Created by apple on 17/1/23.
//  Copyright © 2017年 ZXL. All rights reserved.
//

#import "CustomOneVC.h"

@interface CustomOneVC () <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) NSMutableArray *dataSources;

@end

@implementation CustomOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"自定义显示图片";
    
    self.dataSources = [NSMutableArray new];
    
    self.xlTableView.dataSource = self;
    self.xlTableView.delegate = self;
    self.noDataImgName = @"NoOrderData";
    self.noDataTitle = @"亲，您没有订单任何订单消息哦！";

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"XLCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSources.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
