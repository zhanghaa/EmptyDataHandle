//
//  CustomThreeVC.m
//  EmptyDataHandle
//
//  Created by apple on 17/1/23.
//  Copyright © 2017年 ZXL. All rights reserved.
//

#import "CustomThreeVC.h"

@interface CustomThreeVC () <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) NSMutableArray *dataSources;

@end

@implementation CustomThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"空页面显示按钮触发事件";
    
    self.dataSources = [NSMutableArray new];
    
    self.xlTableView.dataSource = self;
    self.xlTableView.delegate = self;
    self.noDataImgName = @"NoOrderData";
    self.noDataTitle = @"亲，您没有订单任何订单消息哦！";
    self.noDataDetailTitle = @"您购买的宝贝将会呈现在这里";
    self.btnTitle = @"马上逛逛";
    
}

-(void)buttonEvent
{
    NSLog(@"马上逛逛");
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
