//
//  WYCMainViewController.m
//  TotalTest
//
//  Created by genilex3 on 16/7/20.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WYCMainViewController.h"



@interface WYCMainViewController ()

@end

@implementation WYCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"主页" forState:UIControlStateNormal];
    btn.titleLabel.textColor = [UIColor whiteColor];
    [btn setBackgroundColor:[UIColor blueColor]];
    
    [self.view addSubview:btn];
    
    
    
    [self setNavBarTitle:@"主页"];
    [self setNavBarLeftBtn:nil];
    
    
    
    
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
