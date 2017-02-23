//
//  Home.m
//  HYPageView
//
//  Created by UniqueThink on 17/2/9.
//  Copyright © 2017年 张庆勇. All rights reserved.
//

#import "Home.h"
#import "FirstViewController.h"
@interface Home ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView*table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    table.delegate=self;
    table.dataSource=self;
    table.tableFooterView=[UIView new];
    [self.view addSubview:table];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellindex=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellindex];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellindex];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"第%ld个数据",(long)indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FirstViewController *FirstVC=[[FirstViewController alloc]init];
    FirstVC.title=@"萌妹";
    [self.navigationController pushViewController:FirstVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
