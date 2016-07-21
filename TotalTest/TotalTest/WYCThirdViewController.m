//
//  WYCThirdViewController.m
//  TotalTest
//
//  Created by genilex3 on 16/7/21.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WYCThirdViewController.h"
#import "WYCRightBayViewController.h"

@interface WYCThirdViewController ()

@end

@implementation WYCThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavBarTitle:@"我的"];
    [self setNavBarLeftBtn:nil];
    
    [self setNavBarRightBtn:[STNavBarView createNormalNaviBarBtnByTitle:@"其他" target:self action:@selector(OtherView:)]];
    
}
-(void)OtherView:(id)sender{
    UIStoryboard *rightSb = [UIStoryboard storyboardWithName:@"WYCRightBayViewController" bundle:nil];
    WYCRightBayViewController *rightVC = [rightSb instantiateInitialViewController];
    rightVC.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:rightVC animated:YES];
    
//    [self presentViewController:rightVC animated:YES completion:nil];
    
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
