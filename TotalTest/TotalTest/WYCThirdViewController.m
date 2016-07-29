//
//  WYCThirdViewController.m
//  TotalTest
//
//  Created by genilex3 on 16/7/21.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WYCThirdViewController.h"
#import "WYCRightBayViewController.h"
#import "WYCBlurtView.h"
#import "LeafProgressView.h"

#import "MCFireworksButton.h"


@interface WYCThirdViewController ()

@property (nonatomic, strong) LeafProgressView *progress;
@property (nonatomic, assign) CGFloat rate;


@property (nonatomic, strong) NSTimer *timer;


@property (nonatomic, strong) MCFireworksButton *btn;

@end

@implementation WYCThirdViewController{
    BOOL _selected;
}


-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = true;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
//    [self setNavBarTitle:@"我的"];
//    [self setNavBarLeftBtn:nil];
//    
//    [self setNavBarRightBtn:[STNavBarView createNormalNaviBarBtnByTitle:@"其他" target:self action:@selector(OtherView:)]];
    
    
    WYCBlurtView *b = [[WYCBlurtView alloc] initWithFrame:self.view.frame WithHeaderImgHeight:200 iconHeight:100];
    [self.view addSubview:b];
    
    
    
    self.progress = [[LeafProgressView alloc]initWithFrame:CGRectMake(36, 200, 248, 35)];
    [self.view addSubview:_progress];
    [_progress startLoading];
    
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(loadProgress) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:self.timer forMode:NSDefaultRunLoopMode];
    
    
    [self addTouchGood];
    
    
}

/**
 *  增加点赞按钮
 */
-(void)addTouchGood{
    
    
    self.btn = [[MCFireworksButton alloc]initWithFrame:CGRectMake(36, 240, 35, 35)];
    
    [self.btn setImage:[UIImage imageNamed:@"Like"] forState:UIControlStateNormal];
    
    
    
    self.btn.particleImage = [UIImage imageNamed:@"Sparkle"];
    self.btn.particleScale = 0.05;
    self.btn.particleScaleRange = 0.02;
    
    [self.btn addTarget:self action:@selector(btnTouch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
}
-(void)btnTouch{
    _selected = !_selected;
    if (_selected) {
        [self.btn popOutsideWithDuration:0.5];
        [self.btn setImage:[UIImage imageNamed:@"Like-Blue"] forState:UIControlStateNormal];
        [self.btn animate];
    }
    else {
        [self.btn popInsideWithDuration:0.4];
        [self.btn setImage:[UIImage imageNamed:@"Like"] forState:UIControlStateNormal];
    }
}




/**
 *  加载loading进度条进度
 */
-(void)loadProgress{
    _rate += 0.01;
    NSLog(@"加载中.....");
    [_progress setProgress:_rate];
    if (_rate >= 0.999) {
        _rate = 0 ;
        NSLog(@"加载完了");
        [self.timer invalidate];
        [_progress stopLoading];
    }
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
