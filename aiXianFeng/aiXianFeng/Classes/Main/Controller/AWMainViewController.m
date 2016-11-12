//
//  AWMainViewController.m
//  aiXianFeng
//
//  Created by 125154454 on 16/11/12.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWMainViewController.h"
#import "AWNavigationController.h"
#import "AWBuycarViewController.h"
#import "AWHomeViewController.h"
#import "AWMineViewController.h"
#import "AWSupermarketViewController.h"

@interface AWMainViewController ()

@end

@interface AWMainViewController ()

@end

@implementation AWMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 当第一次调用AWMainViewController类时候调用这个方法
+ (void)initialize{
    
    //1.设置tabBar属性属性
    NSMutableDictionary * attribute=[NSMutableDictionary dictionary];
    attribute[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attribute[NSForegroundColorAttributeName]=[UIColor grayColor];
    
    NSMutableDictionary * selectedAttribute=[NSMutableDictionary dictionary];
    selectedAttribute[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAttribute[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    
    UITabBarItem * item=[UITabBarItem appearance];//注意点
    [item setTitleTextAttributes:attribute forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttribute forState:UIControlStateSelected];
    
}

#pragma mark - setting User Interface
- (void) setupUI {
    
    //1.添加自控制器
    [self setupChildController:[[AWHomeViewController alloc] init] title:@"精华" image:[UIImage imageNamed:@"v2_home"] selectedImage:[UIImage imageNamed:@"v2_home_selected"]];
    [self setupChildController:[[AWBuycarViewController alloc] init] title:@"新帖" image:[UIImage imageNamed:@"v2_order"] selectedImage:[UIImage imageNamed:@"v2_order_selected"]];
    [self setupChildController:[[AWSupermarketViewController alloc] init] title:@"关注" image:[UIImage imageNamed:@"shopCart"] selectedImage:[UIImage imageNamed:@"shopCart_selected"]];
    [self setupChildController:[[AWMineViewController alloc] init] title:@"我" image:[UIImage imageNamed:@"v2_my"] selectedImage:[UIImage imageNamed:@"v2_my_selected"]];
    
}

#pragma mark - add Childs Controller
- (void) setupChildController: (UIViewController *)vc title:(NSString *) title image:(UIImage *)img selectedImage:(UIImage *) selectedImg{
    
    vc.navigationItem.title=title;
    vc.tabBarItem.title=title;
    vc.tabBarItem.image=img;
    vc.tabBarItem.selectedImage=selectedImg;
    vc.view.backgroundColor=[UIColor cz_randomColor];
    AWNavigationController * nvg=[[AWNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nvg];
}

@end

