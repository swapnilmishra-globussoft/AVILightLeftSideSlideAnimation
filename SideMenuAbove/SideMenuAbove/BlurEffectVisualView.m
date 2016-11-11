//
//  BlurEffectVisualView.m
//  SideMenuAbove
//
//  Created by GLB-254 on 11/10/16.
//  Copyright © 2016 avinash. All rights reserved.
//

#import "BlurEffectVisualView.h"

@implementation BlurEffectVisualView

-(BlurEffectVisualView *)initAndDrawBlurEffectRect:(CGRect)rect {
    self = [super init];
    
    //blur effect type
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]; //can change here the type of blur
    self.frame = rect;
    self.effect = blurEffect;
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    return self;
}

@end
