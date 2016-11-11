# AVILightLeftSideSlideAnimation
This a very simple and lightweight library for left swipe menu in iOS. 
Requirements
================
++ iOS Version 7.0+,  Xcode 7.0 Above, Objective C

Usage
================
1.Import AVIsideMenu and BlurEffectVisualView Files
  
2.Create a table to show on side menu

    _sideMenuTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-80,[UIScreen mainScreen].bounds.size.height)];
    
    //import AVIsideMenu and BlurEffectVisualView Files
    _sideMenuView = [[AVIsideMenuView alloc]init];
    _sideMenuView.onView = self.view; //view on top of which u will want to show side menu
    _sideMenuView.sideMenuColor = [UIColor whiteColor]; //color of side menu
    _sideMenuView.sideMenuTable = self.sideMenuTableView; //table u want to show
    [self.view addSubview:_sideMenuView]; 
    
    UIButton *menuButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 30, 40, 30)];
    menuButton.backgroundColor = [UIColor blackColor];
    [self.view addSubview:menuButton];
    
    _sideMenuView.onButtonTap = menuButton; //button on whose click it should appear
    
    //to make it disappear u can use
    [_sideMenuView slideFromRight];
