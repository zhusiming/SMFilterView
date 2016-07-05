//
//  ViewController.m
//  SMFilterView
//
//  Created by 朱思明 on 16/7/5.
//  Copyright © 2016年 朱思明. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    SMFilterView *filterView = [[SMFilterView alloc] initWithFrame:CGRectMake(0, 20, 320, 35)];
    filterView.delegate = self;
    filterView.items = @[@[@"全部",@"科幻",@"动作",@"爱情",@"科幻",@"动作",@"爱情",@"动作",@"爱情",@"动作",@"爱情",@"动作",@"爱情"],@[@"全部",@"科幻",@"动作",@"爱情",@"科幻",@"动作",@"爱情"],@[@"全部",@"科幻",@"动作",@"爱情",@"科幻",@"动作",@"爱情"]];
    [self.view addSubview:filterView];
    
}

//点击事调用的协议方法
- (void)filterView:(SMFilterView *)filterView
didSelectItemOfIndexPath:(NSIndexPath *)indexPath
         itemTitle:(NSString *)itemTitle
AllSelectedIndexPaths:(NSArray *)selectedIndexPaths

        itemTitles:(NSArray *)itemTitles
{
    NSLog(@"indexPath:%@",indexPath);
    NSLog(@"selectedTitle:%@",itemTitle);
    
    NSLog(@"----------------------");
    
    NSLog(@"indexPaths:%@",selectedIndexPaths);
    NSLog(@"sitemTitles:%@",itemTitles);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
