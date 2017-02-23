//
//  ViewController.m
//  HYPageView
//
//  Created by UniqueThink on 17/2/9.
//  Copyright © 2017年 张庆勇. All rights reserved.
//

#import "ViewController.h"
#import "HYPageView.h"
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface ViewController ()

@end

@implementation ViewController
-(void)viewWillAppear:(BOOL)animated
{
      [self.navigationController setNavigationBarHidden:YES animated:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationItem.title=@"朋友圈";
    [self.view addSubview:[self test2]];
}
/*
 如果是图片记得修改button背景图片
 */
- (HYPageView *)test1 {
    HYPageView *pageView = [[HYPageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) withTitles:@[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png"] withViewControllers:@[@"Home",@"Home1",@"Home2",@"Home3",@"Home4",@"Home5",@"Home",@"Home2"] withParameters:nil];
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [leftButton setImage:[UIImage imageNamed:@"search_"] forState:UIControlStateNormal];
    pageView.isAdapteNavigationBar = YES;
    leftButton.frame = CGRectMake(0, 0, 50, 40);
    [leftButton setTintColor:[UIColor blackColor]];
    leftButton.transform = CGAffineTransformMakeScale(.7, .7);
    pageView.leftButton = leftButton;
    pageView.selectedColor = [UIColor colorWithRed:143./255 green:122/255. blue:16/255. alpha:1];
    return pageView;
}
- (HYPageView *)test2 {
    HYPageView *pageView = [[HYPageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) withTitles:@[@"个性推介",@"歌单",@"主播电台",@"排行榜"] withViewControllers:@[@"Home",@"Home2",@"Home3",@"Home4"] withParameters:nil];
    
    pageView.selectedColor = [UIColor redColor];
    pageView.unselectedColor = [UIColor blackColor];
    
    return pageView;
}

- (HYPageView *)test3 {
    HYPageView *pageView = [[HYPageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) withTitles:@[@"数学",@"语文",@"英语",@"历史",@"化学",@"物理",@"政治",@"化学",@"物理",@"政治"] withViewControllers:@[@"Home1",@"Home2",@"Home3",@"Home4",@"Home5",@"Home",@"Home"] withParameters:nil];
    
    pageView.selectedColor = [UIColor redColor];
    pageView.unselectedColor = [UIColor blackColor];
    pageView.font = [UIFont fontWithName:@"Zapfino" size:16];
    return pageView;
}
- (HYPageView *)test4 {
    HYPageView *pageView = [[HYPageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) withTitles:@[@"图书馆的妹子",@"萌妹",@"腹黑妹子",@"萝莉妹子",@"天然呆妹子",@"蠢萌妹子"] withViewControllers:@[@"Home",@"Home",@"Home2",@"Home3",@"Home4",@"Home5"] withParameters:nil];
    pageView.isAnimated = YES;
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [leftButton setImage:[UIImage imageNamed:@"search_"] forState:UIControlStateNormal];
    pageView.isAdapteNavigationBar = YES;
    leftButton.frame = CGRectMake(0, 0, 50, 40);
    [leftButton setTintColor:[UIColor blackColor]];
    leftButton.transform = CGAffineTransformMakeScale(.7, .7);
    pageView.leftButton = leftButton;
    
    pageView.selectedColor = [UIColor redColor];
    pageView.unselectedColor = [UIColor blackColor];
    pageView.font = [UIFont fontWithName:@"HoeflerText-Black" size:15];
    return pageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
