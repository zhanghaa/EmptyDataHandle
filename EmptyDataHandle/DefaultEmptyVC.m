//
//  DefaultEmptyVC.m
//  EmptyDataHandle
//
//  Created by apple on 17/1/23.
//  Copyright © 2017年 ZXL. All rights reserved.
//

#import "DefaultEmptyVC.h"

@interface DefaultEmptyVC () <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) NSMutableArray *dataSources;

@end

@implementation DefaultEmptyVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"默认空数据页面";
    
    self.dataSources = [NSMutableArray new];
    
    self.xlTableView.dataSource = self;
    self.xlTableView.delegate = self;

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
