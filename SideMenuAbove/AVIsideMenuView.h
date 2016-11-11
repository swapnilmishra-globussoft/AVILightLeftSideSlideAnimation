//
//  AVIsideMenuView.h
//  SideMenuAbove
//
//  Created by GLB-254 on 11/10/16.
//  Copyright © 2016 avinash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlurEffectVisualView.h"

@interface AVIsideMenuView : UIView

#pragma mark Properties

@property (nonatomic,strong) BlurEffectVisualView *blurEffectView;
@property (nonatomic, retain) UIColor *sideMenuColor;
@property (nonatomic,retain) UITableView *sideMenuTable;
@property (nonatomic,strong) UIView *onView;
@property (nonatomic,strong) UIButton *onButtonTap;

#pragma mark Methods
-(AVIsideMenuView *)init;
-(void)setTableView:(UITableView *)tableView;
-(void)slideFromLeft;
-(void)slideFromRight;

- (UIColor *)sideMenuColor; // getter method
- (void)setSideMenuColor:(UIColor *)value; //setter method

-(UITableView *)sideMenuTable;
-(void)setSideMenuTable:(UITableView *)tableView;

-(UIView *)onView;
-(void)setOnView:(UIView *)onView;

-(UIButton *)onButtonTap;
-(void) setOnButtonTap:(UIButton *)sender;

@end
