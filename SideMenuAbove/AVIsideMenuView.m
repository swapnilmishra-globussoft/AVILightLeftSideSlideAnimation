//
//  AVIsideMenuView.m
//  SideMenuAbove
//
//  Created by GLB-254 on 11/10/16.
//  Copyright © 2016 avinash. All rights reserved.
//

#import "AVIsideMenuView.h"
#import "BlurEffectVisualView.h"
#define kMenuWidth [UIScreen mainScreen].bounds.size.width-150
#define kMenuHeight [UIScreen mainScreen].bounds.size.height

@implementation AVIsideMenuView
@synthesize onView,onButtonTap,sideMenuColor,sideMenuTable;


-(AVIsideMenuView *)init{
    self = [super init];
    _blurEffectView = [[BlurEffectVisualView alloc]init];
    self.frame = CGRectMake(-kMenuWidth+150, 0, kMenuWidth, kMenuHeight);
    self.tag = 100;
    _blurEffectView.userInteractionEnabled = YES;
    _blurEffectView.tag = 100;
    UITapGestureRecognizer *tapToHide = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideSideMenu:)];
    tapToHide.cancelsTouchesInView = NO;
    [_blurEffectView addGestureRecognizer:tapToHide];
    return self;
}

-(UIColor *)sideMenuColor {
    return sideMenuColor;
}

-(void)setSideMenuColor:(UIColor *)value {
    sideMenuColor = value;
    self.backgroundColor = value;
}

-(void)setSideMenuTable:(UITableView *)tableView {
    sideMenuTable = tableView;
    [self addSubview:sideMenuTable];
}
-(UITableView *)sideMenuTable {
    return sideMenuTable;
}

-(void)setOnView:(UIView *)view {
    onView = view;
     _blurEffectView = [_blurEffectView initAndDrawBlurEffectRect:onView.frame];
    [onView addSubview:_blurEffectView];
}
-(UIView *)onView {
    return onView;
}

-(UIButton *)onButtonTap {
    return onButtonTap;
}
-(void)setOnButtonTap:(UIButton *)sender {
    onButtonTap = sender;
    _blurEffectView.hidden = YES;
    [sender addTarget:self action:@selector(buttonTapAction) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonTapAction {
    _blurEffectView.hidden = NO;
    onButtonTap.hidden = YES;
    [self slideFromLeft];
}

-(void)setTableView:(UITableView *)tableView {
    [self addSubview:tableView];
}

-(void)slideFromLeft {
    [UIView animateWithDuration:0.35 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.frame = CGRectMake(0, 0, kMenuWidth, kMenuHeight);
    }completion:nil];
}

-(void)slideFromRight {
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.frame = CGRectMake(-kMenuWidth, 0, kMenuWidth, kMenuHeight);
    }completion:^(BOOL done) {
        _blurEffectView.hidden = YES;
        onButtonTap.hidden = NO;
    }];
}

-(void)hideSideMenu:(UITapGestureRecognizer *)sender {
    UIView *tempView = sender.view;
    if (tempView.tag == 100) {
        [self slideFromRight];
    }
}


@end
