//
//  ViewController.m
//  EmptyDataHandle
//
//  Created by apple on 17/1/23.
//  Copyright © 2017年 ZXL. All rights reserved.
//

#import "ViewController.h"
#import "DefaultEmptyVC.h"
#import "CustomOneVC.h"
#import "CustomTwoVC.h"
#import "CustomThreeVC.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) NSArray *dataSources;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"常见空数据页面显示";
    
    self.dataSources = @[@"默认显示",@"自定义显示图片",@"自定义显示图片、文字",@"空数据时显示按钮触发事件"];

    self.xlTableView.dataSource = self;
    self.xlTableView.delegate = self;
    self.isShowEmptyData = NO;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"XLCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = self.dataSources[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSources.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[[DefaultEmptyVC alloc] init] animated:YES];
    }
    if (indexPath.row == 1) {
        [self.navigationController pushViewController:[[CustomOneVC alloc] init] animated:YES];
    }
    if (indexPath.row == 2) {
        [self.navigationController pushViewController:[[CustomTwoVC alloc] init] animated:YES];
    }
    if (indexPath.row == 3) {
        [self.navigationController pushViewController:[[CustomThreeVC alloc] init] animated:YES];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
