//
//  ViewController.m
//  SideMenuAbove
//
//  Created by GLB-254 on 11/10/16.
//  Copyright © 2016 avinash. All rights reserved.
//

#import "ViewController.h"
#import "AVIsideMenuView.h"
#import "SecondViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UITableView *sideMenuTableView;
@property(nonatomic,strong)AVIsideMenuView *sideMenuView;

@end

@implementation ViewController {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    _sideMenuTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-80, [UIScreen mainScreen].bounds.size.height)];
    
    _sideMenuView = [[AVIsideMenuView alloc]init];
    _sideMenuView.onView = self.view;
    _sideMenuView.sideMenuColor = [UIColor whiteColor];
    _sideMenuView.sideMenuTable = self.sideMenuTableView;
    [self.view addSubview:_sideMenuView];
    
    UIButton *menuButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 30, 40, 30)];
    menuButton.backgroundColor = [UIColor blackColor];
    [self.view addSubview:menuButton];
    
    _sideMenuView.onButtonTap = menuButton;
    
}

#pragma mark  - tableview delegates
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 10;
//}
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//}
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 40.0f;
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
