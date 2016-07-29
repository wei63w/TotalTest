//
//  WYCSecondViewController.m
//  TotalTest
//
//  Created by genilex3 on 16/7/21.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WYCSecondViewController.h"
#import "JECalourseView.h"

@interface WYCSecondViewController ()<JECalourseViewDataSource>

@property(nonatomic,strong)JECalourseView* calourse;

@end

@implementation WYCSecondViewController


-(void)viewWillAppear:(BOOL)animated
{
    /**
     *  即将显示隐藏标题栏
     */
    self.navigationController.navigationBarHidden = YES;
    [self.navigationController.navigationBar setHidden:YES];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    JECalourseView* calourse = [[JECalourseView alloc]initWithFrame:CGRectMake(25, 10, self.view.bounds.size.width-50, 200)];
    
    [self.view addSubview:calourse];
    [calourse setDataSource:self];
    _calourse=calourse;
    
    
    
    
    
//    [self setNavBarTitle:@"中心"];
//    [self setNavBarLeftBtn:nil];
    
    
}

-(NSInteger)JE3DCalourseNumber
{
    return 5;
}
-(void)JE3DCalourseViewWith:(JECalourseCell *)Cell andIndex:(NSInteger)index
{
    
    [Cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",(long)index]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
